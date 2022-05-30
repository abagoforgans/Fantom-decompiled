contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;
uint256 cost;
uint8 sub_794f4fdc;
array of address winners;
array of uint256 sub_4122e297;
array of address sub_8f671369;
address lastSenderAddress;
uint256 stor6;
uint256 stor7; offset 1
uint256 sub_039c0837;
uint256 stor8;
uint256 stor9;
address devWalletAddress;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_039c0837(?) {
    return sub_039c0837
}

function cost() {
    return cost
}

function lastSender() {
    return address(lastSenderAddress)
}

function sub_4122e297(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_4122e297[arg1]
    return sub_4122e297[arg1][arg2]
}

function sub_794f4fdc(?) {
    return bool(sub_794f4fdc)
}

function owner() {
    return address(stor0.length)
}

function devWallet() {
    return devWalletAddress
}

function sub_8f671369(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_8f671369.length
    return address(sub_8f671369[arg1])
}

function winners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < winners.length
    return winners[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if address(stor0.length) != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    address(stor0.length) = 0
    emit OwnershipTransferred(address(stor0.length), 0);
}

function startGame() {
    if address(stor0.length) != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if sub_794f4fdc:
        revert with 0, 'Already in game'
    stor9 = block.timestamp
    address(lastSenderAddress) = 0
    stor8++
    sub_794f4fdc = 1
}

function withdraw() {
    if address(stor0.length) != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    call address(stor0.length) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor0.length) != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    address(stor0.length) = arg1
    emit OwnershipTransferred(address(stor0.length), arg1);
}

function endGame() {
    if address(stor0.length) != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    call address(lastSenderAddress) with:
       value stor7 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = 0
    while idx < sub_8f671369.length:
        mem[32] = 4
        stor0.length++
        mem[0] = 0
        uint256(stor0[stor0.length]) = sub_4122e297[address(stor5[idx])] - 1
        idx = idx + 1
        s = sub_4122e297[address(stor5[idx])] + s - 1
        continue 
    require -sub_8f671369.length
    idx = 0
    while idx < sub_8f671369.length:
        require idx < stor0.length
        mem[0] = 0
        call address(sub_8f671369[idx]) with:
           value stor7 / -sub_8f671369.length * uint256(stor0[idx]) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    sub_794f4fdc = 0
    sub_8f671369.length = 0
    idx = 0
    while sub_8f671369.length > idx:
        uint256(sub_8f671369[idx]) = 0
        idx = idx + 1
        continue 
}

function buy() payable {
    if not sub_794f4fdc:
        revert with 0, 'Not started yet'
    if msg.value < cost:
        revert with 0, 'Insufficient payment.'
    if block.timestamp - stor9 >= 24 * 3600:
        revert with 0, 'Game over in this round.'
    call devWalletAddress with:
       value 3 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_039c0837 = msg.value - (3 * msg.value / 100) + sub_039c0837
    if sub_4122e297[msg.sender]:
        require sub_4122e297[msg.sender]
        if sub_4122e297[msg.sender] != stor8:
            sub_4122e297[msg.sender] = 0
            idx = 0
            while sub_4122e297[msg.sender] > idx:
                sub_4122e297[msg.sender][idx] = 0
                idx = idx + 1
                continue 
            sub_4122e297[msg.sender]++
            sub_4122e297[msg.sender][sub_4122e297[msg.sender]] = stor8
            sub_8f671369.length++
            stor36B6[stor5.length] = msg.sender or Mask(96, 160, stor36B6[stor5.length])
    sub_4122e297[msg.sender]++
    if not sub_4122e297[msg.sender]:
        sub_4122e297[msg.sender][sub_4122e297[msg.sender]] = stor8
        sub_8f671369.length++
        stor36B6[stor5.length] = msg.sender or Mask(96, 160, stor36B6[stor5.length])
    sub_4122e297[msg.sender][sub_4122e297[msg.sender]] = msg.value
    uint256(stor6) = msg.sender or Mask(96, 160, uint256(stor6))
    cost += 10^17
    stor9 = block.timestamp
    emit Buy(msg.sender, cost);
}



}
