contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address baseTokenAddress;
address tokenAddress;

function owner() {
    return owner
}

function baseToken() {
    return baseTokenAddress
}

function router() {
    return routerAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    tokenAddress = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    routerAddress = arg1
}

function setBaseToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    baseTokenAddress = arg1
}

function sub_4f982637(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function approve(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawToken() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a1654b95(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    mem[256] = baseTokenAddress
    mem[288] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[292] = 0
    mem[356] = this.address
    mem[388] = block.timestamp
    mem[324] = 128
    mem[420] = 2
    mem[452 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[452 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _34 = mem[288 len 4], 0
    require mem[288 len 4], 0 <= 4294967296
    require mem[288 len 4], 0 + 32 <= return_data.size
    require mem[mem[288 len 4], 0 + 288] <= 4294967296 and mem[288 len 4], 0 + (32 * mem[mem[288 len 4], 0 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
    _37 = mem[_34 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_34 + 288])] = mem[_34 + 320 len floor32(mem[_34 + 288])]
    mem[(32 * _37) + ceil32(return_data.size) + 320] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _37) + ceil32(return_data.size) + 324] = arg1
    mem[(32 * _37) + ceil32(return_data.size) + 356] = 0
    mem[(32 * _37) + ceil32(return_data.size) + 420] = msg.sender
    mem[(32 * _37) + ceil32(return_data.size) + 452] = block.timestamp
    mem[(32 * _37) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _37) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _37) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _37) + ceil32(return_data.size) + 516 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _37) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _37) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    require mem[(32 * _37) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * _37) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _37) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * _37) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _37) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _37) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * _37) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
}



}
