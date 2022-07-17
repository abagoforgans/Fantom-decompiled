contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address payTokenAddress;
uint8 stor3; offset 160
uint128 stor3; offset 160
address buyTokenAddress;

function success() {
    return bool(uint8(stor3.field_160))
}

function owner() {
    return owner
}

function payToken() {
    return payTokenAddress
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

function sub_0c9c738d(?) {
    require ext_code.size(payTokenAddress)
    call payTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy() {
    mem[96] = 2
    mem[128] = payTokenAddress
    mem[160] = buyTokenAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 1
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
           args 1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _26 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= test266151307()
    require mem[192 len 4], 0 + 223 < return_data.size + 192
    _27 = mem[mem[192 len 4], 0 + 192]
    if mem[mem[192 len 4], 0 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + (32 * mem[mem[192 len 4], 0 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], 0 + 192]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 0 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    require _26 + (32 * _27) + 32 <= return_data.size
    idx = 0
    s = _26 + 224
    t = ceil32(return_data.size) + 224
    while idx < _27:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _27:
        revert with 'NH{q', 50
    require mem[ceil32(return_data.size) + 256] > 0
    require not uint8(stor3.field_160)
    mem[mem[64] + 4] = this.address
    require ext_code.size(payTokenAddress)
    staticcall payTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _45 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _46 = mem[_45]
    require mem[_45] == mem[_45]
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _46
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _46, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), owner, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(96, 0, stor3.field_160) = 1
}

function sub_9c036dc1(?) {
    mem[96] = 2
    mem[128] = payTokenAddress
    mem[160] = buyTokenAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 1
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
           args 1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _40 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= test266151307()
    require mem[192 len 4], 0 + 223 < return_data.size + 192
    _41 = mem[mem[192 len 4], 0 + 192]
    if mem[mem[192 len 4], 0 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + (32 * mem[mem[192 len 4], 0 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], 0 + 192]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 0 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    require _40 + (32 * _41) + 32 <= return_data.size
    idx = 0
    s = _40 + 224
    t = ceil32(return_data.size) + 224
    while idx < _41:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _41:
        revert with 'NH{q', 50
    require mem[ceil32(return_data.size) + 256] > 0
    require not uint8(stor3.field_160)
    _71 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_71]:
        revert with 'NH{q', 50
    mem[_71 + 32] = payTokenAddress
    if 1 >= mem[_71]:
        revert with 'NH{q', 50
    mem[_71 + 64] = buyTokenAddress
    mem[_71 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_71 + 100] = 1
    mem[_71 + 132] = 64
    mem[_71 + 164] = mem[_71]
    idx = 0
    s = _71 + 32
    t = _71 + 196
    while idx < mem[_71]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _71 + (32 * mem[_71]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _95 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _96 = mem[_95]
    require mem[_95] <= test266151307()
    require _95 + mem[_95] + 31 < _95 + return_data.size
    _97 = mem[_95 + mem[_95]]
    if mem[_95 + mem[_95]] > test266151307():
        revert with 'NH{q', 65
    if _95 + ceil32(return_data.size) + (32 * mem[_95 + mem[_95]]) + 32 > test266151307() or (32 * mem[_95 + mem[_95]]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = _95 + ceil32(return_data.size) + (32 * mem[_95 + mem[_95]]) + 32
    mem[_95 + ceil32(return_data.size)] = _97
    require _96 + (32 * _97) + 32 <= return_data.size
    idx = 0
    s = _95 + _96 + 32
    t = _95 + ceil32(return_data.size) + 32
    while idx < _97:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _97:
        revert with 'NH{q', 50
    require mem[_95 + ceil32(return_data.size) + 64] > 0
    require not uint8(stor3.field_160)
    mem[mem[64] + 4] = this.address
    require ext_code.size(payTokenAddress)
    staticcall payTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _116 = mem[_115]
    require mem[_115] == mem[_115]
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _116
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    _118 = mem[_71]
    mem[mem[64] + 164] = mem[_71]
    idx = 0
    s = _71 + 32
    t = mem[64] + 196
    while idx < _118:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _116, 1, 160, owner, block.timestamp + 120, mem[mem[64] + 164 len (32 * _118) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(96, 0, stor3.field_160) = 1
}



}
