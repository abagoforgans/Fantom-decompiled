contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
mapping of uint256 stor0;

function _fallback() payable {
    revert
}

function indexOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
        revert with 0, 17
    require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))))))) >= 0
    return ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0)))))))
}

function sub_66f28d10(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 2
    require ext_code.size(address(arg1))
    if 0xe120ffbda0d14f3bb6d6053e90e63c572a66a428 == address(arg1):
        staticcall address(arg1).token1() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[ceil32(return_data.size) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg3
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _82 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _84 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _84
        require return_data.size >= _82 + (32 * _84) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _84] = mem[ceil32(return_data.size) + _82 + 224 len 32 * _84]
        if 0 >= _84:
            revert with 0, 50
        _138 = mem[(2 * ceil32(return_data.size)) + 224]
        if mem[(2 * ceil32(return_data.size)) + 224] > arg4:
            revert with 0, 'ftm'
        if address(arg1) != 0xe120ffbda0d14f3bb6d6053e90e63c572a66a428:
            _149 = mem[64]
            mem[mem[64] + 32] = address(arg2)
            mem[mem[64] + 64] = address(ext_call.return_data[12 len 20])
            mem[mem[64] + 96] = _138
            _156 = mem[64]
            mem[64] = mem[64] + 128
            mem[_149 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_149 + 132] = 0
            mem[_149 + 164] = arg3
            mem[_149 + 196] = this.address
            mem[_149 + 228] = 128
            _164 = mem[_156]
            mem[_149 + 260] = mem[_156]
            mem[_149 + 292 len ceil32(_164)] = mem[_156 + 32 len ceil32(_164)]
            if ceil32(_164) > _164:
                mem[_149 + _164 + 292] = 0
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg3, address(this.address), 128, mem[_149 + 260 len ceil32(_164) + 32]
        else:
            _151 = mem[64]
            mem[mem[64] + 32] = address(arg2)
            mem[mem[64] + 64] = address(ext_call.return_data[12 len 20])
            mem[mem[64] + 96] = _138
            _158 = mem[64]
            mem[64] = mem[64] + 128
            mem[_151 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_151 + 132] = arg3
            mem[_151 + 164] = 0
            mem[_151 + 196] = this.address
            mem[_151 + 228] = 128
            _165 = mem[_158]
            mem[_151 + 260] = mem[_158]
            mem[_151 + 292 len ceil32(_165)] = mem[_158 + 32 len ceil32(_165)]
            if ceil32(_165) > _165:
                mem[_151 + _165 + 292] = 0
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg3, 0, address(this.address), 128, mem[_151 + 260 len ceil32(_165) + 32]
    else:
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[ceil32(return_data.size) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg3
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _83 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _85 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _85
        require return_data.size >= _83 + (32 * _85) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _85] = mem[ceil32(return_data.size) + _83 + 224 len 32 * _85]
        if 0 >= _85:
            revert with 0, 50
        _139 = mem[(2 * ceil32(return_data.size)) + 224]
        if mem[(2 * ceil32(return_data.size)) + 224] > arg4:
            revert with 0, 'ftm'
        if address(arg1) != 0xe120ffbda0d14f3bb6d6053e90e63c572a66a428:
            _153 = mem[64]
            mem[mem[64] + 32] = address(arg2)
            mem[mem[64] + 64] = address(ext_call.return_data[12 len 20])
            mem[mem[64] + 96] = _139
            _160 = mem[64]
            mem[64] = mem[64] + 128
            mem[_153 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_153 + 132] = 0
            mem[_153 + 164] = arg3
            mem[_153 + 196] = this.address
            mem[_153 + 228] = 128
            _166 = mem[_160]
            mem[_153 + 260] = mem[_160]
            mem[_153 + 292 len ceil32(_166)] = mem[_160 + 32 len ceil32(_166)]
            if ceil32(_166) > _166:
                mem[_153 + _166 + 292] = 0
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg3, address(this.address), 128, mem[_153 + 260 len ceil32(_166) + 32]
        else:
            _155 = mem[64]
            mem[mem[64] + 32] = address(arg2)
            mem[mem[64] + 64] = address(ext_call.return_data[12 len 20])
            mem[mem[64] + 96] = _139
            _162 = mem[64]
            mem[64] = mem[64] + 128
            mem[_155 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_155 + 132] = arg3
            mem[_155 + 164] = 0
            mem[_155 + 196] = this.address
            mem[_155 + 228] = 128
            _167 = mem[_162]
            mem[_155 + 260] = mem[_162]
            mem[_155 + 292 len ceil32(_167)] = mem[_162 + 32 len ceil32(_167)]
            if ceil32(_167) > _167:
                mem[_155 + _167 + 292] = 0
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg3, 0, address(this.address), 128, mem[_155 + 260 len ceil32(_167) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
