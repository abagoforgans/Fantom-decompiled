contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address buyTokenAddress;

function owner() {
    return owner
}

function buyToken() {
    return buyTokenAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function withdraw() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy() {
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[160] = buyTokenAddress
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 1
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy2() {
    mem[96] = 2
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[160] = buyTokenAddress
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[192] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[196] = 10^16
    mem[228] = 128
    mem[324] = 2
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = owner
    mem[292] = block.timestamp + 120
    require ext_code.size(routerAddress)
    call routerAddress.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 10^16, 128, owner, block.timestamp + 120, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _16 = mem[192 len 4], 2328306
    require mem[192 len 4], 2328306 <= test266151307()
    require mem[192 len 4], 2328306 + 223 < return_data.size + 192
    _17 = mem[mem[192 len 4], 2328306 + 192]
    if mem[mem[192 len 4], 2328306 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 2328306 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 2328306 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 2328306 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 2328306 + 192]
    require _16 + (32 * _17) + 32 <= return_data.size
    idx = 0
    s = _16 + 224
    t = ceil32(return_data.size) + 224
    while idx < _17:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_9c036dc1(?) {
    mem[96] = 2
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[160] = buyTokenAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10 * 10^6
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10 * 10^6, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _30 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= test266151307()
    require mem[192 len 4], 0 + 223 < return_data.size + 192
    _31 = mem[mem[192 len 4], 0 + 192]
    if mem[mem[192 len 4], 0 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    require _30 + (32 * _31) + 32 <= return_data.size
    idx = 0
    s = _30 + 224
    t = ceil32(return_data.size) + 224
    while idx < _31:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _31:
        revert with 'NH{q', 50
    require mem[ceil32(return_data.size) + 256] > 0
    _51 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_51]:
        revert with 'NH{q', 50
    mem[_51 + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if 1 >= mem[_51]:
        revert with 'NH{q', 50
    mem[_51 + 64] = buyTokenAddress
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[_51 + 96] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[_51 + 100] = 10^16
    mem[_51 + 132] = 128
    mem[_51 + 228] = mem[_51]
    idx = 0
    s = _51 + 32
    t = _51 + 260
    while idx < mem[_51]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_51 + 164] = owner
    mem[_51 + 196] = block.timestamp + 120
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _51 + (32 * mem[_51]) + -mem[64] + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _66 = mem[_65]
    require mem[_65] <= test266151307()
    require _65 + mem[_65] + 31 < _65 + return_data.size
    _67 = mem[_65 + mem[_65]]
    if mem[_65 + mem[_65]] > test266151307():
        revert with 'NH{q', 65
    if _65 + ceil32(return_data.size) + floor32(mem[_65 + mem[_65]]) + 1 > test266151307() or floor32(mem[_65 + mem[_65]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _65 + ceil32(return_data.size) + floor32(mem[_65 + mem[_65]]) + 1
    mem[_65 + ceil32(return_data.size)] = _67
    require _66 + (32 * _67) + 32 <= return_data.size
    idx = 0
    s = _65 + _66 + 32
    t = _65 + ceil32(return_data.size) + 32
    while idx < _67:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
