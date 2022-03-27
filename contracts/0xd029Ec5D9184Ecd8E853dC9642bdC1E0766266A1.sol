contract main {




// =====================  Runtime code  =====================


#
#  - sub_76428c9b(?)
#
address airnodeAddress;

function airnode() payable {
    return airnodeAddress
}

function _fallback() payable {
    revert
}

function sub_824240d1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x33c0950a00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(airnodeAddress)
    staticcall airnodeAddress.0x33c0950a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 == Mask(160, 32, arg1) >> 32
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= test266151307()
    require uint32(arg1), mem[132 len 28] + 127 < return_data.size + 96
    _6 = mem[uint32(arg1), mem[132 len 28] + 96]
    require mem[uint32(arg1), mem[132 len 28] + 96] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[uint32(arg1), mem[132 len 28] + 96]) + 128 <= test266151307() and ceil32(mem[uint32(arg1), mem[132 len 28] + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + ceil32(mem[uint32(arg1), mem[132 len 28] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _6
    require _5 + _6 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_6)] = mem[_5 + 128 len ceil32(_6)]
    if ceil32(_6) <= _6:
        _20 = mem[64]
        mem[mem[64]] = address(_4)
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = _6
        mem[mem[64] + 128 len ceil32(_6)] = mem[ceil32(return_data.size) + 128 len ceil32(_6)]
        if ceil32(_6) > _6:
            mem[mem[64] + _6 + 128] = 0
        mem[mem[64] + 64] = block.number
        return memory
          from mem[64]
           len _20 + ceil32(_6) + -mem[64] + 128
    mem[ceil32(return_data.size) + _6 + 128] = 0
    _21 = mem[64]
    mem[mem[64]] = address(_4)
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = _6
    mem[mem[64] + 128 len ceil32(_6)] = mem[ceil32(return_data.size) + 128 len ceil32(_6)]
    if ceil32(_6) > _6:
        mem[mem[64] + _6 + 128] = 0
    mem[mem[64] + 64] = block.number
    return memory
      from mem[64]
       len _21 + ceil32(_6) + -mem[64] + 128
}

function sub_ccd76101(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    mem[96] = 0xdfd22ded00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg3
    require ext_code.size(airnodeAddress)
    staticcall airnodeAddress.0xdfd22ded with:
            gas gas_remaining wei
           args arg1, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not _5:
        return 0
    idx = 0
    s = 1
    while idx < _5:
        require idx < mem[ceil32(return_data.size) + 96]
        _36 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
            if not s:
                idx = idx + 1
                s = 1
                continue 
            return 1
        if not s:
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = arg3
        mem[mem[64] + 100] = arg4
        mem[mem[64] + 132] = address(arg5)
        mem[mem[64] + 164] = address(arg6)
        require ext_code.size(address(_36))
        staticcall address(_36).0x9bb01428 with:
                gas gas_remaining wei
               args arg2, arg1, arg3, arg4, address(arg5), address(arg6)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _43 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_43] == bool(mem[_43])
        if mem[_43]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 0
        continue 
    return bool(s)
}

