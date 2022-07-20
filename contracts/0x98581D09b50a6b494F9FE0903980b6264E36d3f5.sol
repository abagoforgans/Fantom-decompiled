contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp

const getLastBlockHash = block.hash(block.number - 1)

const getBlockNumber = block.number

const getCurrentBlockDifficulty = block.difficulty

const getCurrentBlockGasLimit = block.gas_limit

const getCurrentBlockCoinbase = block.coinbase


function _fallback() payable {
    revert
}

function getBlockHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return block.hash(arg1)
}

function getEthBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function sub_14977fa2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require calldata.size + -cd[4] + -cd[s] - 36 >= 96
        _71 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[(cd[4] + cd[s] + 36)] == address(cd[(cd[4] + cd[s] + 36)])
        mem[_71] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] <= test266151307()
        require calldata.size > cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 67
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _94 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)])) + 1
        mem[_94] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_94 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]]
        mem[_94 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_71 + 32] = _94
        mem[_71 + 64] = cd[(cd[4] + cd[s] + 100)]
        mem[t] = _71
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _70 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _72 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _70) + 32
    if not _70:
        _138 = mem[96]
        idx = 0
        while idx < _138:
            if idx >= mem[96]:
                revert with 0, 50
            _142 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _145 = mem[mem[(32 * idx) + 128] + 32]
            _146 = mem[64]
            _149 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while cd[4] + (32 * ('cd', 4).length) + 36 < _149:
                mem[cd[4] + (32 * ('cd', 4).length) + _146 + 36] = mem[cd[4] + (32 * ('cd', 4).length) + _145 + 68]
                _138 = mem[96]
                s = cd[4] + (32 * ('cd', 4).length) + 68
                continue 
            if cd[4] + (32 * ('cd', 4).length) + 36 <= _149:
                call address(_142).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _149 + _146 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_219] = return_data.size
                    mem[_219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = _219
            else:
                mem[_146 + _149] = 0
                call address(_142).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _149 + _146 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _221 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_221] = return_data.size
                    mem[_221 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = _221
            if idx == -1:
                revert with 0, 17
            _138 = mem[96]
            idx = idx + 1
            continue 
        _140 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _148 = mem[_72]
        mem[mem[64] + 64] = mem[_72]
        idx = 0
        s = _72 + 32
        t = mem[64] + (32 * _148) + 96
        u = mem[64] + 96
        while idx < _148:
            mem[u] = t + -_140 - 96
            _203 = mem[s]
            _206 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _206:
                mem[v + t + 32] = mem[v + _203 + 32]
                v = v + 32
                continue 
            if ceil32(_206) > _206:
                mem[t + _206 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_206) + t + 32
            u = u + 32
            continue 
    else:
        mem[_72 + 32] = 96
        s = _72 + 32
        idx = _70
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _202 = mem[96]
        idx = 0
        while idx < _202:
            if idx >= mem[96]:
                revert with 0, 50
            _209 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _213 = mem[mem[(32 * idx) + 128] + 32]
            _214 = mem[64]
            _217 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _217:
                mem[s + _214] = mem[s + _213 + 32]
                _202 = mem[96]
                s = s + 32
                continue 
            if ceil32(_217) <= _217:
                call address(_209).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _217 + _214 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_262] = return_data.size
                    mem[_262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = _262
            else:
                mem[_214 + _217] = 0
                call address(_209).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _217 + _214 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_264] = return_data.size
                    mem[_264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = _264
            if idx == -1:
                revert with 0, 17
            _202 = mem[96]
            idx = idx + 1
            continue 
        _207 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _216 = mem[_72]
        mem[mem[64] + 64] = mem[_72]
        idx = 0
        s = _72 + 32
        t = mem[64] + (32 * _216) + 96
        u = mem[64] + 96
        while idx < _216:
            mem[u] = t + -_207 - 96
            _256 = mem[s]
            _258 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _258:
                mem[v + t + 32] = mem[v + _256 + 32]
                v = v + 32
                continue 
            if ceil32(_258) > _258:
                mem[t + _258 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_258) + t + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_5f7bf046(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require calldata.size + -cd[4] + -cd[s] - 36 >= 96
        _67 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[(cd[4] + cd[s] + 36)] == address(cd[(cd[4] + cd[s] + 36)])
        mem[_67] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] <= test266151307()
        require calldata.size > cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 67
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _92 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)])) + 1
        mem[_92] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_92 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]]
        mem[_92 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_67 + 32] = _92
        mem[_67 + 64] = cd[(cd[4] + cd[s] + 100)]
        mem[t] = _67
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _66 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _68 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _66) + 32
    if not _66:
        _130 = mem[96]
        idx = 0
        while idx < _130:
            if idx >= mem[96]:
                revert with 0, 50
            _134 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _138 = mem[mem[(32 * idx) + 128] + 32]
            _139 = mem[64]
            _141 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while cd[4] + (32 * ('cd', 4).length) + 36 < _141:
                mem[cd[4] + (32 * ('cd', 4).length) + _139 + 36] = mem[cd[4] + (32 * ('cd', 4).length) + _138 + 68]
                _130 = mem[96]
                s = cd[4] + (32 * ('cd', 4).length) + 68
                continue 
            if cd[4] + (32 * ('cd', 4).length) + 36 <= _141:
                call address(_134).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _141 + _139 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_68]:
                        revert with 0, 50
                    mem[(32 * idx) + _68 + 32] = 96
                else:
                    _207 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_207] = return_data.size
                    mem[_207 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_68]:
                        revert with 0, 50
                    mem[(32 * idx) + _68 + 32] = _207
            else:
                mem[_139 + _141] = 0
                call address(_134).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _141 + _139 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_68]:
                        revert with 0, 50
                    mem[(32 * idx) + _68 + 32] = 96
                else:
                    _213 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_213] = return_data.size
                    mem[_213 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_68]:
                        revert with 0, 50
                    mem[(32 * idx) + _68 + 32] = _213
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = bool(ext_call.success)
            if idx == -1:
                revert with 0, 17
            _130 = mem[96]
            idx = idx + 1
            continue 
        _132 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 96
        _136 = mem[96]
        mem[mem[64] + 96] = mem[96]
        s = 0
        t = mem[64] + 128
        u = 128
        while s < _136:
            mem[t] = bool(mem[u])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 64] = (32 * _136) + 128
        _194 = mem[_68]
        mem[_132 + (32 * _136) + 128] = mem[_68]
        s = 0
        t = _68 + 32
        u = _132 + (32 * _136) + (32 * _194) + 160
        v = _132 + (32 * _136) + 160
        while s < _194:
            mem[v] = u + -_132 + -(32 * _136) - 160
            _239 = mem[t]
            _242 = mem[mem[t]]
            mem[u] = mem[mem[t]]
            idx = 0
            while idx < _242:
                mem[idx + u + 32] = mem[idx + _239 + 32]
                idx = idx + 32
                continue 
            if ceil32(_242) > _242:
                mem[u + _242 + 32] = 0
            s = s + 1
            t = t + 32
            u = ceil32(_242) + u + 32
            v = v + 32
            continue 
    else:
        mem[_68 + 32] = 96
        s = _68 + 32
        idx = _66
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _190 = mem[96]
        idx = 0
        while idx < _190:
            if idx >= mem[96]:
                revert with 0, 50
            _197 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _201 = mem[mem[(32 * idx) + 128] + 32]
            _202 = mem[64]
            _205 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _205:
                mem[s + _202] = mem[s + _201 + 32]
                _190 = mem[96]
                s = s + 32
                continue 
            if ceil32(_205) <= _205:
                call address(_197).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _205 + _202 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_68]:
                        revert with 0, 50
                    mem[(32 * idx) + _68 + 32] = 96
                else:
                    _249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_249] = return_data.size
                    mem[_249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_68]:
                        revert with 0, 50
                    mem[(32 * idx) + _68 + 32] = _249
            else:
                mem[_202 + _205] = 0
                call address(_197).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _205 + _202 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_68]:
                        revert with 0, 50
                    mem[(32 * idx) + _68 + 32] = 96
                else:
                    _254 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_254] = return_data.size
                    mem[_254 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_68]:
                        revert with 0, 50
                    mem[(32 * idx) + _68 + 32] = _254
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = bool(ext_call.success)
            if idx == -1:
                revert with 0, 17
            _190 = mem[96]
            idx = idx + 1
            continue 
        _195 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 96
        _199 = mem[96]
        mem[mem[64] + 96] = mem[96]
        s = 0
        t = mem[64] + 128
        u = 128
        while s < _199:
            mem[t] = bool(mem[u])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_195 + 64] = (32 * _199) + 128
        _243 = mem[_68]
        mem[_195 + (32 * _199) + 128] = mem[_68]
        s = 0
        t = _68 + 32
        u = _195 + (32 * _199) + (32 * _243) + 160
        v = _195 + (32 * _199) + 160
        while s < _243:
            mem[v] = u + -_195 + -(32 * _199) - 160
            _263 = mem[t]
            _264 = mem[mem[t]]
            mem[u] = mem[mem[t]]
            idx = 0
            while idx < _264:
                mem[idx + u + 32] = mem[idx + _263 + 32]
                idx = idx + 32
                continue 
            if ceil32(_264) > _264:
                mem[u + _264 + 32] = 0
            s = s + 1
            t = t + 32
            u = ceil32(_264) + u + 32
            v = v + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_6508f11b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require calldata.size + -cd[4] + -cd[s] - 36 >= 96
        _89 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[(cd[4] + cd[s] + 36)] == address(cd[(cd[4] + cd[s] + 36)])
        mem[_89] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] <= test266151307()
        require calldata.size > cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 67
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _107 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)])) + 1
        mem[_107] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_107 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]]
        mem[_107 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_89 + 32] = _107
        mem[_89 + 64] = cd[(cd[4] + cd[s] + 100)]
        mem[t] = _89
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _90 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _91 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _90) + 32
    if not _90:
        _176 = mem[96]
        idx = 0
        while idx < _176:
            if idx >= mem[96]:
                revert with 0, 50
            _180 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _183 = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 0, 50
            _188 = mem[mem[(32 * idx) + 128] + 32]
            _189 = mem[64]
            _191 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _191:
                mem[s + _189] = mem[s + _188 + 32]
                _176 = mem[96]
                s = s + 32
                continue 
            if ceil32(_191) <= _191:
                call address(_180).mem[mem[64] len 4] with:
                   value _183 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _191 + _189 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _284 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_284] = bool(ext_call.success)
                    mem[_284 + 32] = 96
                    if idx >= mem[_91]:
                        revert with 0, 50
                    mem[(32 * idx) + _91 + 32] = _284
                else:
                    _279 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_279] = return_data.size
                    mem[_279 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_287] = bool(ext_call.success)
                    mem[_287 + 32] = _279
                    if idx >= mem[_91]:
                        revert with 0, 50
                    mem[(32 * idx) + _91 + 32] = _287
            else:
                mem[_189 + _191] = 0
                call address(_180).mem[mem[64] len 4] with:
                   value _183 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _191 + _189 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _296 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_296] = bool(ext_call.success)
                    mem[_296 + 32] = 96
                    if idx >= mem[_91]:
                        revert with 0, 50
                    mem[(32 * idx) + _91 + 32] = _296
                else:
                    _282 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_282] = return_data.size
                    mem[_282 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _299 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_299] = bool(ext_call.success)
                    mem[_299 + 32] = _282
                    if idx >= mem[_91]:
                        revert with 0, 50
                    mem[(32 * idx) + _91 + 32] = _299
            if idx == -1:
                revert with 0, 17
            _176 = mem[96]
            idx = idx + 1
            continue 
        _186 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _195 = mem[_91]
        mem[mem[64] + 96] = mem[_91]
        idx = 0
        s = _91 + 32
        t = mem[64] + (32 * _195) + 128
        u = mem[64] + 128
        while idx < _195:
            mem[u] = t + -_186 - 128
            _260 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _262 = mem[_260 + 32]
            mem[t + 32] = 64
            _265 = mem[_262]
            mem[t + 64] = mem[_262]
            v = 0
            while v < _265:
                mem[v + t + 96] = mem[v + _262 + 32]
                v = v + 32
                continue 
            if ceil32(_265) > _265:
                mem[t + _265 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_265) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = _91 + (32 * _90) + 96
        mem[_91 + (32 * _90) + 32] = 0
        mem[_91 + (32 * _90) + 64] = 96
        mem[_91 + 32] = _91 + (32 * _90) + 32
        s = _91 + 32
        idx = _90
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_91 + (32 * _90) + 32] = 0
            mem[_91 + (32 * _90) + 64] = 96
            mem[s + 32] = _91 + (32 * _90) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _259 = mem[96]
        idx = 0
        while idx < _259:
            if idx >= mem[96]:
                revert with 0, 50
            _267 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _271 = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 0, 50
            _276 = mem[mem[(32 * idx) + 128] + 32]
            _277 = mem[64]
            _281 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _281:
                mem[s + _277] = mem[s + _276 + 32]
                _259 = mem[96]
                s = s + 32
                continue 
            if ceil32(_281) <= _281:
                call address(_267).mem[mem[64] len 4] with:
                   value _271 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _281 + _277 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _339 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_339] = bool(ext_call.success)
                    mem[_339 + 32] = 96
                    if idx >= mem[_91]:
                        revert with 0, 50
                    mem[(32 * idx) + _91 + 32] = _339
                else:
                    _336 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_336] = return_data.size
                    mem[_336 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_342] = bool(ext_call.success)
                    mem[_342 + 32] = _336
                    if idx >= mem[_91]:
                        revert with 0, 50
                    mem[(32 * idx) + _91 + 32] = _342
            else:
                mem[_277 + _281] = 0
                call address(_267).mem[mem[64] len 4] with:
                   value _271 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _281 + _277 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _347 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_347] = bool(ext_call.success)
                    mem[_347 + 32] = 96
                    if idx >= mem[_91]:
                        revert with 0, 50
                    mem[(32 * idx) + _91 + 32] = _347
                else:
                    _338 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_338] = return_data.size
                    mem[_338 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _350 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_350] = bool(ext_call.success)
                    mem[_350 + 32] = _338
                    if idx >= mem[_91]:
                        revert with 0, 50
                    mem[(32 * idx) + _91 + 32] = _350
            if idx == -1:
                revert with 0, 17
            _259 = mem[96]
            idx = idx + 1
            continue 
        _274 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _283 = mem[_91]
        mem[mem[64] + 96] = mem[_91]
        idx = 0
        s = _91 + 32
        t = mem[64] + (32 * _283) + 128
        u = mem[64] + 128
        while idx < _283:
            mem[u] = t + -_274 - 128
            _328 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _330 = mem[_328 + 32]
            mem[t + 32] = 64
            _332 = mem[_330]
            mem[t + 64] = mem[_330]
            v = 0
            while v < _332:
                mem[v + t + 96] = mem[v + _330 + 32]
                v = v + 32
                continue 
            if ceil32(_332) > _332:
                mem[t + _332 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_332) + t + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_2adcd7af(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == bool(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require calldata.size + -cd[36] + -cd[s] - 36 >= 96
        _106 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[(cd[36] + cd[s] + 36)] == address(cd[(cd[36] + cd[s] + 36)])
        mem[_106] = cd[(cd[36] + cd[s] + 36)]
        require cd[(cd[36] + cd[s] + 68)] <= test266151307()
        require calldata.size > cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 67
        if cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _135 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)])) + 1
        mem[_135] = cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_135 + 32 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]] = call.data[cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 68 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]]
        mem[_135 + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_106 + 32] = _135
        mem[_106 + 64] = cd[(cd[36] + cd[s] + 100)]
        mem[t] = _106
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _105 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _107 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _105) + 32
    if not _105:
        _208 = mem[96]
        idx = 0
        while idx < _208:
            if idx >= mem[96]:
                revert with 0, 50
            _213 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _216 = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 0, 50
            _221 = mem[mem[(32 * idx) + 128] + 32]
            _222 = mem[64]
            _224 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _224:
                mem[s + _222] = mem[s + _221 + 32]
                _208 = mem[96]
                s = s + 32
                continue 
            if ceil32(_224) <= _224:
                call address(_213).mem[mem[64] len 4] with:
                   value _216 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _224 + _222 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _335 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_335] = bool(ext_call.success)
                        mem[_335 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _335
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _340 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_340] = bool(ext_call.success)
                        mem[_340 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _340
                else:
                    _328 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_328] = return_data.size
                    mem[_328 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _337 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_337] = bool(ext_call.success)
                        mem[_337 + 32] = _328
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _337
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _343 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_343] = bool(ext_call.success)
                        mem[_343 + 32] = _328
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _343
            else:
                mem[_222 + _224] = 0
                call address(_213).mem[mem[64] len 4] with:
                   value _216 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _224 + _222 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _346 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_346] = bool(ext_call.success)
                        mem[_346 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _346
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _354 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_354] = bool(ext_call.success)
                        mem[_354 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _354
                else:
                    _331 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_331] = return_data.size
                    mem[_331 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _348 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_348] = bool(ext_call.success)
                        mem[_348 + 32] = _331
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _348
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_357] = bool(ext_call.success)
                        mem[_357 + 32] = _331
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _357
            if idx == -1:
                revert with 0, 17
            _208 = mem[96]
            idx = idx + 1
            continue 
        _211 = mem[64]
        mem[mem[64]] = 32
        _219 = mem[_107]
        mem[mem[64] + 32] = mem[_107]
        idx = 0
        s = _107 + 32
        t = mem[64] + (32 * _219) + 64
        u = mem[64] + 64
        while idx < _219:
            mem[u] = t + -_211 - 64
            _308 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _310 = mem[_308 + 32]
            mem[t + 32] = 64
            _313 = mem[_310]
            mem[t + 64] = mem[_310]
            v = 0
            while v < _313:
                mem[v + t + 96] = mem[v + _310 + 32]
                v = v + 32
                continue 
            if ceil32(_313) > _313:
                mem[t + _313 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_313) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = _107 + (32 * _105) + 96
        mem[_107 + (32 * _105) + 32] = 0
        mem[_107 + (32 * _105) + 64] = 96
        mem[_107 + 32] = _107 + (32 * _105) + 32
        s = _107 + 32
        idx = _105
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_107 + (32 * _105) + 32] = 0
            mem[_107 + (32 * _105) + 64] = 96
            mem[s + 32] = _107 + (32 * _105) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _307 = mem[96]
        idx = 0
        while idx < _307:
            if idx >= mem[96]:
                revert with 0, 50
            _316 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _320 = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 0, 50
            _325 = mem[mem[(32 * idx) + 128] + 32]
            _326 = mem[64]
            _330 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _330:
                mem[s + _326] = mem[s + _325 + 32]
                _307 = mem[96]
                s = s + 32
                continue 
            if ceil32(_330) <= _330:
                call address(_316).mem[mem[64] len 4] with:
                   value _320 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _330 + _326 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _403 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_403] = bool(ext_call.success)
                        mem[_403 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _403
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _407 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_407] = bool(ext_call.success)
                        mem[_407 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _407
                else:
                    _400 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_400] = return_data.size
                    mem[_400 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _405 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_405] = bool(ext_call.success)
                        mem[_405 + 32] = _400
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _405
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _410 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_410] = bool(ext_call.success)
                        mem[_410 + 32] = _400
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _410
            else:
                mem[_326 + _330] = 0
                call address(_316).mem[mem[64] len 4] with:
                   value _320 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _330 + _326 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _413 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_413] = bool(ext_call.success)
                        mem[_413 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _413
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _419 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_419] = bool(ext_call.success)
                        mem[_419 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _419
                else:
                    _402 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_402] = return_data.size
                    mem[_402 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _415 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_415] = bool(ext_call.success)
                        mem[_415 + 32] = _402
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _415
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _422 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_422] = bool(ext_call.success)
                        mem[_422 + 32] = _402
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _422
            if idx == -1:
                revert with 0, 17
            _307 = mem[96]
            idx = idx + 1
            continue 
        _314 = mem[64]
        mem[mem[64]] = 32
        _323 = mem[_107]
        mem[mem[64] + 32] = mem[_107]
        idx = 0
        s = _107 + 32
        t = mem[64] + (32 * _323) + 64
        u = mem[64] + 64
        while idx < _323:
            mem[u] = t + -_314 - 64
            _392 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _394 = mem[_392 + 32]
            mem[t + 32] = 64
            _396 = mem[_394]
            mem[t + 64] = mem[_394]
            v = 0
            while v < _396:
                mem[v + t + 96] = mem[v + _394 + 32]
                v = v + 32
                continue 
            if ceil32(_396) > _396:
                mem[t + _396 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_396) + t + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_0b6c7e49(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == bool(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require calldata.size + -cd[36] + -cd[s] - 36 >= 96
        _105 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[(cd[36] + cd[s] + 36)] == address(cd[(cd[36] + cd[s] + 36)])
        mem[_105] = cd[(cd[36] + cd[s] + 36)]
        require cd[(cd[36] + cd[s] + 68)] <= test266151307()
        require calldata.size > cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 67
        if cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _128 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)])) + 1
        mem[_128] = cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_128 + 32 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]] = call.data[cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 68 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]]
        mem[_128 + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_105 + 32] = _128
        mem[_105 + 64] = cd[(cd[36] + cd[s] + 100)]
        mem[t] = _105
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _106 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _107 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _106) + 32
    if not _106:
        _208 = mem[96]
        idx = 0
        while idx < _208:
            if idx >= mem[96]:
                revert with 0, 50
            _212 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _216 = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 0, 50
            _220 = mem[mem[(32 * idx) + 128] + 32]
            _221 = mem[64]
            _224 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _224:
                mem[s + _221] = mem[s + _220 + 32]
                _208 = mem[96]
                s = s + 32
                continue 
            if ceil32(_224) <= _224:
                call address(_212).mem[mem[64] len 4] with:
                   value _216 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _224 + _221 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _332 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_332] = bool(ext_call.success)
                        mem[_332 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _332
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _339 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_339] = bool(ext_call.success)
                        mem[_339 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _339
                else:
                    _327 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_327] = return_data.size
                    mem[_327 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _334 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_334] = bool(ext_call.success)
                        mem[_334 + 32] = _327
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _334
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _342 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_342] = bool(ext_call.success)
                        mem[_342 + 32] = _327
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _342
            else:
                mem[_221 + _224] = 0
                call address(_212).mem[mem[64] len 4] with:
                   value _216 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _224 + _221 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_345] = bool(ext_call.success)
                        mem[_345 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _345
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _353 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_353] = bool(ext_call.success)
                        mem[_353 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _353
                else:
                    _331 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_331] = return_data.size
                    mem[_331 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _347 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_347] = bool(ext_call.success)
                        mem[_347 + 32] = _331
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _347
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _356 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_356] = bool(ext_call.success)
                        mem[_356 + 32] = _331
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _356
            if idx == -1:
                revert with 0, 17
            _208 = mem[96]
            idx = idx + 1
            continue 
        _214 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _223 = mem[_107]
        mem[mem[64] + 96] = mem[_107]
        idx = 0
        s = _107 + 32
        t = mem[64] + (32 * _223) + 128
        u = mem[64] + 128
        while idx < _223:
            mem[u] = t + -_214 - 128
            _308 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _310 = mem[_308 + 32]
            mem[t + 32] = 64
            _313 = mem[_310]
            mem[t + 64] = mem[_310]
            v = 0
            while v < _313:
                mem[v + t + 96] = mem[v + _310 + 32]
                v = v + 32
                continue 
            if ceil32(_313) > _313:
                mem[t + _313 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_313) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = _107 + (32 * _106) + 96
        mem[_107 + (32 * _106) + 32] = 0
        mem[_107 + (32 * _106) + 64] = 96
        mem[_107 + 32] = _107 + (32 * _106) + 32
        s = _107 + 32
        idx = _106
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_107 + (32 * _106) + 32] = 0
            mem[_107 + (32 * _106) + 64] = 96
            mem[s + 32] = _107 + (32 * _106) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _307 = mem[96]
        idx = 0
        while idx < _307:
            if idx >= mem[96]:
                revert with 0, 50
            _315 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _320 = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 0, 50
            _324 = mem[mem[(32 * idx) + 128] + 32]
            _325 = mem[64]
            _330 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _330:
                mem[s + _325] = mem[s + _324 + 32]
                _307 = mem[96]
                s = s + 32
                continue 
            if ceil32(_330) <= _330:
                call address(_315).mem[mem[64] len 4] with:
                   value _320 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _330 + _325 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _403 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_403] = bool(ext_call.success)
                        mem[_403 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _403
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _407 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_407] = bool(ext_call.success)
                        mem[_407 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _407
                else:
                    _400 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_400] = return_data.size
                    mem[_400 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _405 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_405] = bool(ext_call.success)
                        mem[_405 + 32] = _400
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _405
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _410 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_410] = bool(ext_call.success)
                        mem[_410 + 32] = _400
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _410
            else:
                mem[_325 + _330] = 0
                call address(_315).mem[mem[64] len 4] with:
                   value _320 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _330 + _325 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _413 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_413] = bool(ext_call.success)
                        mem[_413 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _413
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _419 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_419] = bool(ext_call.success)
                        mem[_419 + 32] = 96
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _419
                else:
                    _402 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_402] = return_data.size
                    mem[_402 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _415 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_415] = bool(ext_call.success)
                        mem[_415 + 32] = _402
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _415
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _422 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_422] = bool(ext_call.success)
                        mem[_422 + 32] = _402
                        if idx >= mem[_107]:
                            revert with 0, 50
                        mem[(32 * idx) + _107 + 32] = _422
            if idx == -1:
                revert with 0, 17
            _307 = mem[96]
            idx = idx + 1
            continue 
        _318 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _329 = mem[_107]
        mem[mem[64] + 96] = mem[_107]
        idx = 0
        s = _107 + 32
        t = mem[64] + (32 * _329) + 128
        u = mem[64] + 128
        while idx < _329:
            mem[u] = t + -_318 - 128
            _392 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _394 = mem[_392 + 32]
            mem[t + 32] = 64
            _396 = mem[_394]
            mem[t + 64] = mem[_394]
            v = 0
            while v < _396:
                mem[v + t + 96] = mem[v + _394 + 32]
                v = v + 32
                continue 
            if ceil32(_396) > _396:
                mem[t + _396 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_396) + t + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
