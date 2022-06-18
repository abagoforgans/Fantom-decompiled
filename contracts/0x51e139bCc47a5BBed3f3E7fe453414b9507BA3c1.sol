contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function multicall(bytes[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
            delegate 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb with:
                 gas gas_remaining wei
                args call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                require delegate.return_code
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 96
            else:
                _35 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_35] = return_data.size
                mem[_35 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require delegate.return_code
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _35
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = 32
        _25 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _25:
            mem[u] = t + -_24 - 64
            _46 = mem[s]
            _49 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _49:
                mem[t + v + 32] = mem[_46 + v + 32]
                v = v + 32
                continue 
            if ceil32(_49) > _49:
                mem[t + _49 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_49) + 32
            u = u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg1.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
            delegate 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb with:
                 gas gas_remaining wei
                args call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                require delegate.return_code
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 96
            else:
                _57 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_57] = return_data.size
                mem[_57 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require delegate.return_code
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _57
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _47 = mem[64]
        mem[mem[64]] = 32
        _50 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _50:
            mem[u] = t + -_47 - 64
            _62 = mem[s]
            _64 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _64:
                mem[t + v + 32] = mem[_62 + v + 32]
                v = v + 32
                continue 
            if ceil32(_64) > _64:
                mem[t + _64 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_64) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
