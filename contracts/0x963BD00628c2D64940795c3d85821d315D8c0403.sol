contract main {




// =====================  Runtime code  =====================


const sub_8b206e01(?) = 'MultyProbe1', 0


address stor0;
address stor2;

function destroy() payable {
    if stor0 != msg.sender:
        revert with 0, 'Bad Account'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_eb82b89a(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > test266151307():
        revert with 0, 65
    if arg1 > test266151307():
        revert with 0, 65
    if not arg1:
        if not arg1:
            mem[(64 * arg1) + 160] = 64
            mem[(64 * arg1) + 224] = arg1
            mem[(64 * arg1) + 256 len 32 * arg1] = mem[128 len 32 * arg1]
            mem[(64 * arg1) + 192] = (32 * arg1) + 96
            mem[(98 * arg1) + 256] = arg1
            mem[(98 * arg1) + 288 len 32 * arg1] = mem[(32 * arg1) + 160 len 32 * arg1]
        else:
            mem[(32 * arg1) + 160 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
            mem[(64 * arg1) + 160] = 64
            mem[(64 * arg1) + 224] = arg1
            mem[(64 * arg1) + 256 len 32 * arg1] = mem[128 len 32 * arg1]
            mem[(64 * arg1) + 192] = (32 * arg1) + 96
            mem[(98 * arg1) + 256] = arg1
            mem[(98 * arg1) + 288 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
    else:
        if not arg1:
            mem[(64 * arg1) + 160] = 64
            mem[(64 * arg1) + 224] = arg1
            mem[(64 * arg1) + 256 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
            mem[(64 * arg1) + 192] = (32 * arg1) + 96
            mem[(98 * arg1) + 256] = arg1
            mem[(98 * arg1) + 288 len 32 * arg1] = mem[(32 * arg1) + 160 len 32 * arg1]
        else:
            mem[(32 * arg1) + 160 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
            mem[(64 * arg1) + 160] = 64
            mem[(64 * arg1) + 224] = arg1
            mem[(64 * arg1) + 256 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
            mem[(64 * arg1) + 192] = (32 * arg1) + 96
            mem[(98 * arg1) + 256] = arg1
            mem[(98 * arg1) + 288 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
    return memory
      from (64 * arg1) + 160
       len (194 * arg1) + 128
}

function sub_25ac8903(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = stor0
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _20 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = eth.balance(stor0)
        return memory
          from mem[64]
           len _20 + (32 * mem[96]) + -mem[64] + 96
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = stor0
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args stor0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = mem[_33]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = eth.balance(stor0)
    return memory
      from mem[64]
       len _21 + (32 * mem[96]) + -mem[64] + 96
}

function sub_6252ceb7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        mem[64] = (64 * ('cd', 4).length) + 160
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _85 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _96 = mem[_85]
                require mem[_85] == mem[_85 + 18 len 14]
                require mem[_85 + 32] == mem[_85 + 50 len 14]
                require mem[_85 + 64] == mem[_85 + 92 len 4]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_85 + 50 len 14]
                mem[(32 * idx) + 128] = Mask(112, 0, _96)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _60 = mem[64]
            mem[mem[64]] = 64
            _64 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _64:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_60 + 32] = (32 * _64) + 96
            _120 = mem[(32 * ('cd', 4).length) + 128]
            mem[_60 + (32 * _64) + 96] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _60 + (32 * _64) + 128
            while idx < _120:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _60 + (32 * _64) + (32 * _120) + -mem[64] + 128
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _97 = mem[_87]
            require mem[_87] == mem[_87 + 18 len 14]
            require mem[_87 + 32] == mem[_87 + 50 len 14]
            require mem[_87 + 64] == mem[_87 + 92 len 4]
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_87 + 50 len 14]
            mem[(32 * idx) + 128] = Mask(112, 0, _97)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _61 = mem[64]
        mem[mem[64]] = 64
        _65 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _65:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_61 + 32] = (32 * _65) + 96
        _121 = mem[(32 * ('cd', 4).length) + 128]
        mem[_61 + (32 * _65) + 96] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = _61 + (32 * _65) + 128
        while idx < _121:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _61 + (32 * _65) + (32 * _121) + -mem[64] + 128
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 160
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _98 = mem[_89]
            require mem[_89] == mem[_89 + 18 len 14]
            require mem[_89 + 32] == mem[_89 + 50 len 14]
            require mem[_89 + 64] == mem[_89 + 92 len 4]
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_89 + 50 len 14]
            mem[(32 * idx) + 128] = Mask(112, 0, _98)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _62 = mem[64]
        mem[mem[64]] = 64
        _66 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _66:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_62 + 32] = (32 * _66) + 96
        _122 = mem[(32 * ('cd', 4).length) + 128]
        mem[_62 + (32 * _66) + 96] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = _62 + (32 * _66) + 128
        while idx < _122:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _62 + (32 * _66) + (32 * _122) + -mem[64] + 128
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _99 = mem[_91]
        require mem[_91] == mem[_91 + 18 len 14]
        require mem[_91 + 32] == mem[_91 + 50 len 14]
        require mem[_91 + 64] == mem[_91 + 92 len 4]
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_91 + 50 len 14]
        mem[(32 * idx) + 128] = Mask(112, 0, _99)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _63 = mem[64]
    mem[mem[64]] = 64
    _67 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _67:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_63 + 32] = (32 * _67) + 96
    _123 = mem[(32 * ('cd', 4).length) + 128]
    mem[_63 + (32 * _67) + 96] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = _63 + (32 * _67) + 128
    while idx < _123:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _63 + (32 * _67) + (32 * _123) + -mem[64] + 128
}

