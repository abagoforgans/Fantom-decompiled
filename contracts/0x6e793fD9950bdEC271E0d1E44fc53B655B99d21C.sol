contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_28f8061b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if arg3 < arg2:
        revert with 'NH{q', 17
    if arg3 - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg3 - arg2
    mem[64] = (32 * arg3 - arg2) + 128
    if not arg3 - arg2:
        idx = arg2
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_48] == mem[_48 + 12 len 20]
            require ext_code.size(mem[_48 + 12 len 20])
            staticcall mem[_48 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _66 = mem[_64]
            require mem[_64] == mem[_64 + 18 len 14]
            _72 = mem[_64 + 32]
            require mem[_64 + 32] == mem[_64 + 50 len 14]
            _74 = mem[_64 + 64]
            require mem[_64 + 64] == mem[_64 + 92 len 4]
            _76 = mem[64]
            mem[64] = mem[64] + 96
            mem[_76] = Mask(112, 0, _66)
            mem[_76 + 32] = Mask(112, 0, _72)
            mem[_76 + 64] = uint32(_74)
            if idx < arg2:
                revert with 'NH{q', 17
            if idx - arg2 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg2) + 128] = _76
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _43 = mem[64]
        mem[mem[64]] = 32
        _44 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _44:
            _81 = mem[s]
            mem[t] = mem[mem[s] + 18 len 14]
            mem[t + 32] = mem[_81 + 50 len 14]
            mem[t + 64] = mem[_81 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _43 + (96 * _44) + -mem[64] + 64
    mem[64] = (32 * arg3 - arg2) + 224
    mem[(32 * arg3 - arg2) + 128] = 0
    mem[(32 * arg3 - arg2) + 160] = 0
    mem[(32 * arg3 - arg2) + 192] = 0
    mem[var41001] = (32 * arg3 - arg2) + 128
    s = var41001
    idx = var41002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * arg3 - arg2) + 128] = 0
        mem[(32 * arg3 - arg2) + 160] = 0
        mem[(32 * arg3 - arg2) + 192] = 0
        mem[s + 32] = (32 * arg3 - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg2
    while idx < arg3:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_109] == mem[_109 + 12 len 20]
        require ext_code.size(mem[_109 + 12 len 20])
        staticcall mem[_109 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _118 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _119 = mem[_118]
        require mem[_118] == mem[_118 + 18 len 14]
        _120 = mem[_118 + 32]
        require mem[_118 + 32] == mem[_118 + 50 len 14]
        _121 = mem[_118 + 64]
        require mem[_118 + 64] == mem[_118 + 92 len 4]
        _122 = mem[64]
        mem[64] = mem[64] + 96
        mem[_122] = Mask(112, 0, _119)
        mem[_122 + 32] = Mask(112, 0, _120)
        mem[_122 + 64] = uint32(_121)
        if idx < arg2:
            revert with 'NH{q', 17
        if idx - arg2 >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx - arg2) + 128] = _122
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _106 = mem[64]
    mem[mem[64]] = 32
    _107 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _107:
        _124 = mem[s]
        mem[t] = mem[mem[s] + 18 len 14]
        mem[t + 32] = mem[_124 + 50 len 14]
        mem[t + 64] = mem[_124 + 92 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _106 + (96 * _107) + -mem[64] + 64
}



}
