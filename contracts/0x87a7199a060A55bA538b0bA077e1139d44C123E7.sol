contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_77312337(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if arg2 != 88530:
        revert with 0, '0090'
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > arg4:
        revert with 0, 'LEN'
    if arg4 > ext_call.return_data[0]:
        revert with 0, 'LEN'
    require arg4 + -arg3 + 1 <= test266151307()
    mem[ceil32(return_data.size) + 96] = arg4 + -arg3 + 1
    mem[64] = ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 128
    if not arg4 + -arg3 + 1:
        idx = arg3
        s = 0
        while idx <= arg4:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _88 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _91 = mem[_88]
            require mem[_88] == mem[_88 + 12 len 20]
            require ext_code.size(mem[_88 + 12 len 20])
            staticcall mem[_88 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _107 = mem[_106]
            require mem[_106] == mem[_106 + 18 len 14]
            _111 = mem[_106 + 32]
            require mem[_106 + 32] == mem[_106 + 50 len 14]
            require mem[_106 + 64] == mem[_106 + 92 len 4]
            _114 = mem[64]
            mem[64] = mem[64] + 160
            mem[_114 + 160] = 0x1e3dd18b00000000000000000000000000000000000000000000000000000000
            mem[_114 + 164] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1) with:
                 funct ext_call.return_data[0 len 4]
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _114 + -mem[64] + 192]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_118] == mem[_118 + 12 len 20]
            mem[_114] = mem[_118 + 12 len 20]
            require ext_code.size(address(_91))
            staticcall address(_91).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_126] == mem[_126 + 12 len 20]
            mem[_114 + 32] = mem[_126 + 12 len 20]
            require ext_code.size(address(_91))
            staticcall address(_91).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_134] == mem[_134 + 12 len 20]
            mem[_114 + 64] = mem[_134 + 12 len 20]
            mem[_114 + 96] = Mask(112, 0, _107)
            mem[_114 + 128] = Mask(112, 0, _111)
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = _114
            idx = idx + 1
            s = s + 1
            continue 
        _79 = mem[64]
        mem[mem[64]] = 32
        _80 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _80:
            _143 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_143 + 44 len 20]
            mem[t + 64] = mem[_143 + 76 len 20]
            mem[t + 96] = mem[_143 + 96]
            mem[t + 128] = mem[_143 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _79 + (160 * _80) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 288
    mem[ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 128] = 0
    mem[ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 160] = 0
    mem[ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 192] = 0
    mem[ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 224] = 0
    mem[ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 256] = 0
    mem[var23001] = ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 128
    s = var23001
    idx = var23002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 160] = 0
        mem[ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 192] = 0
        mem[ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 224] = 0
        mem[ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 256] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * arg4 + -arg3 + 1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg3
    s = 0
    while idx <= arg4:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _194 = mem[_192]
        require mem[_192] == mem[_192 + 12 len 20]
        require ext_code.size(mem[_192 + 12 len 20])
        staticcall mem[_192 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _198 = mem[_197]
        require mem[_197] == mem[_197 + 18 len 14]
        _199 = mem[_197 + 32]
        require mem[_197 + 32] == mem[_197 + 50 len 14]
        require mem[_197 + 64] == mem[_197 + 92 len 4]
        _201 = mem[64]
        mem[64] = mem[64] + 160
        mem[_201 + 160] = 0x1e3dd18b00000000000000000000000000000000000000000000000000000000
        mem[_201 + 164] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1) with:
             funct ext_call.return_data[0 len 4]
                gas gas_remaining wei
               args mem[mem[64] + 4 len _201 + -mem[64] + 192]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_203] == mem[_203 + 12 len 20]
        mem[_201] = mem[_203 + 12 len 20]
        require ext_code.size(address(_194))
        staticcall address(_194).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _207 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_207] == mem[_207 + 12 len 20]
        mem[_201 + 32] = mem[_207 + 12 len 20]
        require ext_code.size(address(_194))
        staticcall address(_194).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_211] == mem[_211 + 12 len 20]
        mem[_201 + 64] = mem[_211 + 12 len 20]
        mem[_201 + 96] = Mask(112, 0, _198)
        mem[_201 + 128] = Mask(112, 0, _199)
        require s < mem[ceil32(return_data.size) + 96]
        mem[(32 * s) + ceil32(return_data.size) + 128] = _201
        idx = idx + 1
        s = s + 1
        continue 
    _183 = mem[64]
    mem[mem[64]] = 32
    _184 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _184:
        _214 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_214 + 44 len 20]
        mem[t + 64] = mem[_214 + 76 len 20]
        mem[t + 96] = mem[_214 + 96]
        mem[t + 128] = mem[_214 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _183 + (160 * _184) + -mem[64] + 64
}



}
