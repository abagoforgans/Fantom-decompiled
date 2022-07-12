contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp

const getLastBlockHash = block.hash(block.number - 1)

const getBlockNumber = block.number

const getCurrentBlockDifficulty = block.difficulty

const getCurrentBlockGasLimit = block.gas_limit

const getCurrentBlockCoinbase = address(block.coinbase)


function _fallback() payable {
    revert
}

function getBlockHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
        _72 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_72] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _99 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_99] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_99 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + _99 + 32] = 0
        mem[_72 + 32] = _99
        mem[t] = _72
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _70 = mem[96]
    _71 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _70) + 32
    if not _70:
        _138 = mem[96]
        idx = 0
        while idx < _138:
            require idx < mem[96]
            _142 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _145 = mem[mem[(32 * idx) + 128] + 32]
            _146 = mem[64]
            _153 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _153:
                mem[s + _146] = mem[s + _145 + 32]
                _138 = mem[96]
                s = s + 32
                continue 
            if ceil32(_153) <= _153:
                call address(_142).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _153 + _146 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_71]
                    mem[(32 * idx) + _71 + 32] = 96
                else:
                    _216 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_216] = return_data.size
                    mem[_216 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_71]
                    mem[(32 * idx) + _71 + 32] = _216
            else:
                mem[_146 + _153] = 0
                call address(_142).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _153 + _146 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_71]
                    mem[(32 * idx) + _71 + 32] = 96
                else:
                    _219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_219] = return_data.size
                    mem[_219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_71]
                    mem[(32 * idx) + _71 + 32] = _219
            _138 = mem[96]
            idx = idx + 1
            continue 
        _140 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _157 = mem[_71]
        mem[mem[64] + 64] = mem[_71]
        idx = 0
        s = _71 + 32
        t = mem[64] + (32 * _157) + 96
        u = mem[64] + 96
        while idx < _157:
            mem[u] = t + -_140 - 96
            _203 = mem[s]
            _214 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _214:
                mem[v + t + 32] = mem[v + _203 + 32]
                v = v + 32
                continue 
            if ceil32(_214) > _214:
                mem[t + _214 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_214) + 32
            u = u + 32
            continue 
    else:
        mem[_71 + 32] = 96
        s = _71 + 32
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
            _208 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _212 = mem[mem[(32 * idx) + 128] + 32]
            _213 = mem[64]
            _218 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _218:
                mem[s + _213] = mem[s + _212 + 32]
                _202 = mem[96]
                s = s + 32
                continue 
            if ceil32(_218) <= _218:
                call address(_208).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _218 + _213 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_71]
                    mem[(32 * idx) + _71 + 32] = 96
                else:
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_261] = return_data.size
                    mem[_261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_71]
                    mem[(32 * idx) + _71 + 32] = _261
            else:
                mem[_213 + _218] = 0
                call address(_208).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _218 + _213 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_71]
                    mem[(32 * idx) + _71 + 32] = 96
                else:
                    _263 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_263] = return_data.size
                    mem[_263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_71]
                    mem[(32 * idx) + _71 + 32] = _263
            _202 = mem[96]
            idx = idx + 1
            continue 
        _206 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _228 = mem[_71]
        mem[mem[64] + 64] = mem[_71]
        idx = 0
        s = _71 + 32
        t = mem[64] + (32 * _228) + 96
        u = mem[64] + 96
        while idx < _228:
            mem[u] = t + -_206 - 96
            _256 = mem[s]
            _259 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _259:
                mem[v + t + 32] = mem[v + _256 + 32]
                v = v + 32
                continue 
            if ceil32(_259) > _259:
                mem[t + _259 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_259) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function blockAndAggregate(address arg1, bytes[] arg2) payable {
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
        _83 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_83] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _108 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_108] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_108 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + _108 + 32] = 0
        mem[_83 + 32] = _108
        mem[t] = _83
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _84 = mem[96]
    _85 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _84) + 32
    if not _84:
        _164 = mem[96]
        idx = 0
        while idx < _164:
            require idx < mem[96]
            _168 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _171 = mem[mem[(32 * idx) + 128] + 32]
            _172 = mem[64]
            _175 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _175:
                mem[s + _172] = mem[s + _171 + 32]
                _164 = mem[96]
                s = s + 32
                continue 
            if ceil32(_175) <= _175:
                call address(_168).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _175 + _172 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_261] = bool(ext_call.success)
                    mem[_261 + 32] = 96
                    require idx < mem[_85]
                    mem[(32 * idx) + _85 + 32] = _261
                else:
                    _249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_249] = return_data.size
                    mem[_249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_264] = bool(ext_call.success)
                    mem[_264 + 32] = _249
                    require idx < mem[_85]
                    mem[(32 * idx) + _85 + 32] = _264
            else:
                mem[_172 + _175] = 0
                call address(_168).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _175 + _172 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _267 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_267] = bool(ext_call.success)
                    mem[_267 + 32] = 96
                    require idx < mem[_85]
                    mem[(32 * idx) + _85 + 32] = _267
                else:
                    _255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_255] = return_data.size
                    mem[_255 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_270] = bool(ext_call.success)
                    mem[_270 + 32] = _255
                    require idx < mem[_85]
                    mem[(32 * idx) + _85 + 32] = _270
            _164 = mem[96]
            idx = idx + 1
            continue 
        _173 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _186 = mem[_85]
        mem[mem[64] + 96] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + (32 * _186) + 128
        u = mem[64] + 128
        while idx < _186:
            mem[u] = t + -_173 - 128
            _242 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _254 = mem[_242 + 32]
            mem[t + 32] = 64
            _260 = mem[_254]
            mem[t + 64] = mem[_254]
            v = 0
            while v < _260:
                mem[v + t + 96] = mem[v + _254 + 32]
                v = v + 32
                continue 
            if ceil32(_260) > _260:
                mem[t + _260 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_260) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _85 + (32 * _84) + 96
        mem[_85 + (32 * _84) + 32] = 0
        mem[_85 + (32 * _84) + 64] = 96
        mem[var25001] = _85 + (32 * _84) + 32
        s = var25001
        idx = var25002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_85 + (32 * _84) + 32] = 0
            mem[_85 + (32 * _84) + 64] = 96
            mem[s + 32] = _85 + (32 * _84) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _307 = mem[96]
        idx = 0
        while idx < _307:
            require idx < mem[96]
            _311 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _314 = mem[mem[(32 * idx) + 128] + 32]
            _315 = mem[64]
            _317 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while arg1.length < _317:
                mem[arg1.length + _315] = mem[arg1.length + _314 + 32]
                _307 = mem[96]
                s = arg1.length + 32
                continue 
            if arg1.length <= _317:
                call address(_311).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _317 + _315 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_356] = bool(ext_call.success)
                    mem[_356 + 32] = 96
                    require s < mem[_85]
                    mem[(32 * s) + _85 + 32] = _356
                else:
                    _351 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_351] = return_data.size
                    mem[_351 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _359 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_359] = bool(ext_call.success)
                    mem[_359 + 32] = _351
                    require s < mem[_85]
                    mem[(32 * s) + _85 + 32] = _359
            else:
                mem[_315 + _317] = 0
                call address(_311).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _317 + _315 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _362 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_362] = bool(ext_call.success)
                    mem[_362 + 32] = 96
                    require s < mem[_85]
                    mem[(32 * s) + _85 + 32] = _362
                else:
                    _354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_354] = return_data.size
                    mem[_354 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_365] = bool(ext_call.success)
                    mem[_365 + 32] = _354
                    require s < mem[_85]
                    mem[(32 * s) + _85 + 32] = _365
            _307 = mem[96]
            s = s + 1
            continue 
        _316 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _319 = mem[_85]
        mem[mem[64] + 96] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + (32 * _319) + 128
        u = mem[64] + 128
        while idx < _319:
            mem[u] = t + -_316 - 128
            _346 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _353 = mem[_346 + 32]
            mem[t + 32] = 64
            _355 = mem[_353]
            mem[t + 64] = mem[_353]
            v = 0
            while v < _355:
                mem[v + t + 96] = mem[v + _353 + 32]
                v = v + 32
                continue 
            if ceil32(_355) > _355:
                mem[t + _355 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_355) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function tryAggregate(bool arg1, address arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require calldata.size + -arg2 + -cd[s] - 36 >= 64
        _101 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(arg2 + cd[s] + 36)] == address(cd[(arg2 + cd[s] + 36)])
        mem[_101] = cd[(arg2 + cd[s] + 36)]
        require cd[(arg2 + cd[s] + 68)] <= test266151307()
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] <= test266151307()
        _130 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32
        mem[_130] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_130 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]]
        mem[cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + _130 + 32] = 0
        mem[_101 + 32] = _130
        mem[t] = _101
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _99 = mem[96]
    _100 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _99) + 32
    if not _99:
        _196 = mem[96]
        s = 0
        while arg2.length < _196:
            require arg2.length < mem[96]
            _201 = mem[mem[(32 * arg2.length) + 128]]
            require arg2.length < mem[96]
            _204 = mem[mem[(32 * arg2.length) + 128] + 32]
            _205 = mem[64]
            _208 = mem[mem[mem[(32 * arg2.length) + 128] + 32]]
            idx = 0
            while idx < _208:
                mem[idx + _205] = mem[idx + _204 + 32]
                _196 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_208) <= _208:
                call address(_201).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _208 + _205 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _308 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_308] = bool(ext_call.success)
                        mem[_308 + 32] = 96
                        require arg2.length < mem[_100]
                        mem[(32 * arg2.length) + _100 + 32] = _308
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _313 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_313] = bool(ext_call.success)
                        mem[_313 + 32] = 96
                        require arg2.length < mem[_100]
                        mem[(32 * arg2.length) + _100 + 32] = _313
                else:
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_297] = return_data.size
                    mem[_297 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _310 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_310] = bool(ext_call.success)
                        mem[_310 + 32] = _297
                        require arg2.length < mem[_100]
                        mem[(32 * arg2.length) + _100 + 32] = _310
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _316 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_316] = bool(ext_call.success)
                        mem[_316 + 32] = _297
                        require arg2.length < mem[_100]
                        mem[(32 * arg2.length) + _100 + 32] = _316
            else:
                mem[_205 + _208] = 0
                call address(_201).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _208 + _205 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _319 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_319] = bool(ext_call.success)
                        mem[_319 + 32] = 96
                        require arg2.length < mem[_100]
                        mem[(32 * arg2.length) + _100 + 32] = _319
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _324 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_324] = bool(ext_call.success)
                        mem[_324 + 32] = 96
                        require arg2.length < mem[_100]
                        mem[(32 * arg2.length) + _100 + 32] = _324
                else:
                    _304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_304] = return_data.size
                    mem[_304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _321 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_321] = bool(ext_call.success)
                        mem[_321 + 32] = _304
                        require arg2.length < mem[_100]
                        mem[(32 * arg2.length) + _100 + 32] = _321
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _327 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_327] = bool(ext_call.success)
                        mem[_327 + 32] = _304
                        require arg2.length < mem[_100]
                        mem[(32 * arg2.length) + _100 + 32] = _327
            _196 = mem[96]
            s = arg2.length + 1
            continue 
        _199 = mem[64]
        mem[mem[64]] = 32
        _206 = mem[_100]
        mem[mem[64] + 32] = mem[_100]
        idx = 0
        s = _100 + 32
        t = mem[64] + (32 * _206) + 64
        u = mem[64] + 64
        while idx < _206:
            mem[u] = t + -_199 - 64
            _290 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _303 = mem[_290 + 32]
            mem[t + 32] = 64
            _312 = mem[_303]
            mem[t + 64] = mem[_303]
            v = 0
            while v < _312:
                mem[v + t + 96] = mem[v + _303 + 32]
                v = v + 32
                continue 
            if ceil32(_312) > _312:
                mem[t + _312 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_312) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _100 + (32 * _99) + 96
        mem[_100 + (32 * _99) + 32] = 0
        mem[_100 + (32 * _99) + 64] = 96
        mem[var30001] = _100 + (32 * _99) + 32
        s = var30001
        idx = var30002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_100 + (32 * _99) + 32] = 0
            mem[_100 + (32 * _99) + 64] = 96
            mem[s + 32] = _100 + (32 * _99) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _371 = mem[96]
        idx = 0
        while idx < _371:
            require idx < mem[96]
            _376 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _379 = mem[mem[(32 * idx) + 128] + 32]
            _380 = mem[64]
            _382 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _382:
                mem[s + _380] = mem[s + _379 + 32]
                _371 = mem[96]
                s = s + 32
                continue 
            if ceil32(_382) <= _382:
                call address(_376).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _382 + _380 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _427 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_427] = bool(ext_call.success)
                        mem[_427 + 32] = 96
                        require idx < mem[_100]
                        mem[(32 * idx) + _100 + 32] = _427
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _432 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_432] = bool(ext_call.success)
                        mem[_432 + 32] = 96
                        require idx < mem[_100]
                        mem[(32 * idx) + _100 + 32] = _432
                else:
                    _423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_423] = return_data.size
                    mem[_423 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_429] = bool(ext_call.success)
                        mem[_429 + 32] = _423
                        require idx < mem[_100]
                        mem[(32 * idx) + _100 + 32] = _429
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _435 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_435] = bool(ext_call.success)
                        mem[_435 + 32] = _423
                        require idx < mem[_100]
                        mem[(32 * idx) + _100 + 32] = _435
            else:
                mem[_380 + _382] = 0
                call address(_376).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _382 + _380 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_438] = bool(ext_call.success)
                        mem[_438 + 32] = 96
                        require idx < mem[_100]
                        mem[(32 * idx) + _100 + 32] = _438
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _442 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_442] = bool(ext_call.success)
                        mem[_442 + 32] = 96
                        require idx < mem[_100]
                        mem[(32 * idx) + _100 + 32] = _442
                else:
                    _426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_426] = return_data.size
                    mem[_426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_440] = bool(ext_call.success)
                        mem[_440 + 32] = _426
                        require idx < mem[_100]
                        mem[(32 * idx) + _100 + 32] = _440
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _445 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_445] = bool(ext_call.success)
                        mem[_445 + 32] = _426
                        require idx < mem[_100]
                        mem[(32 * idx) + _100 + 32] = _445
            _371 = mem[96]
            idx = idx + 1
            continue 
        _374 = mem[64]
        mem[mem[64]] = 32
        _381 = mem[_100]
        mem[mem[64] + 32] = mem[_100]
        idx = 0
        s = _100 + 32
        t = mem[64] + (32 * _381) + 64
        u = mem[64] + 64
        while idx < _381:
            mem[u] = t + -_374 - 64
            _418 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _425 = mem[_418 + 32]
            mem[t + 32] = 64
            _431 = mem[_425]
            mem[t + 64] = mem[_425]
            v = 0
            while v < _431:
                mem[v + t + 96] = mem[v + _425 + 32]
                v = v + 32
                continue 
            if ceil32(_431) > _431:
                mem[t + _431 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_431) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function tryBlockAndAggregate(bool arg1, address arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require calldata.size + -arg2 + -cd[s] - 36 >= 64
        _99 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(arg2 + cd[s] + 36)] == address(cd[(arg2 + cd[s] + 36)])
        mem[_99] = cd[(arg2 + cd[s] + 36)]
        require cd[(arg2 + cd[s] + 68)] <= test266151307()
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] <= test266151307()
        _125 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32
        mem[_125] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_125 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]]
        mem[cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + _125 + 32] = 0
        mem[_99 + 32] = _125
        mem[t] = _99
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _100 = mem[96]
    _101 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _100) + 32
    if not _100:
        _196 = mem[96]
        idx = 0
        while idx < _196:
            require idx < mem[96]
            _200 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _204 = mem[mem[(32 * idx) + 128] + 32]
            _205 = mem[64]
            _207 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _207:
                mem[s + _205] = mem[s + _204 + 32]
                _196 = mem[96]
                s = s + 32
                continue 
            if ceil32(_207) <= _207:
                call address(_200).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _207 + _205 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _308 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_308] = bool(ext_call.success)
                        mem[_308 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _308
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _313 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_313] = bool(ext_call.success)
                        mem[_313 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _313
                else:
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_297] = return_data.size
                    mem[_297 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _310 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_310] = bool(ext_call.success)
                        mem[_310 + 32] = _297
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _310
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _316 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_316] = bool(ext_call.success)
                        mem[_316 + 32] = _297
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _316
            else:
                mem[_205 + _207] = 0
                call address(_200).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _207 + _205 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _319 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_319] = bool(ext_call.success)
                        mem[_319 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _319
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _323 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_323] = bool(ext_call.success)
                        mem[_323 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _323
                else:
                    _303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_303] = return_data.size
                    mem[_303 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _321 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_321] = bool(ext_call.success)
                        mem[_321 + 32] = _303
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _321
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_326] = bool(ext_call.success)
                        mem[_326 + 32] = _303
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _326
            _196 = mem[96]
            idx = idx + 1
            continue 
        _202 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _218 = mem[_101]
        mem[mem[64] + 96] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + (32 * _218) + 128
        u = mem[64] + 128
        while idx < _218:
            mem[u] = t + -_202 - 128
            _290 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _302 = mem[_290 + 32]
            mem[t + 32] = 64
            _312 = mem[_302]
            mem[t + 64] = mem[_302]
            v = 0
            while v < _312:
                mem[v + t + 96] = mem[v + _302 + 32]
                v = v + 32
                continue 
            if ceil32(_312) > _312:
                mem[t + _312 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_312) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _101 + (32 * _100) + 96
        mem[_101 + (32 * _100) + 32] = 0
        mem[_101 + (32 * _100) + 64] = 96
        mem[var31001] = _101 + (32 * _100) + 32
        s = var31001
        idx = var31002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_101 + (32 * _100) + 32] = 0
            mem[_101 + (32 * _100) + 64] = 96
            mem[s + 32] = _101 + (32 * _100) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _371 = mem[96]
        idx = 0
        while idx < _371:
            require idx < mem[96]
            _375 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _379 = mem[mem[(32 * idx) + 128] + 32]
            _380 = mem[64]
            _381 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _381:
                mem[s + _380] = mem[s + _379 + 32]
                _371 = mem[96]
                s = s + 32
                continue 
            if ceil32(_381) <= _381:
                call address(_375).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _381 + _380 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _427 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_427] = bool(ext_call.success)
                        mem[_427 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _427
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _432 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_432] = bool(ext_call.success)
                        mem[_432 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _432
                else:
                    _423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_423] = return_data.size
                    mem[_423 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_429] = bool(ext_call.success)
                        mem[_429 + 32] = _423
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _429
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _435 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_435] = bool(ext_call.success)
                        mem[_435 + 32] = _423
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _435
            else:
                mem[_380 + _381] = 0
                call address(_375).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _381 + _380 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_438] = bool(ext_call.success)
                        mem[_438 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _438
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _442 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_442] = bool(ext_call.success)
                        mem[_442 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _442
                else:
                    _426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_426] = return_data.size
                    mem[_426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_440] = bool(ext_call.success)
                        mem[_440 + 32] = _426
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _440
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _445 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_445] = bool(ext_call.success)
                        mem[_445 + 32] = _426
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _445
            _371 = mem[96]
            idx = idx + 1
            continue 
        _377 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _383 = mem[_101]
        mem[mem[64] + 96] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + (32 * _383) + 128
        u = mem[64] + 128
        while idx < _383:
            mem[u] = t + -_377 - 128
            _418 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _425 = mem[_418 + 32]
            mem[t + 32] = 64
            _431 = mem[_425]
            mem[t + 64] = mem[_425]
            v = 0
            while v < _431:
                mem[v + t + 96] = mem[v + _425 + 32]
                v = v + 32
                continue 
            if ceil32(_431) > _431:
                mem[t + _431 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_431) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
