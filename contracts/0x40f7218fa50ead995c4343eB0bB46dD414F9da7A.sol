contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp

const getLastBlockHash = block.hash(block.number - 1)

const getCurrentBlockDifficulty = block.difficulty

const getCurrentBlockGasLimit = block.gas_limit

const getCurrentBlockCoinbase = address(block.coinbase)


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

function aggregate(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _71 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_71] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _99 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_99] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_99 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_99 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_71 + 32] = _99
        mem[t] = _71
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _70 = mem[96]
    require mem[96] <= test266151307()
    _72 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _70) + 32
    if not _70:
        _138 = mem[96]
        idx = 0
        while idx < _138:
            require idx < mem[96]
            _142 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _146 = mem[mem[(32 * idx) + 128] + 32]
            _147 = mem[64]
            _149 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _149:
                mem[s + _147] = mem[s + _146 + 32]
                _138 = mem[96]
                s = s + 32
                continue 
            if ceil32(_149) <= _149:
                call address(_142).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _149 + _147 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'CALL_FAILED'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_219] = return_data.size
                    mem[_219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'CALL_FAILED'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = _219
            else:
                mem[_147 + _149] = 0
                call address(_142).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _149 + _147 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'CALL_FAILED'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _223 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_223] = return_data.size
                    mem[_223 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'CALL_FAILED'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = _223
            _138 = mem[96]
            idx = idx + 1
            continue 
        _140 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _144 = mem[_72]
        mem[mem[64] + 64] = mem[_72]
        idx = 0
        s = _72 + 32
        t = mem[64] + 96
        u = mem[64] + (32 * _144) + 96
        while idx < _144:
            mem[t] = u + -_140 - 96
            _203 = mem[s]
            _204 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while arg1.length < _204:
                mem[arg1.length + u + 32] = mem[arg1.length + _203 + 32]
                v = arg1.length + 32
                continue 
            if arg1.length > _204:
                mem[u + _204 + 32] = 0
            v = v + 1
            s = s + 32
            t = t + 32
            u = ceil32(_204) + u + 32
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
            require idx < mem[96]
            _210 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _214 = mem[mem[(32 * idx) + 128] + 32]
            _215 = mem[64]
            _218 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _218:
                mem[s + _215] = mem[s + _214 + 32]
                _202 = mem[96]
                s = s + 32
                continue 
            if ceil32(_218) <= _218:
                call address(_210).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _218 + _215 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'CALL_FAILED'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_262] = return_data.size
                    mem[_262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'CALL_FAILED'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = _262
            else:
                mem[_215 + _218] = 0
                call address(_210).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _218 + _215 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'CALL_FAILED'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_264] = return_data.size
                    mem[_264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'CALL_FAILED'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = _264
            _202 = mem[96]
            idx = idx + 1
            continue 
        _208 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _212 = mem[_72]
        mem[mem[64] + 64] = mem[_72]
        idx = 0
        s = _72 + 32
        t = mem[64] + 96
        u = mem[64] + (32 * _212) + 96
        while idx < _212:
            mem[t] = u + -_208 - 96
            _256 = mem[s]
            _257 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _257:
                mem[v + u + 32] = mem[v + _256 + 32]
                v = v + 32
                continue 
            if ceil32(_257) > _257:
                mem[u + _257 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_257) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
