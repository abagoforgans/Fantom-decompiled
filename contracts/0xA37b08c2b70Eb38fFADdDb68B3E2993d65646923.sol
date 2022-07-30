contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function quote(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor0 == 2:
        revert with 0, 'denied'
    stor0 = 2
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    call arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    stor0 = 1
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function quotes(address[] arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = ceil32(32 * arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] <= test266151307()
        require arg2 + cd[idx] + 67 < calldata.size
        if cd[(arg2 + cd[idx] + 36)] > test266151307():
            revert with 'NH{q', 65
        _108 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + 36)])) + 1
        mem[_108] = cd[(arg2 + cd[idx] + 36)]
        require arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + 68 <= calldata.size
        mem[_108 + 32 len cd[(arg2 + cd[idx] + 36)]] = call.data[arg2 + cd[idx] + 68 len cd[(arg2 + cd[idx] + 36)]]
        mem[_108 + cd[(arg2 + cd[idx] + 36)] + 32] = 0
        mem[s] = _108
        idx = idx + 32
        s = s + 32
        continue 
    _106 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _107 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _106) + 32
    if not _106:
        _157 = mem[96]
        idx = 0
        while idx < _157:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _160 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 'NH{q', 50
            _163 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
            if stor0 == 2:
                revert with 0, 'denied'
            stor0 = 2
            _167 = mem[64]
            _175 = mem[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]]
            s = 0
            while s < _175:
                mem[s + _167] = mem[s + _163 + 32]
                _157 = mem[96]
                s = s + 32
                continue 
            if ceil32(_175) <= _175:
                call address(_160).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _175 + _167 + -mem[64] - 4]
                if not return_data.size:
                    stor0 = 1
                    if idx >= mem[_107]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _107 + 32] = 96
                else:
                    _218 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_218] = return_data.size
                    mem[_218 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    stor0 = 1
                    if idx >= mem[_107]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _107 + 32] = _218
            else:
                mem[_167 + _175] = 0
                call address(_160).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _175 + _167 + -mem[64] - 4]
                if not return_data.size:
                    stor0 = 1
                    if idx >= mem[_107]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _107 + 32] = 96
                else:
                    _224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_224] = return_data.size
                    mem[_224 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    stor0 = 1
                    if idx >= mem[_107]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _107 + 32] = _224
            if idx == -1:
                revert with 'NH{q', 17
            _157 = mem[96]
            idx = idx + 1
            continue 
        _159 = mem[64]
        mem[mem[64]] = 32
        _162 = mem[_107]
        mem[mem[64] + 32] = mem[_107]
        idx = 0
        s = _107 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _162) + 64
        while idx < _162:
            mem[t] = u + -_159 - 64
            _206 = mem[s]
            _210 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _210:
                mem[v + u + 32] = mem[v + _206 + 32]
                v = v + 32
                continue 
            if ceil32(_210) > _210:
                mem[u + _210 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_210) + u + 32
            continue 
    else:
        mem[_107 + 32] = 96
        s = _107 + 32
        idx = _106
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _205 = mem[96]
        idx = 0
        while idx < _205:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _212 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 'NH{q', 50
            _215 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
            if stor0 == 2:
                revert with 0, 'denied'
            stor0 = 2
            _221 = mem[64]
            _227 = mem[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]]
            s = 0
            while s < _227:
                mem[s + _221] = mem[s + _215 + 32]
                _205 = mem[96]
                s = s + 32
                continue 
            if ceil32(_227) <= _227:
                call address(_212).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _227 + _221 + -mem[64] - 4]
                if not return_data.size:
                    stor0 = 1
                    if idx >= mem[_107]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _107 + 32] = 96
                else:
                    _249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_249] = return_data.size
                    mem[_249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    stor0 = 1
                    if idx >= mem[_107]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _107 + 32] = _249
            else:
                mem[_221 + _227] = 0
                call address(_212).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _227 + _221 + -mem[64] - 4]
                if not return_data.size:
                    stor0 = 1
                    if idx >= mem[_107]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _107 + 32] = 96
                else:
                    _251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_251] = return_data.size
                    mem[_251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    stor0 = 1
                    if idx >= mem[_107]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _107 + 32] = _251
            if idx == -1:
                revert with 'NH{q', 17
            _205 = mem[96]
            idx = idx + 1
            continue 
        _211 = mem[64]
        mem[mem[64]] = 32
        _214 = mem[_107]
        mem[mem[64] + 32] = mem[_107]
        idx = 0
        s = _107 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _214) + 64
        while idx < _214:
            mem[t] = u + -_211 - 64
            _243 = mem[s]
            _246 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _246:
                mem[v + u + 32] = mem[v + _243 + 32]
                v = v + 32
                continue 
            if ceil32(_246) > _246:
                mem[u + _246 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_246) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
