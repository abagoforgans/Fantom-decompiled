contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_6365d3e3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 1
    mem[64] = ceil32(arg2.length) + 192
    mem[ceil32(arg2.length) + 160] = 96
    idx = 0
    while idx < arg2.length:
        _22 = mem[64]
        _24 = mem[96]
        s = 0
        while s < _24:
            mem[s + _22] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(_24) <= _24:
            staticcall address(arg1).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _24 + _22 + -mem[64] - 4]
            if not return_data.size:
                if idx >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(arg2.length) + 160] = 96
            else:
                _45 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_45] = return_data.size
                mem[_45 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(arg2.length) + 160] = _45
        else:
            mem[_22 + _24] = 0
            staticcall address(arg1).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _24 + _22 + -mem[64] - 4]
            if not return_data.size:
                if idx >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(arg2.length) + 160] = 96
            else:
                _49 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_49] = return_data.size
                mem[_49 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(arg2.length) + 160] = _49
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _23 = mem[64]
    mem[mem[64]] = 32
    _25 = mem[ceil32(arg2.length) + 128]
    mem[mem[64] + 32] = mem[ceil32(arg2.length) + 128]
    idx = 0
    s = ceil32(arg2.length) + 160
    t = mem[64] + 64
    u = mem[64] + (32 * _25) + 64
    while idx < _25:
        mem[t] = u + -_23 - 64
        _39 = mem[s]
        _40 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _40:
            mem[v + u + 32] = mem[v + _39 + 32]
            v = v + 32
            continue 
        if ceil32(_40) > _40:
            mem[u + _40 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_40) + u + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_ce25f24e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - 4]
            if not return_data.size:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 96
            else:
                _37 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_37] = return_data.size
                mem[_37 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _37
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = 32
        _25 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _25:
            mem[t] = u + -_24 - 64
            _46 = mem[s]
            _47 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _47:
                mem[v + u + 32] = mem[v + _46 + 32]
                v = v + 32
                continue 
            if ceil32(_47) > _47:
                mem[u + _47 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_47) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 36).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - 4]
            if not return_data.size:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 96
            else:
                _58 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_58] = return_data.size
                mem[_58 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _58
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _49 = mem[64]
        mem[mem[64]] = 32
        _50 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _50:
            mem[t] = u + -_49 - 64
            _62 = mem[s]
            _63 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _63:
                mem[v + u + 32] = mem[v + _62 + 32]
                v = v + 32
                continue 
            if ceil32(_63) > _63:
                mem[u + _63 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_63) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
