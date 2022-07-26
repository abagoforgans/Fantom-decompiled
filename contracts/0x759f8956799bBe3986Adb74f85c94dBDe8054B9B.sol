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

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawTokens(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _12 = mem[_11]
        if mem[_11]:
            mem[mem[64] + 4] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[mem[64] + 36] = _12
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, _12
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15] == bool(mem[_15])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_5beeca84(?) payable {
    require calldata.size - 4 >= 192
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
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
    require ext_code.size(address(arg3))
    staticcall address(arg3).factory() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg4)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0x4068da6c83afcfa0e13ba15a6696662335d5b75, address(arg4)
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
        _75 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_75 + 32]
        mem[u + 64] = mem[_75 + 64]
        mem[u + 96] = mem[_75 + 96]
        _80 = mem[_75 + 128]
        mem[u + 128] = 160
        _82 = mem[_80]
        mem[u + 160] = mem[_80]
        v = 0
        while v < _82:
            mem[v + u + 192] = mem[v + _80 + 32]
            v = v + 32
            continue 
        if ceil32(_82) > _82:
            mem[_82 + u + 192] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_82) + u + 192
        continue 
    mem[(4 * ceil32(return_data.size)) + 804] = u + -(4 * ceil32(return_data.size)) - 740
    _81 = mem[(4 * ceil32(return_data.size)) + 512]
    mem[u] = mem[(4 * ceil32(return_data.size)) + 512]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 544
    t = u + 32
    while idx < _81:
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
        args mem[mem[64] + 4 len u + (32 * _81) + -mem[64] + 28]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _131 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _132 = mem[_131]
    require mem[_131] <= test266151307()
    require _131 + return_data.size > _131 + mem[_131] + 31
    _133 = mem[_131 + mem[_131]]
    if mem[_131 + mem[_131]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[_131 + mem[_131]]) + 1 < 0 or _131 + ceil32(return_data.size) + ceil32(32 * mem[_131 + mem[_131]]) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _131 + ceil32(return_data.size) + ceil32(32 * mem[_131 + mem[_131]]) + 1
    mem[_131 + ceil32(return_data.size)] = _133
    require _132 + (32 * _133) + 32 <= return_data.size
    mem[_131 + ceil32(return_data.size) + 32 len 32 * _133] = mem[_131 + _132 + 32 len 32 * _133]
    if 0 >= _133:
        revert with 'NH{q', 50
    _167 = mem[_131 + ceil32(return_data.size) + 32]
    _168 = mem[64]
    mem[mem[64] + 32] = ext_call.return_data[0]
    _169 = mem[64]
    mem[mem[64]] = 32
    mem[64] = mem[64] + 64
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    _171 = mem[_169]
    mem[_168 + 96 len ceil32(mem[_169])] = mem[_169 + 32 len ceil32(mem[_169])]
    if ceil32(_171) <= _171:
        mem[_168 + _171 + 96 len calldata.size - 4] = call.data[4 len calldata.size - 4]
        _196 = mem[64]
        mem[64] = calldata.size + _168 + _171 + 92
        mem[calldata.size + _168 + _171 + 92] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 >= address(arg4):
            mem[calldata.size + _168 + _171 + 96] = 0
            mem[calldata.size + _168 + _171 + 128] = _167
            mem[calldata.size + _168 + _171 + 160] = this.address
            mem[calldata.size + _168 + _171 + 192] = 128
            _202 = mem[_196]
            mem[calldata.size + _168 + _171 + 224] = mem[_196]
            mem[calldata.size + _168 + _171 + 256 len ceil32(_202)] = mem[_196 + 32 len ceil32(_202)]
            if ceil32(_202) > _202:
                mem[_202 + calldata.size + _168 + _171 + 256] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _167, address(this.address), 128, mem[calldata.size + _168 + _171 + 224 len ceil32(_202) + 32]
        else:
            mem[calldata.size + _168 + _171 + 96] = _167
            mem[calldata.size + _168 + _171 + 128] = 0
            mem[calldata.size + _168 + _171 + 160] = this.address
            mem[calldata.size + _168 + _171 + 192] = 128
            _203 = mem[_196]
            mem[calldata.size + _168 + _171 + 224] = mem[_196]
            mem[calldata.size + _168 + _171 + 256 len ceil32(_203)] = mem[_196 + 32 len ceil32(_203)]
            if ceil32(_203) > _203:
                mem[_203 + calldata.size + _168 + _171 + 256] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _167, 0, address(this.address), 128, mem[calldata.size + _168 + _171 + 224 len ceil32(_203) + 32]
    else:
        mem[_171 + _168 + 96] = 0
        mem[_168 + _171 + 96 len calldata.size - 4] = call.data[4 len calldata.size - 4]
        _197 = mem[64]
        mem[64] = calldata.size + _168 + _171 + 92
        mem[calldata.size + _168 + _171 + 92] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 >= address(arg4):
            mem[calldata.size + _168 + _171 + 96] = 0
            mem[calldata.size + _168 + _171 + 128] = _167
            mem[calldata.size + _168 + _171 + 160] = this.address
            mem[calldata.size + _168 + _171 + 192] = 128
            _204 = mem[_197]
            mem[calldata.size + _168 + _171 + 224] = mem[_197]
            mem[calldata.size + _168 + _171 + 256 len ceil32(_204)] = mem[_197 + 32 len ceil32(_204)]
            if ceil32(_204) > _204:
                mem[_204 + calldata.size + _168 + _171 + 256] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _167, address(this.address), 128, mem[calldata.size + _168 + _171 + 224 len ceil32(_204) + 32]
        else:
            mem[calldata.size + _168 + _171 + 96] = _167
            mem[calldata.size + _168 + _171 + 128] = 0
            mem[calldata.size + _168 + _171 + 160] = this.address
            mem[calldata.size + _168 + _171 + 192] = 128
            _205 = mem[_197]
            mem[calldata.size + _168 + _171 + 224] = mem[_197]
            mem[calldata.size + _168 + _171 + 256 len ceil32(_205)] = mem[_197 + 32 len ceil32(_205)]
            if ceil32(_205) > _205:
                mem[_205 + calldata.size + _168 + _171 + 256] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _167, 0, address(this.address), 128, mem[calldata.size + _168 + _171 + 224 len ceil32(_205) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
