contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_fd225b1f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x2f745c59 with:
                    gas gas_remaining wei
                   args address(arg2), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _36 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_36] == mem[_36]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_36]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _28 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _28] = mem[ceil32(return_data.size) + 128 len 32 * _28]
        return 32, mem[mem[64] + 32 len (32 * _28) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x2f745c59 with:
                gas gas_remaining wei
               args address(arg2), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_37] == mem[_37]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_37]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _29 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _29] = mem[ceil32(return_data.size) + 128 len 32 * _29]
    return 32, mem[mem[64] + 32 len (32 * _29) + 32]
}

function sub_f42b3b60(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[mem[64]] = 0x282550ec00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 100 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 100] = 0
            mem[mem[64] + 36] = cd[68]
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x282550ec with:
                    gas gas_remaining wei
                   args Array(len=cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)], data=call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]), cd[68]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _46 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _49 = mem[_46]
            require mem[_46] <= test266151307()
            require _46 + mem[_46] + 31 < _46 + return_data.size
            _51 = mem[_46 + mem[_46]]
            if mem[_46 + mem[_46]] > test266151307():
                revert with 'NH{q', 65
            if _46 + ceil32(return_data.size) + ceil32(ceil32(mem[_46 + mem[_46]])) + 1 > test266151307() or ceil32(ceil32(mem[_46 + mem[_46]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _46 + ceil32(return_data.size) + ceil32(ceil32(mem[_46 + mem[_46]])) + 1
            mem[_46 + ceil32(return_data.size)] = _51
            require _49 + _51 + 32 <= return_data.size
            s = 0
            while s < _51:
                mem[_46 + ceil32(return_data.size) + s + 32] = mem[_46 + _49 + s + 32]
                s = s + 32
                continue 
            if ceil32(_51) > _51:
                mem[_46 + ceil32(return_data.size) + _51 + 32] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _46 + ceil32(return_data.size)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        _33 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _33:
            mem[u] = t + -_32 - 64
            _62 = mem[s]
            _66 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _66:
                mem[t + v + 32] = mem[_62 + v + 32]
                v = v + 32
                continue 
            if ceil32(_66) > _66:
                mem[t + _66 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_66) + 32
            u = u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[mem[64]] = 0x282550ec00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 100 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 100] = 0
            mem[mem[64] + 36] = cd[68]
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x282550ec with:
                    gas gas_remaining wei
                   args Array(len=cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)], data=call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]), cd[68]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _77 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _78 = mem[_77]
            require mem[_77] <= test266151307()
            require _77 + mem[_77] + 31 < _77 + return_data.size
            _79 = mem[_77 + mem[_77]]
            if mem[_77 + mem[_77]] > test266151307():
                revert with 'NH{q', 65
            if _77 + ceil32(return_data.size) + ceil32(ceil32(mem[_77 + mem[_77]])) + 1 > test266151307() or ceil32(ceil32(mem[_77 + mem[_77]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _77 + ceil32(return_data.size) + ceil32(ceil32(mem[_77 + mem[_77]])) + 1
            mem[_77 + ceil32(return_data.size)] = _79
            require _78 + _79 + 32 <= return_data.size
            s = 0
            while s < _79:
                mem[_77 + ceil32(return_data.size) + s + 32] = mem[_77 + _78 + s + 32]
                s = s + 32
                continue 
            if ceil32(_79) > _79:
                mem[_77 + ceil32(return_data.size) + _79 + 32] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _77 + ceil32(return_data.size)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 32
        _67 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _67:
            mem[u] = t + -_64 - 64
            _85 = mem[s]
            _88 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _88:
                mem[t + v + 32] = mem[_85 + v + 32]
                v = v + 32
                continue 
            if ceil32(_88) > _88:
                mem[t + _88 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_88) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_6451b919(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 68).length
    mem[64] = floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129
    if not ('cd', 68).length:
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _81 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x282550ec00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = ('cd', 4).length
            mem[mem[64] + 100 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[mem[64] + ('cd', 4).length + 100] = 0
            mem[mem[64] + 36] = _81
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x282550ec with:
                    gas gas_remaining wei
                   args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), _81
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _99 = mem[_96]
            require mem[_96] <= test266151307()
            require _96 + mem[_96] + 31 < _96 + return_data.size
            _102 = mem[_96 + mem[_96]]
            if mem[_96 + mem[_96]] > test266151307():
                revert with 'NH{q', 65
            if _96 + ceil32(return_data.size) + ceil32(ceil32(mem[_96 + mem[_96]])) + 1 > test266151307() or ceil32(ceil32(mem[_96 + mem[_96]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _96 + ceil32(return_data.size) + ceil32(ceil32(mem[_96 + mem[_96]])) + 1
            mem[_96 + ceil32(return_data.size)] = _102
            require _99 + _102 + 32 <= return_data.size
            s = 0
            while s < _102:
                mem[_96 + ceil32(return_data.size) + s + 32] = mem[_96 + _99 + s + 32]
                s = s + 32
                continue 
            if ceil32(_102) > _102:
                mem[_96 + ceil32(return_data.size) + _102 + 32] = 0
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + 129] = _96 + ceil32(return_data.size)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _80 = mem[64]
        mem[mem[64]] = 32
        _85 = mem[floor32(('cd', 68).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 68).length) + 97]
        idx = 0
        s = floor32(('cd', 68).length) + 129
        t = mem[64] + (32 * _85) + 64
        u = mem[64] + 64
        while idx < _85:
            mem[u] = t + -_80 - 64
            _115 = mem[s]
            _122 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _122:
                mem[t + v + 32] = mem[_115 + v + 32]
                v = v + 32
                continue 
            if ceil32(_122) > _122:
                mem[t + _122 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_122) + 32
            u = u + 32
            continue 
    else:
        mem[floor32(('cd', 68).length) + 129] = 96
        s = floor32(('cd', 68).length) + 129
        idx = ('cd', 68).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _114 = mem[96]
        idx = 0
        while idx < _114:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _119 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x282550ec00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = ('cd', 4).length
            mem[mem[64] + 100 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[mem[64] + ('cd', 4).length + 100] = 0
            mem[mem[64] + 36] = _119
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x282550ec with:
                    gas gas_remaining wei
                   args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), _119
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _132 = mem[_131]
            require mem[_131] <= test266151307()
            require _131 + mem[_131] + 31 < _131 + return_data.size
            _134 = mem[_131 + mem[_131]]
            if mem[_131 + mem[_131]] > test266151307():
                revert with 'NH{q', 65
            if _131 + ceil32(return_data.size) + ceil32(ceil32(mem[_131 + mem[_131]])) + 1 > test266151307() or ceil32(ceil32(mem[_131 + mem[_131]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _131 + ceil32(return_data.size) + ceil32(ceil32(mem[_131 + mem[_131]])) + 1
            mem[_131 + ceil32(return_data.size)] = _134
            require _132 + _134 + 32 <= return_data.size
            s = 0
            while s < _134:
                mem[_131 + ceil32(return_data.size) + s + 32] = mem[_131 + _132 + s + 32]
                _114 = mem[96]
                s = s + 32
                continue 
            if ceil32(_134) > _134:
                mem[_131 + ceil32(return_data.size) + _134 + 32] = 0
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + 129] = _131 + ceil32(return_data.size)
            if idx == -1:
                revert with 'NH{q', 17
            _114 = mem[96]
            idx = idx + 1
            continue 
        _118 = mem[64]
        mem[mem[64]] = 32
        _123 = mem[floor32(('cd', 68).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 68).length) + 97]
        idx = 0
        s = floor32(('cd', 68).length) + 129
        t = mem[64] + (32 * _123) + 64
        u = mem[64] + 64
        while idx < _123:
            mem[u] = t + -_118 - 64
            _140 = mem[s]
            _143 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _143:
                mem[t + v + 32] = mem[_140 + v + 32]
                v = v + 32
                continue 
            if ceil32(_143) > _143:
                mem[t + _143 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_143) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
