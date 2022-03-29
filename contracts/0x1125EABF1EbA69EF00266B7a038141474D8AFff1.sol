contract main {




// =====================  Runtime code  =====================


const proxiableUUID = 0xc5f16f0fcc639fa48a6947836d9850f504798523bf8c9a3a87d5876cf622bcf7

const balance = eth.balance(this.address)


address owner;
uint256 stor0;
uint8 sub_e2784c3a; offset 160
address oracleAddress;
mapping of uint256 balance;
array of struct sub_48a26571;
array of struct stor4;
uint256 lastGameId;
uint256 currentGameId;
uint256 storC5F1;

function sub_26f0da5a(?) {
    require calldata.size - 4 >= 32
    return bool(sub_48a26571[arg1].field_2048)
}

function lastGameId() {
    if currentGameId <= 0:
        revert with 0, 'No game initialized yet'
    return lastGameId
}

function sub_48a26571(?) {
    require calldata.size - 4 >= 32
    return sub_48a26571[arg1].field_1024
}

function currentGameId() {
    return currentGameId
}

function oracle() {
    return oracleAddress
}

function sub_7e9134bf(?) {
    require calldata.size - 4 >= 32
    return sub_48a26571[arg1].field_512
}

function sub_83dda02a(?) {
    require calldata.size - 4 >= 32
    if block.timestamp < sub_48a26571[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You should wait until the end of the game'
    return sub_48a26571[arg1].field_1792
}

function owner() {
    return address(owner)
}

function sub_985d2520(?) {
    require calldata.size - 4 >= 32
    return sub_48a26571[arg1].field_1280
}

function sub_b131d053(?) {
    require calldata.size - 4 >= 32
    return sub_48a26571[arg1].field_0
}

function sub_b9c4dc56(?) {
    require calldata.size - 4 >= 32
    return bool(sub_48a26571[arg1].field_2056)
}

function sub_e2784c3a(?) {
    return bool(sub_e2784c3a)
}

function getGameEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sub_48a26571[arg1].field_256
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balance[address(arg1)]
}

function sub_fe939e6e(?) {
    require calldata.size - 4 >= 32
    return sub_48a26571[arg1].field_1536
}

function _fallback() payable {
    revert
}

function canFinalize(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (block.timestamp > sub_48a26571[arg1].field_512)
}

function getGameStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (block.timestamp < sub_48a26571[arg1].field_256)
}

function init() {
    if sub_e2784c3a:
        revert with 0, 'already Initialized'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    sub_e2784c3a = 1
    emit OwnershipTransferred(0, msg.sender);
}

function totalBets(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_48a26571[arg1].field_1280 > !sub_48a26571[arg1].field_1024:
        revert with 0, 17
    return (sub_48a26571[arg1].field_1280 + sub_48a26571[arg1].field_1024)
}

function deposit() payable {
    if msg.value < 10^18:
        revert with 0, 'Minimum amount should be 1'
    if balance[msg.sender] > !msg.value:
        revert with 0, 17
    balance[msg.sender] += msg.value
    emit Deposit(msg.value, msg.sender);
}

function playerBet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_48a26571[arg1][3][msg.sender][1].field_0 > !sub_48a26571[arg1][3][msg.sender][0].field_0:
        revert with 0, 17
    return (sub_48a26571[arg1][3][msg.sender][1].field_0 + sub_48a26571[arg1][3][msg.sender][0].field_0)
}

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    oracleAddress = arg1
    emit OracleUpdated(arg1);
}