function sub_321fe25f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require calldata.size + -cd[4] + -cd[s] - 36 >= 128
        _45 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        require cd[(cd[4] + cd[s] + 36)] == address(cd[(cd[4] + cd[s] + 36)])
        mem[_45] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] == address(cd[(cd[4] + cd[s] + 68)])
        mem[_45 + 32] = cd[(cd[4] + cd[s] + 68)]
        require cd[(cd[4] + cd[s] + 100)] == cd[(cd[4] + cd[s] + 100)] % 16777216
        mem[_45 + 64] = cd[(cd[4] + cd[s] + 100)]
        require cd[(cd[4] + cd[s] + 132)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)] > test266151307():
            revert with 0, 65
        _71 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)]) + 1
        mem[_71] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)]) + 68 <= calldata.size
        u = cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 68
        v = _71 + 32
        w = 0
        while w < cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)]:
            mem[v] = cd[u]
            u = u + 32
            v = v + 32
            w = w + 1
            continue 
        mem[_45 + 96] = _71
        mem[t] = _45
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        if s > !mem[mem[mem[(32 * idx) + 128] + 96]]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[mem[mem[(32 * idx) + 128] + 96]]
        continue 
    if s * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] > test266151307():
        revert with 0, 65
    _88 = mem[64]
    mem[mem[64]] = s * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]
    if not s:
        if s > test266151307():
            revert with 0, 65
        _92 = mem[64] + (32 * s) + 32
        mem[mem[64] + (32 * s) + 32] = s
        mem[64] = _92 + (32 * s) + 32
        if not s:
            _226 = mem[96]
            idx = 0
            while idx < _226:
                if idx >= mem[96]:
                    revert with 0, 50
                _235 = mem[(32 * idx) + 128]
                _359 = mem[mem[mem[(32 * idx) + 128] + 96]]
                s = 0
                t = 0
                while s < _359:
                    _368 = mem[_235 + 32]
                    _369 = mem[_235 + 64]
                    if s >= mem[mem[_235 + 96]]:
                        revert with 0, 50
                    _390 = mem[(32 * s) + mem[_235 + 96] + 32]
                    mem[mem[64] + 4] = mem[_235 + 12 len 20]
                    mem[mem[64] + 36] = address(_368)
                    mem[mem[64] + 68] = _369 % 16777216
                    mem[mem[64] + 100] = _390
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor2)
                    call stor2.quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_368), _369 << 232, _390, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _406 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t >= mem[_88]:
                        revert with 0, 50
                    mem[(32 * t) + _88 + 32] = mem[_406]
                    _427 = mem[_235]
                    _428 = mem[_235 + 64]
                    if s >= mem[mem[_235 + 96]]:
                        revert with 0, 50
                    _446 = mem[(32 * s) + mem[_235 + 96] + 32]
                    mem[mem[64] + 4] = mem[_235 + 44 len 20]
                    mem[mem[64] + 36] = address(_427)
                    mem[mem[64] + 68] = _428 % 16777216
                    mem[mem[64] + 100] = _446
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor2)
                    call stor2.quoteExactOutputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_427), _428 << 232, _446, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _458 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t == -1:
                        revert with 0, 17
                    if t >= mem[_92]:
                        revert with 0, 50
                    mem[(32 * t) + _92 + 32] = mem[_458]
                    if s == -1:
                        revert with 0, 17
                    _226 = mem[96]
                    _359 = mem[mem[_235 + 96]]
                    s = s + 1
                    t = t + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                _226 = mem[96]
                idx = idx + 1
                continue 
            _234 = mem[64]
            mem[mem[64]] = 64
            _250 = mem[_88]
            mem[mem[64] + 64] = mem[_88]
            mem[mem[64] + 96 len 32 * _250] = mem[_88 + 32 len 32 * _250]
            idx = _250
            mem[mem[64] + 32] = (32 * _250) + 96
            _402 = mem[_92]
            mem[_234 + (32 * _250) + 96] = mem[_92]
            mem[_234 + (32 * _250) + 128 len 32 * _402] = mem[_92 + 32 len 32 * _402]
            return memory
              from mem[64]
               len _234 + (32 * _250) + (32 * _402) + -mem[64] + 128
        mem[_92 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
        _227 = mem[96]
        idx = 0
        while idx < _227:
            if idx >= mem[96]:
                revert with 0, 50
            _237 = mem[(32 * idx) + 128]
            _361 = mem[mem[mem[(32 * idx) + 128] + 96]]
            s = 0
            t = 0
            while s < _361:
                _374 = mem[_237 + 32]
                _375 = mem[_237 + 64]
                if s >= mem[mem[_237 + 96]]:
                    revert with 0, 50
                _393 = mem[(32 * s) + mem[_237 + 96] + 32]
                mem[mem[64] + 4] = mem[_237 + 12 len 20]
                mem[mem[64] + 36] = address(_374)
                mem[mem[64] + 68] = _375 % 16777216
                mem[mem[64] + 100] = _393
                mem[mem[64] + 132] = 0
                require ext_code.size(stor2)
                call stor2.quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_374), _375 << 232, _393, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _407 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t >= mem[_88]:
                    revert with 0, 50
                mem[(32 * t) + _88 + 32] = mem[_407]
                _432 = mem[_237]
                _433 = mem[_237 + 64]
                if s >= mem[mem[_237 + 96]]:
                    revert with 0, 50
                _449 = mem[(32 * s) + mem[_237 + 96] + 32]
                mem[mem[64] + 4] = mem[_237 + 44 len 20]
                mem[mem[64] + 36] = address(_432)
                mem[mem[64] + 68] = _433 % 16777216
                mem[mem[64] + 100] = _449
                mem[mem[64] + 132] = 0
                require ext_code.size(stor2)
                call stor2.quoteExactOutputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_432), _433 << 232, _449, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _459 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t == -1:
                    revert with 0, 17
                if t >= mem[_92]:
                    revert with 0, 50
                mem[(32 * t) + _92 + 32] = mem[_459]
                if s == -1:
                    revert with 0, 17
                _227 = mem[96]
                _361 = mem[mem[_237 + 96]]
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 0, 17
            _227 = mem[96]
            idx = idx + 1
            continue 
        _236 = mem[64]
        mem[mem[64]] = 64
        _256 = mem[_88]
        mem[mem[64] + 64] = mem[_88]
        mem[mem[64] + 96 len 32 * _256] = mem[_88 + 32 len 32 * _256]
        idx = _256
        mem[mem[64] + 32] = (32 * _256) + 96
        _403 = mem[_92]
        mem[_236 + (32 * _256) + 96] = mem[_92]
        mem[_236 + (32 * _256) + 128 len 32 * _403] = mem[_92 + 32 len 32 * _403]
        return memory
          from mem[64]
           len _236 + (32 * _256) + (32 * _403) + -mem[64] + 128
    mem[mem[64] + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    if s > test266151307():
        revert with 0, 65
    mem[mem[64] + (32 * s) + 32] = s
    mem[64] = _88 + (64 * s) + 64
    if not s:
        _228 = mem[96]
        idx = 0
        while idx < _228:
            if idx >= mem[96]:
                revert with 0, 50
            _239 = mem[(32 * idx) + 128]
            _363 = mem[mem[mem[(32 * idx) + 128] + 96]]
            t = 0
            u = 0
            while t < _363:
                _380 = mem[_239 + 32]
                _381 = mem[_239 + 64]
                if t >= mem[mem[_239 + 96]]:
                    revert with 0, 50
                _396 = mem[(32 * t) + mem[_239 + 96] + 32]
                mem[mem[64] + 4] = mem[_239 + 12 len 20]
                mem[mem[64] + 36] = address(_380)
                mem[mem[64] + 68] = _381 % 16777216
                mem[mem[64] + 100] = _396
                mem[mem[64] + 132] = 0
                require ext_code.size(stor2)
                call stor2.quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_380), _381 << 232, _396, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _408 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if u >= mem[_88]:
                    revert with 0, 50
                mem[(32 * u) + _88 + 32] = mem[_408]
                _437 = mem[_239]
                _438 = mem[_239 + 64]
                if t >= mem[mem[_239 + 96]]:
                    revert with 0, 50
                _452 = mem[(32 * t) + mem[_239 + 96] + 32]
                mem[mem[64] + 4] = mem[_239 + 44 len 20]
                mem[mem[64] + 36] = address(_437)
                mem[mem[64] + 68] = _438 % 16777216
                mem[mem[64] + 100] = _452
                mem[mem[64] + 132] = 0
                require ext_code.size(stor2)
                call stor2.quoteExactOutputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_437), _438 << 232, _452, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _460 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if u == -1:
                    revert with 0, 17
                if u >= mem[_88 + (32 * s) + 32]:
                    revert with 0, 50
                mem[(32 * u) + _88 + (32 * s) + 64] = mem[_460]
                if t == -1:
                    revert with 0, 17
                _228 = mem[96]
                _363 = mem[mem[_239 + 96]]
                t = t + 1
                u = u + 1
                continue 
            if idx == -1:
                revert with 0, 17
            _228 = mem[96]
            idx = idx + 1
            continue 
        _238 = mem[64]
        mem[mem[64]] = 64
        _262 = mem[_88]
        mem[mem[64] + 64] = mem[_88]
        mem[mem[64] + 96 len 32 * _262] = mem[_88 + 32 len 32 * _262]
        idx = _262
        mem[mem[64] + 32] = (32 * _262) + 96
        _404 = mem[_88 + (32 * s) + 32]
        mem[_238 + (32 * _262) + 96] = mem[_88 + (32 * s) + 32]
        mem[_238 + (32 * _262) + 128 len 32 * _404] = mem[_88 + (32 * s) + 64 len 32 * _404]
        return memory
          from mem[64]
           len _238 + (32 * _262) + (32 * _404) + -mem[64] + 128
    mem[_88 + (32 * s) + 64 len 32 * s] = call.data[calldata.size len 32 * s]
    _229 = mem[96]
    idx = 0
    while idx < _229:
        if idx >= mem[96]:
            revert with 0, 50
        _241 = mem[(32 * idx) + 128]
        _365 = mem[mem[mem[(32 * idx) + 128] + 96]]
        t = 0
        u = 0
        while t < _365:
            _386 = mem[_241 + 32]
            _387 = mem[_241 + 64]
            if t >= mem[mem[_241 + 96]]:
                revert with 0, 50
            _399 = mem[(32 * t) + mem[_241 + 96] + 32]
            mem[mem[64] + 4] = mem[_241 + 12 len 20]
            mem[mem[64] + 36] = address(_386)
            mem[mem[64] + 68] = _387 % 16777216
            mem[mem[64] + 100] = _399
            mem[mem[64] + 132] = 0
            require ext_code.size(stor2)
            call stor2.quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_386), _387 << 232, _399, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _409 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if u >= mem[_88]:
                revert with 0, 50
            mem[(32 * u) + _88 + 32] = mem[_409]
            _442 = mem[_241]
            _443 = mem[_241 + 64]
            if t >= mem[mem[_241 + 96]]:
                revert with 0, 50
            _455 = mem[(32 * t) + mem[_241 + 96] + 32]
            mem[mem[64] + 4] = mem[_241 + 44 len 20]
            mem[mem[64] + 36] = address(_442)
            mem[mem[64] + 68] = _443 % 16777216
            mem[mem[64] + 100] = _455
            mem[mem[64] + 132] = 0
            require ext_code.size(stor2)
            call stor2.quoteExactOutputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_442), _443 << 232, _455, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _461 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if u == -1:
                revert with 0, 17
            if u >= mem[_88 + (32 * s) + 32]:
                revert with 0, 50
            mem[(32 * u) + _88 + (32 * s) + 64] = mem[_461]
            if t == -1:
                revert with 0, 17
            _229 = mem[96]
            _365 = mem[mem[_241 + 96]]
            t = t + 1
            u = u + 1
            continue 
        if idx == -1:
            revert with 0, 17
        _229 = mem[96]
        idx = idx + 1
        continue 
    _240 = mem[64]
    mem[mem[64]] = 64
    _268 = mem[_88]
    mem[mem[64] + 64] = mem[_88]
    mem[mem[64] + 96 len 32 * _268] = mem[_88 + 32 len 32 * _268]
    idx = _268
    mem[mem[64] + 32] = (32 * _268) + 96
    _405 = mem[_88 + (32 * s) + 32]
    mem[_240 + (32 * _268) + 96] = mem[_88 + (32 * s) + 32]
    mem[_240 + (32 * _268) + 128 len 32 * _405] = mem[_88 + (32 * s) + 64 len 32 * _405]
    return memory
      from mem[64]
       len _240 + (32 * _268) + (32 * _405) + -mem[64] + 128
}



}
