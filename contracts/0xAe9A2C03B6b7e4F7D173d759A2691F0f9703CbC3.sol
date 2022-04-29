contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of struct bets;
array of address betLUT;
uint256 chefTips;
uint256 _tipsRate;
uint256 _refRate;
uint256 _cancelFee;

function BetLUT(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < betLUT.length
    return betLUT[arg1]
}

function _cancelFee() {
    return _cancelFee
}

function countBets() {
    return betLUT.length
}

function _refRate() {
    return _refRate
}

function chefTips() {
    if stor0 != msg.sender:
        revert with 0, '!chef'
    return chefTips
}

function _tipsRate() {
    return _tipsRate
}

function Bets(address arg1) {
    require calldata.size - 4 >= 32
    return bets[arg1].field_0, bets[arg1].field_256, bets[arg1].field_512, bets[arg1].field_768, bets[arg1].field_1024
}

function _fallback() payable {
    revert
}

function setRefRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!chef'
    if arg1 > 1500:
        revert with 0, 'nax 15%'
    _refRate = arg1
}

function setCancelRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!chef'
    if arg1 > 300:
        revert with 0, 'max 3%'
    _cancelFee = arg1
}

function setTipRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!chef'
    if arg1 > 1500:
        revert with 0, 'hey chef! don't be greedy'
    _tipsRate = arg1
}

function createBet(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if msg.value <= 0:
        revert with 0, 'Cant bet for zero'
    if arg1 >= 2:
        revert with 0, 'BetFor 1 or 0'
    if msg.sender == arg2:
        revert with 0, '!self ref'
    if bets[address(msg.sender)].field_768:
        revert with 0, 'You have a pending bet'
    bets[address(msg.sender)].field_0 = msg.sender
    bets[address(msg.sender)].field_256 = arg2
    bets[address(msg.sender)].field_512 = block.timestamp
    bets[address(msg.sender)].field_768 = msg.value
    bets[address(msg.sender)].field_1024 = arg1
    betLUT.length++
    betLUT[betLUT.length] = msg.sender
    emit NewBet(msg.sender, arg1, msg.value, block.timestamp);
}

function cancelBet() payable {
    if bets[address(msg.sender)].field_768 <= 0:
        revert with 0, 'You have no pending bet'
    call msg.sender with:
       value bets[address(msg.sender)].field_768 - (bets[address(msg.sender)].field_768 * _cancelFee / 10000) wei
         gas gas_remaining wei
    if bets[address(msg.sender)].field_768 * _cancelFee / 10000 > 0:
        call stor0 with:
           value bets[address(msg.sender)].field_768 * _cancelFee / 10000 wei
             gas gas_remaining wei
        chefTips += bets[address(msg.sender)].field_768 * _cancelFee / 10000
        if not ext_call.success:
            revert with 0, 'Cancel bet failed'
    if not ext_call.success:
        revert with 0, 'Cancel bet failed'
    idx = 0
    while idx < betLUT.length:
        mem[0] = 2
        if betLUT[idx] != msg.sender:
            idx = idx + 1
            continue 
        bets[address(msg.sender)].field_0 = 0
        bets[address(msg.sender)].field_256 = 0
        bets[address(msg.sender)].field_512 = 0
        bets[address(msg.sender)].field_768 = 0
        bets[address(msg.sender)].field_1024 = 0
        require betLUT.length - 1 < betLUT.length
        require idx < betLUT.length
        betLUT[idx] = betLUT[betLUT.length]
        require betLUT.length
        betLUT[betLUT.length] = 0
        betLUT.length--
        emit CancelBet(msg.sender, bets[address(msg.sender)].field_1024, bets[address(msg.sender)].field_768);
    emit CancelBet(msg.sender, bets[address(msg.sender)].field_1024, bets[address(msg.sender)].field_768);
}

function takeBet(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, 'Humans only'
    if bets[address(arg1)].field_768 <= 0:
        revert with 0, 'Bet is unavailable'
    if msg.value <= 0:
        revert with 0, 'Unfair bet'
    if bets[address(arg1)].field_768 != msg.value:
        revert with 0, 'Unfair bet'
    if bool(sha3(block.difficulty, block.timestamp, block.gas_limit, block.coinbase, block.number)) != bets[address(arg1)].field_1024:
        call msg.sender with:
           value bets[address(arg1)].field_768 + msg.value - (bets[address(arg1)].field_768 * _tipsRate / 10000) wei
             gas gas_remaining wei
    else:
        call arg1 with:
           value bets[address(arg1)].field_768 + msg.value - (bets[address(arg1)].field_768 * _tipsRate / 10000) wei
             gas gas_remaining wei
    if bets[address(arg1)].field_768 * _tipsRate / 10000 > 0:
        if not bets[address(arg1)].field_256:
            call stor0 with:
               value bets[address(arg1)].field_768 * _tipsRate / 10000 wei
                 gas gas_remaining wei
            chefTips += bets[address(arg1)].field_768 * _tipsRate / 10000
        else:
            call bets[address(arg1)].field_256 with:
               value bets[address(arg1)].field_768 + msg.value / 2 * _refRate / 10000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                call stor0 with:
                   value bets[address(arg1)].field_768 * _tipsRate / 10000 wei
                     gas gas_remaining wei
                chefTips += bets[address(arg1)].field_768 * _tipsRate / 10000
            else:
                call stor0 with:
                   value (bets[address(arg1)].field_768 * _tipsRate / 10000) - (bets[address(arg1)].field_768 + msg.value / 2 * _refRate / 10000) wei
                     gas gas_remaining wei
                chefTips = chefTips + (bets[address(arg1)].field_768 * _tipsRate / 10000) - (bets[address(arg1)].field_768 + msg.value / 2 * _refRate / 10000)
        if not ext_call.success:
            revert with 0, 'Reward failed'
    if not ext_call.success:
        revert with 0, 'Reward failed'
    idx = 0
    while idx < betLUT.length:
        mem[0] = 2
        if betLUT[idx] != arg1:
            idx = idx + 1
            continue 
        bets[address(arg1)].field_0 = 0
        bets[address(arg1)].field_256 = 0
        bets[address(arg1)].field_512 = 0
        bets[address(arg1)].field_768 = 0
        bets[address(arg1)].field_1024 = 0
        require betLUT.length - 1 < betLUT.length
        require idx < betLUT.length
        betLUT[idx] = betLUT[betLUT.length]
        require betLUT.length
        betLUT[betLUT.length] = 0
        betLUT.length--
        emit WinBet(bets[address(arg1)].field_1024, sha3(block.difficulty, block.timestamp, block.gas_limit, block.coinbase, block.number) << 255, msg.value, block.timestamp, arg1, msg.sender, bets[address(arg1)].field_256);
    emit WinBet(bets[address(arg1)].field_1024, sha3(block.difficulty, block.timestamp, block.gas_limit, block.coinbase, block.number) << 255, msg.value, block.timestamp, arg1, msg.sender, bets[address(arg1)].field_256);
}



}