function getPrice() {
    if not oracleAddress:
        revert with 0, 'Oracle must be settled'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x98d5fdca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function withdraw() payable {
    if 10^18 > balance[address(msg.sender)]:
        revert with 0, 'Nothing to withdraw'
    balance[address(msg.sender)] = 0
    call msg.sender with:
       value balance[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(balance[address(msg.sender)], msg.sender);
}

function updateProxy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    require ext_code.size(arg1)
    staticcall arg1.0x52d1902d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 0xc5f16f0fcc639fa48a6947836d9850f504798523bf8c9a3a87d5876cf622bcf7:
        revert with 0, 'Not compatible'
    storC5F1 = arg1
}

function getWinners(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 4
    mem[64] = (32 * stor4[arg1].field_0) + 128
    mem[96] = stor4[arg1].field_0
    s = 128
    idx = 0
    while idx < stor4[arg1].field_0:
        mem[0] = sha3(arg1, 4)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor4[arg1][idx].field_0
        mem[_12 + 32] = stor4[arg1][idx].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function finalize(uint256 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp < sub_48a26571[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You should wait until the end of the game'
    if sub_48a26571[arg1].field_2048:
        revert with 0, 'Already finalized'
    if block.timestamp <= sub_48a26571[arg1].field_512:
        revert with 0, 'Too early to finalize the game'
    sub_48a26571[arg1].field_2048 = 1
    if not oracleAddress:
        revert with 0, 'Oracle must be settled'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x98d5fdca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_48a26571[arg1].field_1792 = ext_call.return_data[0]
    if not sub_48a26571[arg1].field_1024:
        sub_48a26571[arg1].field_2056 = 1
    else:
        if not sub_48a26571[arg1].field_1280:
            sub_48a26571[arg1].field_2056 = 1
    emit Finalized(arg1, sub_48a26571[arg1].field_1792);
}

function startGame(uint256 arg1) {
    require calldata.size - 4 >= 32
    if currentGameId > -2:
        revert with 0, 17
    currentGameId++
    if currentGameId < 1:
        revert with 0, 17
    lastGameId = currentGameId - 1
    if not oracleAddress:
        revert with 0, 'Oracle must be settled'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x98d5fdca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_48a26571[stor6].field_1536 = ext_call.return_data[0]
    sub_48a26571[stor6].field_0 = block.timestamp
    if arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if block.timestamp > !(60 * arg1):
        revert with 0, 17
    sub_48a26571[stor6].field_256 = block.timestamp + (60 * arg1)
    if 60 > !sub_48a26571[stor6].field_256:
        revert with 0, 17
    sub_48a26571[stor6].field_512 = sub_48a26571[stor6].field_256 + 60
    if arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    emit 0xa20ded43: currentGameId, 60 * arg1, sub_48a26571[stor6].field_1536, sub_48a26571[stor6].field_0
}

function calculateRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_48a26571[arg1].field_2056:
        revert with 0, 'Game has been canceled'
    if sub_48a26571[arg1].field_1792 <= sub_48a26571[arg1].field_1536:
        if sub_48a26571[arg1][3][address(msg.sender)][0].field_0 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not sub_48a26571[arg1].field_1280:
            revert with 0, 18
        if sub_48a26571[arg1].field_1024 and 10^18 * sub_48a26571[arg1][3][address(msg.sender)][0].field_0 / sub_48a26571[arg1].field_1280 > -1 / sub_48a26571[arg1].field_1024:
            revert with 0, 17
        return (sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18)
    if sub_48a26571[arg1][3][address(msg.sender)][1].field_0 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not sub_48a26571[arg1].field_1024:
        revert with 0, 18
    if sub_48a26571[arg1].field_1280 and 10^18 * sub_48a26571[arg1][3][address(msg.sender)][1].field_0 / sub_48a26571[arg1].field_1024 > -1 / sub_48a26571[arg1].field_1280:
        revert with 0, 17
    return (sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18)
}

function sub_3c131fa4(?) {
    require calldata.size - 4 >= 32
    mem[64] = (32 * sub_48a26571[arg1].field_2304) + 128
    mem[96] = sub_48a26571[arg1].field_2304
    if not sub_48a26571[arg1].field_2304:
        mem[(32 * sub_48a26571[arg1].field_2304) + 128] = 32
        mem[(32 * sub_48a26571[arg1].field_2304) + 160] = sub_48a26571[arg1].field_2304
        idx = 0
        s = (32 * sub_48a26571[arg1].field_2304) + 192
        t = 128
        while idx < sub_48a26571[arg1].field_2304:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_48a26571[arg1].field_2304) + 128
           len (96 * sub_48a26571[arg1].field_2304) + 64
    mem[128] = sub_48a26571[arg1][9].field_0
    idx = 128
    s = 0
    while (32 * sub_48a26571[arg1].field_2304) + 96 > idx:
        mem[idx + 32] = sub_48a26571[arg1][s + 9].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_48a26571[arg1].field_2304) + 128] = 32
    mem[(32 * sub_48a26571[arg1].field_2304) + 160] = sub_48a26571[arg1].field_2304
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_48a26571[arg1].field_2304:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_48a26571[arg1].field_2304) + -mem[64] + 192
}

