contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint8 stor1;
address tokenAddress;
address adminAddress;
uint256 end;
uint256 price;
uint256 availableTokens;
uint256 minPurchase;
uint256 maxPurchase;
uint8 released;

function minPurchase() {
    return minPurchase
}

function availableTokens() {
    return availableTokens
}

function investors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function released() {
    return bool(released)
}

function maxPurchase() {
    return maxPurchase
}

function price() {
    return price
}

function end() {
    return end
}

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sales(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    stor1[address(arg1)] = 1
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if end <= 0:
        revert with 0, 'ICO must have ended'
    if block.timestamp < end:
        if availableTokens:
            revert with 0, 'ICO must have ended'
    if bool(released) != 1:
        revert with 0, 'Tokens must have been released'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy() payable {
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'only investors'
    if end <= 0:
        revert with 0, 'ICO must be active'
    if block.timestamp >= end:
        revert with 0, 'ICO must be active'
    if availableTokens <= 0:
        revert with 0, 'ICO must be active'
    if not price:
        revert with 'NH{q', 18
    if msg.value % price:
        revert with 0, 'have to send a multiple of price'
    if msg.value < minPurchase:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'have to send between minPurchase and maxPurchase'
    if msg.value > maxPurchase:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'have to send between minPurchase and maxPurchase'
    if price and msg.value > -1 / price:
        revert with 'NH{q', 17
    if price * msg.value > availableTokens:
        revert with 0, 'Not enough tokens left for sale'
    stor0.length++
    stor0[stor0.length].field_0 = msg.sender
    stor0[stor0.length].field_256 = price * msg.value
}

function start(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if end:
        revert with 0, 'ICO should not be active'
    if arg1 <= 0:
        revert with 0, 'duration should be > 0'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 <= 0:
        revert with 0, 'totalSupply should be > 0 and <= totalSupply'
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'totalSupply should be > 0 and <= totalSupply'
    if arg4 <= 0:
        revert with 0, '_minPurchase should > 0'
    if arg5 <= 0:
        revert with 0, '_maxPurchase should be > 0 and <= _availableTokens'
    if arg5 > arg3:
        revert with 0, '_maxPurchase should be > 0 and <= _availableTokens'
    if arg1 > -block.timestamp - 1:
        revert with 'NH{q', 17
    end = arg1 + block.timestamp
    price = arg2
    availableTokens = arg3
    minPurchase = arg4
    maxPurchase = arg5
}

function release() payable {
    mem[64] = 96
    require not msg.value
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if end <= 0:
        revert with 0, 'ICO must have ended'
    if block.timestamp >= end:
        if released:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens must NOT have been released'
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            mem[mem[64] + 4] = stor0[idx].field_0
            mem[mem[64] + 36] = stor0[idx].field_256
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor0[idx].field_0, stor0[idx].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == bool(mem[_27])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if availableTokens:
            revert with 0, 'ICO must have ended'
        if released:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens must NOT have been released'
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            mem[mem[64] + 4] = stor0[idx].field_0
            mem[mem[64] + 36] = stor0[idx].field_256
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor0[idx].field_0, stor0[idx].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_28] == bool(mem[_28])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
