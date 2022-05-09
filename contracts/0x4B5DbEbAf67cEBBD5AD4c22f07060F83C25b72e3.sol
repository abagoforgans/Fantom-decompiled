contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_696f88b0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    mem[96] = arg3
    mem[64] = (32 * arg3) + 128
    if not arg3:
        idx = 0
        s = arg2
        while idx < arg3:
            _49 = mem[64]
            mem[64] = mem[64] + 128
            mem[_49 + 32] = 0
            mem[_49 + 64] = 0
            mem[_49 + 96] = 0
            mem[_49] = s
            mem[mem[64] + 4] = s
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x1e3dd18b with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _64 = mem[_59]
            require mem[_59] == mem[_59 + 12 len 20]
            mem[_49 + 96] = mem[_59 + 12 len 20]
            require ext_code.size(address(_64))
            staticcall address(_64).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_76] == mem[_76 + 12 len 20]
            mem[_49 + 32] = mem[_76 + 12 len 20]
            require ext_code.size(address(_64))
            staticcall address(_64).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_84] == mem[_84 + 12 len 20]
            mem[_49 + 64] = mem[_84 + 12 len 20]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _49
            idx = idx + 1
            s = s + 1
            continue 
        _48 = mem[64]
        mem[mem[64]] = 32
        _50 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _50:
            _93 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_93 + 44 len 20]
            mem[t + 64] = mem[_93 + 76 len 20]
            mem[t + 96] = mem[_93 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _48 + (128 * _50) + -mem[64] + 64
    mem[64] = (32 * arg3) + 256
    mem[(32 * arg3) + 128] = 0
    mem[(32 * arg3) + 160] = 0
    mem[(32 * arg3) + 192] = 0
    mem[(32 * arg3) + 224] = 0
    mem[var14001] = (32 * arg3) + 128
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * arg3) + 128] = 0
        mem[(32 * arg3) + 160] = 0
        mem[(32 * arg3) + 192] = 0
        mem[(32 * arg3) + 224] = 0
        mem[s + 32] = (32 * arg3) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = arg2
    while idx < arg3:
        _122 = mem[64]
        mem[64] = mem[64] + 128
        mem[_122 + 32] = 0
        mem[_122 + 64] = 0
        mem[_122 + 96] = 0
        mem[_122] = s
        mem[mem[64] + 4] = s
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x1e3dd18b with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _133 = mem[_132]
        require mem[_132] == mem[_132 + 12 len 20]
        mem[_122 + 96] = mem[_132 + 12 len 20]
        require ext_code.size(address(_133))
        staticcall address(_133).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _136 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_136] == mem[_136 + 12 len 20]
        mem[_122 + 32] = mem[_136 + 12 len 20]
        require ext_code.size(address(_133))
        staticcall address(_133).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _140 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_140] == mem[_140 + 12 len 20]
        mem[_122 + 64] = mem[_140 + 12 len 20]
        require idx < mem[96]
        mem[(32 * idx) + 128] = _122
        idx = idx + 1
        s = s + 1
        continue 
    _121 = mem[64]
    mem[mem[64]] = 32
    _123 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _123:
        _143 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_143 + 44 len 20]
        mem[t + 64] = mem[_143 + 76 len 20]
        mem[t + 96] = mem[_143 + 108 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _121 + (128 * _123) + -mem[64] + 64
}



}