function sub_78522894(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    if msg.value <= 0:
        if arg2 <= 0:
            revert with 0, 'Should bet at least 1 FTM'
    if msg.value:
        if msg.value < 10^18:
            revert with 0, 'Minimum amount should be 1'
        if balance[msg.sender] > !msg.value:
            revert with 0, 17
        balance[msg.sender] += msg.value
        emit Deposit(msg.value, msg.sender);
    if arg2:
        if arg2 > balance[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Amount should not exceed balance and should bet at least 1 FTM'
        if block.timestamp >= sub_48a26571[arg1].field_256:
            revert with 0, 'This game is already finished'
        if not sub_48a26571[arg1][3][msg.sender][bool(arg3)].field_0:
            sub_48a26571[arg1].field_2304++
            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_48a26571', 3))) + sub_48a26571[arg1].field_2304].field_0 = msg.sender or Mask(96, 160, stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_48a26571', 3))) + sub_48a26571[arg1].field_2304].field_0)
        if balance[msg.sender] < arg2:
            revert with 0, 17
        balance[msg.sender] -= arg2
        if sub_48a26571[arg1][3][msg.sender][bool(arg3)].field_0 > !arg2:
            revert with 0, 17
        sub_48a26571[arg1][3][msg.sender][bool(arg3)].field_0 += arg2
        if not arg3:
            if sub_48a26571[arg1].field_1280 > !arg2:
                revert with 0, 17
            sub_48a26571[arg1].field_1280 += arg2
        else:
            if sub_48a26571[arg1].field_1024 > !arg2:
                revert with 0, 17
            sub_48a26571[arg1].field_1024 += arg2
        emit 0x8f2589fb: arg1, arg2, bool(arg3), msg.sender
    else:
        if msg.value > balance[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Amount should not exceed balance and should bet at least 1 FTM'
        if block.timestamp >= sub_48a26571[arg1].field_256:
            revert with 0, 'This game is already finished'
        if not sub_48a26571[arg1][3][msg.sender][bool(arg3)].field_0:
            sub_48a26571[arg1].field_2304++
            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_48a26571', 3))) + sub_48a26571[arg1].field_2304].field_0 = msg.sender or Mask(96, 160, stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_48a26571', 3))) + sub_48a26571[arg1].field_2304].field_0)
        if balance[msg.sender] < msg.value:
            revert with 0, 17
        balance[msg.sender] -= msg.value
        if sub_48a26571[arg1][3][msg.sender][bool(arg3)].field_0 > !msg.value:
            revert with 0, 17
        sub_48a26571[arg1][3][msg.sender][bool(arg3)].field_0 += msg.value
        if not arg3:
            if sub_48a26571[arg1].field_1280 > !msg.value:
                revert with 0, 17
            sub_48a26571[arg1].field_1280 += msg.value
        else:
            if sub_48a26571[arg1].field_1024 > !msg.value:
                revert with 0, 17
            sub_48a26571[arg1].field_1024 += msg.value
        emit 0x8f2589fb: arg1, msg.value, bool(arg3), msg.sender
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp < sub_48a26571[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You should wait until the end of the game'
    if bool(sub_48a26571[arg1].field_2048) != 1:
        revert with 0, 'Game should finalized'
    if sub_48a26571[arg1].field_2056:
        if sub_48a26571[arg1][3][address(msg.sender)][0].field_0 > !sub_48a26571[arg1][3][address(msg.sender)][1].field_0:
            revert with 0, 17
        if sub_48a26571[arg1][3][address(msg.sender)][0].field_0 + sub_48a26571[arg1][3][address(msg.sender)][1].field_0:
            sub_48a26571[arg1][3][address(msg.sender)][0].field_0 = 0
            sub_48a26571[arg1][3][address(msg.sender)][1].field_0 = 0
            if balance[address(msg.sender)] > !(sub_48a26571[arg1][3][address(msg.sender)][0].field_0 + sub_48a26571[arg1][3][address(msg.sender)][1].field_0):
                revert with 0, 17
            balance[address(msg.sender)] = balance[address(msg.sender)] + sub_48a26571[arg1][3][address(msg.sender)][0].field_0 + sub_48a26571[arg1][3][address(msg.sender)][1].field_0
            emit Claim(arg1, sub_48a26571[arg1][3][address(msg.sender)][0].field_0 + sub_48a26571[arg1][3][address(msg.sender)][1].field_0, msg.sender);
    else:
        if sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0:
            if sub_48a26571[arg1].field_1792 <= sub_48a26571[arg1].field_1536:
                if sub_48a26571[arg1][3][address(msg.sender)][0].field_0 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not sub_48a26571[arg1].field_1280:
                    revert with 0, 18
                if sub_48a26571[arg1].field_1024 and 10^18 * sub_48a26571[arg1][3][address(msg.sender)][0].field_0 / sub_48a26571[arg1].field_1280 > -1 / sub_48a26571[arg1].field_1024:
                    revert with 0, 17
                if sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 > !(sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18):
                    revert with 0, 17
                if balance[address(msg.sender)] > !(sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18)):
                    revert with 0, 17
                balance[address(msg.sender)] = balance[address(msg.sender)] + sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18)
                sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 = 0
                if sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 > !(sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18):
                    revert with 0, 17
                stor4[arg1].field_0++
                stor4[arg1][stor4[arg1].field_0].field_0 = msg.sender
                stor4[arg1][stor4[arg1].field_0].field_256 = sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18)
                emit Claim(arg1, sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18), msg.sender);
            else:
                if sub_48a26571[arg1][3][address(msg.sender)][1].field_0 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not sub_48a26571[arg1].field_1024:
                    revert with 0, 18
                if sub_48a26571[arg1].field_1280 and 10^18 * sub_48a26571[arg1][3][address(msg.sender)][1].field_0 / sub_48a26571[arg1].field_1024 > -1 / sub_48a26571[arg1].field_1280:
                    revert with 0, 17
                if sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 > !(sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18):
                    revert with 0, 17
                if balance[address(msg.sender)] > !(sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18)):
                    revert with 0, 17
                balance[address(msg.sender)] = balance[address(msg.sender)] + sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18)
                sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 = 0
                if sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 > !(sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18):
                    revert with 0, 17
                stor4[arg1].field_0++
                stor4[arg1][stor4[arg1].field_0].field_0 = msg.sender
                stor4[arg1][stor4[arg1].field_0].field_256 = sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18)
                emit Claim(arg1, sub_48a26571[arg1][3][address(msg.sender)][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][address(msg.sender)][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18), msg.sender);
}

