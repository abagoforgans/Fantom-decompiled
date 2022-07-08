contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
function _fallback() payable {
    revert
}

function sub_0fd197f7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).vaultCollateral(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).vaultDebt(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_aea6bce9(?) payable {
    require calldata.size - 4 >= 128
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[100] = arg2
    require ext_code.size(address(arg1) >> 96)
    staticcall address(arg1) >> 96.checkCost(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'done'
    require ext_code.size(address(arg4))
    staticcall address(arg4).factory() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg3)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0x4068da6c83afcfa0e13ba15a6696662335d5b75, address(arg3)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 96] = 1
    mem[(4 * ceil32(return_data.size)) + 160] = 0
    mem[(4 * ceil32(return_data.size)) + 192] = 0
    mem[(4 * ceil32(return_data.size)) + 224] = 0
    mem[(4 * ceil32(return_data.size)) + 256] = 0
    mem[(4 * ceil32(return_data.size)) + 288] = 96
    mem[(4 * ceil32(return_data.size)) + 320] = 0x2ed55f12e700cde978e1f0491d681919814ca44b000200000000000000000021
    mem[(4 * ceil32(return_data.size)) + 352] = 0
    mem[(4 * ceil32(return_data.size)) + 384] = 1
    mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 480] = 0
    mem[(4 * ceil32(return_data.size)) + 448] = (4 * ceil32(return_data.size)) + 480
    mem[(4 * ceil32(return_data.size)) + 128] = (4 * ceil32(return_data.size)) + 320
    mem[(4 * ceil32(return_data.size)) + 512] = 2
    mem[(4 * ceil32(return_data.size)) + 544] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[(4 * ceil32(return_data.size)) + 576] = 0xfb98b335551a418cd0737375a2ea0ded62ea213b
    mem[64] = (4 * ceil32(return_data.size)) + 736
    mem[(4 * ceil32(return_data.size)) + 608] = this.address
    mem[(4 * ceil32(return_data.size)) + 640] = 0
    mem[(4 * ceil32(return_data.size)) + 672] = this.address
    mem[(4 * ceil32(return_data.size)) + 704] = 0
    mem[(4 * ceil32(return_data.size)) + 736] = 0xf84d066e00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 740] = 1
    mem[(4 * ceil32(return_data.size)) + 772] = 224
    mem[(4 * ceil32(return_data.size)) + 964] = 1
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 996
    u = (4 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 96]) + 996
    while idx < 1:
        mem[t] = u + -(4 * ceil32(return_data.size)) - 996
        _60 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_60 + 32]
        mem[u + 64] = mem[_60 + 64]
        mem[u + 96] = mem[_60 + 96]
        _65 = mem[_60 + 128]
        mem[u + 128] = 160
        _67 = mem[_65]
        mem[u + 160] = mem[_65]
        v = 0
        while v < _67:
            mem[v + u + 192] = mem[v + _65 + 32]
            v = v + 32
            continue 
        if ceil32(_67) > _67:
            mem[_67 + u + 192] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_67) + u + 192
        continue 
    mem[(4 * ceil32(return_data.size)) + 804] = u + -(4 * ceil32(return_data.size)) - 740
    _66 = mem[(4 * ceil32(return_data.size)) + 512]
    mem[u] = mem[(4 * ceil32(return_data.size)) + 512]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 544
    t = u + 32
    while idx < _66:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 836] = mem[(4 * ceil32(return_data.size)) + 620 len 20]
    mem[(4 * ceil32(return_data.size)) + 868] = bool(mem[(4 * ceil32(return_data.size)) + 640])
    mem[(4 * ceil32(return_data.size)) + 900] = mem[(4 * ceil32(return_data.size)) + 684 len 20]
    mem[(4 * ceil32(return_data.size)) + 932] = bool(mem[(4 * ceil32(return_data.size)) + 704])
    require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
    call 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len u + (32 * _66) + -mem[64] + 28]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _101 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _102 = mem[_101]
    require mem[_101] <= test266151307()
    require _101 + return_data.size > _101 + mem[_101] + 31
    _103 = mem[_101 + mem[_101]]
    if mem[_101 + mem[_101]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[_101 + mem[_101]]) + 1 < 0 or _101 + ceil32(return_data.size) + ceil32(32 * mem[_101 + mem[_101]]) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _101 + ceil32(return_data.size) + ceil32(32 * mem[_101 + mem[_101]]) + 1
    mem[_101 + ceil32(return_data.size)] = _103
    require _102 + (32 * _103) + 32 <= return_data.size
    mem[_101 + ceil32(return_data.size) + 32 len 32 * _103] = mem[_101 + _102 + 32 len 32 * _103]
    if 0 >= _103:
        revert with 'NH{q', 50
    _122 = mem[_101 + ceil32(return_data.size) + 32]
    _123 = mem[64]
    mem[mem[64] + 32] = arg1
    mem[mem[64] + 64] = arg2
    mem[mem[64] + 96] = address(arg3)
    mem[mem[64] + 128] = address(arg4)
    mem[mem[64] + 160] = ext_call.return_data[0]
    _124 = mem[64]
    mem[64] = mem[64] + 192
    mem[_123 + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 >= address(arg3):
        mem[_123 + 196] = 0
        mem[_123 + 228] = _122
        mem[_123 + 260] = this.address
        mem[_123 + 292] = 128
        _127 = mem[_124]
        mem[_123 + 324] = mem[_124]
        mem[_123 + 356 len ceil32(_127)] = mem[_124 + 32 len ceil32(_127)]
        if ceil32(_127) > _127:
            mem[_127 + _123 + 356] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _122, address(this.address), 128, mem[_123 + 324 len ceil32(_127) + 32]
    else:
        mem[_123 + 196] = _122
        mem[_123 + 228] = 0
        mem[_123 + 260] = this.address
        mem[_123 + 292] = 128
        _128 = mem[_124]
        mem[_123 + 324] = mem[_124]
        mem[_123 + 356 len ceil32(_128)] = mem[_124 + 32 len ceil32(_128)]
        if ceil32(_128) > _128:
            mem[_128 + _123 + 356] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _122, 0, address(this.address), 128, mem[_123 + 324 len ceil32(_128) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