function sub_d7607106(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'Parameter lengths must be equal'
    if ('cd', 36).length != ('cd', 100).length:
        revert with 0, 'Parameter lengths must be equal'
    if ('cd', 36).length != ('cd', 132).length:
        revert with 0, 'Parameter lengths must be equal'
    if ('cd', 36).length != ('cd', 164).length:
        revert with 0, 'Parameter lengths must be equal'
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            require idx < ('cd', 100).length
            require idx < ('cd', 132).length
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            require idx < ('cd', 164).length
            require cd[((32 * idx) + cd[164] + 36)] == address(cd[((32 * idx) + cd[164] + 36)])
            mem[mem[64]] = 0xdfd22ded00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
            require ext_code.size(airnodeAddress)
            staticcall airnodeAddress.0xdfd22ded with:
                    gas gas_remaining wei
                   args cd[4], cd[((32 * idx) + cd[68] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _66 = mem[_64]
            require mem[_64] <= test266151307()
            require _64 + mem[_64] + 31 < _64 + return_data.size
            _68 = mem[_64 + mem[_64]]
            require mem[_64 + mem[_64]] <= test266151307()
            require _64 + ceil32(return_data.size) + (32 * mem[_64 + mem[_64]]) + 32 <= test266151307() and (32 * mem[_64 + mem[_64]]) + 32 >= 0
            mem[64] = _64 + ceil32(return_data.size) + (32 * mem[_64 + mem[_64]]) + 32
            mem[_64 + ceil32(return_data.size)] = _68
            require _66 + (32 * _68) + 32 <= return_data.size
            s = 0
            t = _64 + _66 + 32
            u = _64 + ceil32(return_data.size) + 32
            while s < _68:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if not _68:
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0
            else:
                s = 0
                t = 1
                while s < _68:
                    require s < mem[_64 + ceil32(return_data.size)]
                    _122 = mem[(32 * s) + _64 + ceil32(return_data.size) + 32]
                    if not mem[(32 * s) + _64 + ceil32(return_data.size) + 44 len 20]:
                        if not t:
                            s = s + 1
                            t = 1
                            continue 
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = 1
                        idx = idx + 1
                        continue 
                    if not t:
                        s = s + 1
                        t = t
                        continue 
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    mem[mem[64] + 100] = cd[((32 * idx) + cd[100] + 36)]
                    mem[mem[64] + 132] = address(cd[((32 * idx) + cd[132] + 36)])
                    mem[mem[64] + 164] = address(cd[((32 * idx) + cd[164] + 36)])
                    require ext_code.size(address(_122))
                    staticcall address(_122).0x9bb01428 with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[36] + 36)], cd[4], cd[((32 * idx) + cd[68] + 36)], cd[((32 * idx) + cd[100] + 36)], address(cd[((32 * idx) + cd[132] + 36)]), address(cd[((32 * idx) + cd[164] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _132 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_132] == bool(mem[_132])
                    if mem[_132]:
                        s = s + 1
                        t = t
                        continue 
                    s = s + 1
                    t = 0
                    continue 
                require idx < mem[96]
                mem[(32 * idx) + 128] = bool(t)
            idx = idx + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = 32
        _54 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _54:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _52 + (32 * _54) + -mem[64] + 64
    mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        require idx < ('cd', 100).length
        require idx < ('cd', 132).length
        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
        require idx < ('cd', 164).length
        require cd[((32 * idx) + cd[164] + 36)] == address(cd[((32 * idx) + cd[164] + 36)])
        mem[mem[64]] = 0xdfd22ded00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(airnodeAddress)
        staticcall airnodeAddress.0xdfd22ded with:
                gas gas_remaining wei
               args cd[4], cd[((32 * idx) + cd[68] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _67 = mem[_65]
        require mem[_65] <= test266151307()
        require _65 + mem[_65] + 31 < _65 + return_data.size
        _69 = mem[_65 + mem[_65]]
        require mem[_65 + mem[_65]] <= test266151307()
        require _65 + ceil32(return_data.size) + (32 * mem[_65 + mem[_65]]) + 32 <= test266151307() and (32 * mem[_65 + mem[_65]]) + 32 >= 0
        mem[64] = _65 + ceil32(return_data.size) + (32 * mem[_65 + mem[_65]]) + 32
        mem[_65 + ceil32(return_data.size)] = _69
        require _67 + (32 * _69) + 32 <= return_data.size
        s = 0
        t = _65 + _67 + 32
        u = _65 + ceil32(return_data.size) + 32
        while s < _69:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if not _69:
            require idx < mem[96]
            mem[(32 * idx) + 128] = 0
        else:
            s = 0
            t = 1
            while s < _69:
                require s < mem[_65 + ceil32(return_data.size)]
                _123 = mem[(32 * s) + _65 + ceil32(return_data.size) + 32]
                if not mem[(32 * s) + _65 + ceil32(return_data.size) + 44 len 20]:
                    if not t:
                        s = s + 1
                        t = 1
                        continue 
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 1
                    idx = idx + 1
                    continue 
                if not t:
                    s = s + 1
                    t = t
                    continue 
                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64] + 36] = cd[4]
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                mem[mem[64] + 100] = cd[((32 * idx) + cd[100] + 36)]
                mem[mem[64] + 132] = address(cd[((32 * idx) + cd[132] + 36)])
                mem[mem[64] + 164] = address(cd[((32 * idx) + cd[164] + 36)])
                require ext_code.size(address(_123))
                staticcall address(_123).0x9bb01428 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[36] + 36)], cd[4], cd[((32 * idx) + cd[68] + 36)], cd[((32 * idx) + cd[100] + 36)], address(cd[((32 * idx) + cd[132] + 36)]), address(cd[((32 * idx) + cd[164] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_133] == bool(mem[_133])
                if mem[_133]:
                    s = s + 1
                    t = t
                    continue 
                s = s + 1
                t = 0
                continue 
            require idx < mem[96]
            mem[(32 * idx) + 128] = bool(t)
        idx = idx + 1
        continue 
    _53 = mem[64]
    mem[mem[64]] = 32
    _55 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _55:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _53 + (32 * _55) + -mem[64] + 64
}



}