function claimAll(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if block.timestamp < sub_48a26571[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You should wait until the end of the game'
    if bool(sub_48a26571[arg1].field_2048) != 1:
        revert with 0, 'Game should finalized'
    if not sub_48a26571[arg1].field_2056:
        idx = 0
        while idx < sub_48a26571[arg1].field_2304:
            if idx >= sub_48a26571[arg1].field_2304:
                revert with 0, 50
            mem[0] = sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536
            mem[32] = sha3(sub_48a26571[arg1][idx + 9].field_0, sha3(arg1, 3) + 3)
            if sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0:
                if sub_48a26571[arg1].field_1792 <= sub_48a26571[arg1].field_1536:
                    if sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not sub_48a26571[arg1].field_1280:
                        revert with 0, 18
                    if sub_48a26571[arg1].field_1024 and 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 / sub_48a26571[arg1].field_1280 > -1 / sub_48a26571[arg1].field_1024:
                        revert with 0, 17
                    if sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 > !(sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18):
                        revert with 0, 17
                    if balance[stor3[arg1][idx + 9].field_0] > !(sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18)):
                        revert with 0, 17
                    balance[stor3[arg1][idx + 9].field_0] = balance[stor3[arg1][idx + 9].field_0] + sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18)
                    sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 = 0
                    mem[0] = arg1
                    mem[32] = 4
                    _102 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_102] = sub_48a26571[arg1][idx + 9].field_0
                    if sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 > !(sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18):
                        revert with 0, 17
                    mem[_102 + 32] = sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18)
                    stor4[arg1].field_0++
                    mem[0] = sha3(arg1, 4)
                    stor4[arg1][stor4[arg1].field_0].field_0 = sub_48a26571[arg1][idx + 9].field_0
                    stor4[arg1][stor4[arg1].field_0].field_256 = sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18)
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18)
                    emit Claim(arg1, sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1024 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 / sub_48a26571[arg1].field_1280 / 10^18), sub_48a26571[arg1][idx + 9].field_0);
                else:
                    if sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not sub_48a26571[arg1].field_1024:
                        revert with 0, 18
                    if sub_48a26571[arg1].field_1280 and 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0 / sub_48a26571[arg1].field_1024 > -1 / sub_48a26571[arg1].field_1280:
                        revert with 0, 17
                    if sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 > !(sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18):
                        revert with 0, 17
                    if balance[stor3[arg1][idx + 9].field_0] > !(sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18)):
                        revert with 0, 17
                    balance[stor3[arg1][idx + 9].field_0] = balance[stor3[arg1][idx + 9].field_0] + sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18)
                    sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 = 0
                    mem[0] = arg1
                    mem[32] = 4
                    _107 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_107] = sub_48a26571[arg1][idx + 9].field_0
                    if sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 > !(sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18):
                        revert with 0, 17
                    mem[_107 + 32] = sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18)
                    stor4[arg1].field_0++
                    mem[0] = sha3(arg1, 4)
                    stor4[arg1][stor4[arg1].field_0].field_0 = sub_48a26571[arg1][idx + 9].field_0
                    stor4[arg1][stor4[arg1].field_0].field_256 = sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18)
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18)
                    emit Claim(arg1, sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][sub_48a26571[arg1].field_1792 > sub_48a26571[arg1].field_1536].field_0 + (sub_48a26571[arg1].field_1280 * 10^18 * sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0 / sub_48a26571[arg1].field_1024 / 10^18), sub_48a26571[arg1][idx + 9].field_0);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < sub_48a26571[arg1].field_2304:
            if idx >= sub_48a26571[arg1].field_2304:
                revert with 0, 50
            mem[32] = sha3(sub_48a26571[arg1][idx + 9].field_0, sha3(arg1, 3) + 3)
            mem[0] = 1
            if sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 > !sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0:
                revert with 0, 17
            if sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 + sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0:
                sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 = 0
                sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0 = 0
                mem[0] = sub_48a26571[arg1][idx + 9].field_0
                mem[32] = 2
                if balance[stor3[arg1][idx + 9].field_0] > !(sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 + sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0):
                    revert with 0, 17
                balance[stor3[arg1][idx + 9].field_0] = balance[stor3[arg1][idx + 9].field_0] + sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 + sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0
                mem[96] = arg1
                mem[128] = sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 + sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0
                emit Claim(arg1, sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][0].field_0 + sub_48a26571[arg1][3][sub_48a26571[arg1][idx + 9].field_0][1].field_0, sub_48a26571[arg1][idx + 9].field_0);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
