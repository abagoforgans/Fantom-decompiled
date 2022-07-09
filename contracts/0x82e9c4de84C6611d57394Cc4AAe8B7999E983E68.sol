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

function aggregate(string arg1, address arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] <= test266151307()
        require calldata.size + -arg1 + -cd[s] - 36 >= 96
        _136 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _163 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)])) + 1
        mem[_163] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)] + 68 <= calldata.size
        mem[_163 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]]
        mem[_163 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)] + 32] = 0
        mem[_136] = _163
        require cd[(arg1 + cd[s] + 68)] == address(cd[(arg1 + cd[s] + 68)])
        mem[_136 + 32] = cd[(arg1 + cd[s] + 68)]
        require cd[(arg1 + cd[s] + 100)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _265 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)])) + 1
        mem[_265] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] + 68 <= calldata.size
        mem[_265 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]]
        mem[_265 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] + 32] = 0
        mem[_136 + 64] = _265
        mem[t] = _136
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _134 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _135 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _134) + 32
    if not _134:
        _266 = mem[96]
        idx = 0
        while idx < _266:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _271 = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _274 = mem[mem[(32 * idx) + 128] + 64]
            _275 = mem[64]
            _277 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            while s < _277:
                mem[_275 + s] = mem[_274 + s + 32]
                _266 = mem[96]
                s = s + 32
                continue 
            if ceil32(_277) <= _277:
                call address(_271).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _275 + _277 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32]] = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32] + 32] = 96
                else:
                    _402 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_402] = return_data.size
                    mem[_402 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32]] = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32] + 32] = _402
            else:
                mem[_275 + _277] = 0
                call address(_271).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _275 + _277 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32]] = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32] + 32] = 96
                else:
                    _408 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_408] = return_data.size
                    mem[_408 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32]] = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32] + 32] = _408
            if idx == -1:
                revert with 'NH{q', 17
            _266 = mem[96]
            idx = idx + 1
            continue 
        _269 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _286 = mem[_135]
        mem[mem[64] + 64] = mem[_135]
        s = 0
        t = _135 + 32
        u = mem[64] + (32 * _286) + 96
        v = mem[64] + 96
        while s < _286:
            mem[v] = u + -_269 - 96
            _394 = mem[t]
            _397 = mem[mem[t]]
            mem[u] = 64
            _399 = mem[_397]
            mem[u + 64] = mem[_397]
            w = 0
            while w < _399:
                mem[u + w + 96] = mem[_397 + w + 32]
                w = w + 32
                continue 
            if ceil32(_399) <= _399:
                _519 = mem[_394 + 32]
                mem[u + 32] = ceil32(_399) + 96
                _522 = mem[_519]
                mem[u + ceil32(_399) + 96] = mem[_519]
                idx = 0
                while idx < _522:
                    mem[u + ceil32(_399) + idx + 128] = mem[_519 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_522) > _522:
                    mem[u + ceil32(_399) + _522 + 128] = 0
                s = s + 1
                t = t + 32
                u = u + ceil32(_399) + ceil32(_522) + 128
                v = v + 32
                continue 
            mem[u + _399 + 96] = 0
            _521 = mem[_394 + 32]
            mem[u + 32] = ceil32(_399) + 96
            _523 = mem[_521]
            mem[u + ceil32(_399) + 96] = mem[_521]
            idx = 0
            while idx < _523:
                mem[u + ceil32(_399) + idx + 128] = mem[_521 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_523) > _523:
                mem[u + ceil32(_399) + _523 + 128] = 0
            s = s + 1
            t = t + 32
            u = u + ceil32(_399) + ceil32(_523) + 128
            v = v + 32
            continue 
    else:
        mem[64] = _135 + (32 * _134) + 96
        mem[_135 + (32 * _134) + 32] = 96
        mem[_135 + (32 * _134) + 64] = 96
        mem[var33001] = _135 + (32 * _134) + 32
        s = var33001
        idx = var33002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_135 + (32 * _134) + 32] = 96
            mem[_135 + (32 * _134) + 64] = 96
            mem[s + 32] = _135 + (32 * _134) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _509 = mem[96]
        idx = 0
        while idx < _509:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _514 = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _517 = mem[mem[(32 * idx) + 128] + 64]
            _518 = mem[64]
            _520 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            while s < _520:
                mem[_518 + s] = mem[_517 + s + 32]
                _509 = mem[96]
                s = s + 32
                continue 
            if ceil32(_520) <= _520:
                call address(_514).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _518 + _520 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32]] = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32] + 32] = 96
                else:
                    _587 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_587] = return_data.size
                    mem[_587 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32]] = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32] + 32] = _587
            else:
                mem[_518 + _520] = 0
                call address(_514).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _518 + _520 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32]] = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32] + 32] = 96
                else:
                    _589 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_589] = return_data.size
                    mem[_589 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32]] = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[_135]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + _135 + 32] + 32] = _589
            if idx == -1:
                revert with 'NH{q', 17
            _509 = mem[96]
            idx = idx + 1
            continue 
        _512 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _524 = mem[_135]
        mem[mem[64] + 64] = mem[_135]
        s = 0
        t = _135 + 32
        u = mem[64] + (32 * _524) + 96
        v = mem[64] + 96
        while s < _524:
            mem[v] = u + -_512 - 96
            _581 = mem[t]
            _584 = mem[mem[t]]
            mem[u] = 64
            _585 = mem[_584]
            mem[u + 64] = mem[_584]
            w = 0
            while w < _585:
                mem[u + w + 96] = mem[_584 + w + 32]
                w = w + 32
                continue 
            if ceil32(_585) <= _585:
                _634 = mem[_581 + 32]
                mem[u + 32] = ceil32(_585) + 96
                _636 = mem[_634]
                mem[u + ceil32(_585) + 96] = mem[_634]
                idx = 0
                while idx < _636:
                    mem[u + ceil32(_585) + idx + 128] = mem[_634 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_636) > _636:
                    mem[u + ceil32(_585) + _636 + 128] = 0
                s = s + 1
                t = t + 32
                u = u + ceil32(_585) + ceil32(_636) + 128
                v = v + 32
                continue 
            mem[u + _585 + 96] = 0
            _635 = mem[_581 + 32]
            mem[u + 32] = ceil32(_585) + 96
            _637 = mem[_635]
            mem[u + ceil32(_585) + 96] = mem[_635]
            idx = 0
            while idx < _637:
                mem[u + ceil32(_585) + idx + 128] = mem[_635 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_637) > _637:
                mem[u + ceil32(_585) + _637 + 128] = 0
            s = s + 1
            t = t + 32
            u = u + ceil32(_585) + ceil32(_637) + 128
            v = v + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function blockAndAggregate(string arg1, address arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] <= test266151307()
        require calldata.size + -arg1 + -cd[s] - 36 >= 96
        _131 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _157 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)])) + 1
        mem[_157] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)] + 68 <= calldata.size
        mem[_157 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)]]
        mem[_157 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 36)] + 32] = 0
        mem[_131] = _157
        require cd[(arg1 + cd[s] + 68)] == address(cd[(arg1 + cd[s] + 68)])
        mem[_131 + 32] = cd[(arg1 + cd[s] + 68)]
        require cd[(arg1 + cd[s] + 100)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _251 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)])) + 1
        mem[_251] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] + 68 <= calldata.size
        mem[_251 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]]
        mem[_251 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] + 32] = 0
        mem[_131 + 64] = _251
        mem[t] = _131
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _132 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _133 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _132) + 32
    if not _132:
        _260 = mem[96]
        idx = 0
        while idx < _260:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _264 = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _268 = mem[mem[(32 * idx) + 128] + 64]
            _269 = mem[64]
            _271 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            while s < _271:
                mem[_269 + s] = mem[_268 + s + 32]
                _260 = mem[96]
                s = s + 32
                continue 
            if ceil32(_271) <= _271:
                call address(_264).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _269 + _271 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _408 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_408] = bool(ext_call.success)
                    _409 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_409] = mem[mem[(32 * idx) + 128]]
                    mem[_409 + 32] = 96
                    mem[_408 + 32] = _409
                    if idx >= mem[_133]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _133 + 32] = _408
                else:
                    _392 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_392] = return_data.size
                    mem[_392 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _411 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_411] = bool(ext_call.success)
                    _412 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_412] = mem[mem[(32 * idx) + 128]]
                    mem[_412 + 32] = _392
                    mem[_411 + 32] = _412
                    if idx >= mem[_133]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _133 + 32] = _411
            else:
                mem[_269 + _271] = 0
                call address(_264).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _269 + _271 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _423 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_423] = bool(ext_call.success)
                    _424 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_424] = mem[mem[(32 * idx) + 128]]
                    mem[_424 + 32] = 96
                    mem[_423 + 32] = _424
                    if idx >= mem[_133]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _133 + 32] = _423
                else:
                    _396 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_396] = return_data.size
                    mem[_396 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _426 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_426] = bool(ext_call.success)
                    _427 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_427] = mem[mem[(32 * idx) + 128]]
                    mem[_427 + 32] = _396
                    mem[_426 + 32] = _427
                    if idx >= mem[_133]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _133 + 32] = _426
            if idx == -1:
                revert with 'NH{q', 17
            _260 = mem[96]
            idx = idx + 1
            continue 
        _270 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _283 = mem[_133]
        mem[mem[64] + 96] = mem[_133]
        idx = 0
        s = _133 + 32
        t = mem[64] + (32 * _283) + 128
        u = mem[64] + 128
        while idx < _283:
            mem[u] = t + -_270 - 128
            _385 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _395 = mem[_385 + 32]
            mem[t + 32] = 64
            _398 = mem[_395]
            mem[t + 64] = 64
            _407 = mem[_398]
            mem[t + 128] = mem[_398]
            v = 0
            while v < _407:
                mem[t + v + 160] = mem[_398 + v + 32]
                v = v + 32
                continue 
            if ceil32(_407) <= _407:
                _502 = mem[_395 + 32]
                mem[t + 96] = ceil32(_407) + 96
                _508 = mem[_502]
                mem[t + ceil32(_407) + 160] = mem[_502]
                v = 0
                while v < _508:
                    mem[t + ceil32(_407) + v + 192] = mem[_502 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_508) > _508:
                    mem[t + ceil32(_407) + _508 + 192] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_407) + ceil32(_508) + 192
                u = u + 32
                continue 
            mem[t + _407 + 160] = 0
            _504 = mem[_395 + 32]
            mem[t + 96] = ceil32(_407) + 96
            _512 = mem[_504]
            mem[t + ceil32(_407) + 160] = mem[_504]
            v = 0
            while v < _512:
                mem[t + ceil32(_407) + v + 192] = mem[_504 + v + 32]
                v = v + 32
                continue 
            if ceil32(_512) > _512:
                mem[t + ceil32(_407) + _512 + 192] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_407) + ceil32(_512) + 192
            u = u + 32
            continue 
    else:
        mem[_133 + (32 * _132) + 32] = 0
        mem[64] = _133 + (32 * _132) + 160
        mem[_133 + (32 * _132) + 96] = 96
        mem[_133 + (32 * _132) + 128] = 96
        mem[_133 + (32 * _132) + 64] = _133 + (32 * _132) + 96
        mem[var39002] = _133 + (32 * _132) + 32
        s = _133 + (32 * _132) + 64
        s = _133 + (32 * _132) + 32
        s = var39002
        idx = var39003
        while idx - 1:
            _500 = mem[64]
            mem[64] = mem[64] + 64
            mem[_500] = 0
            mem[64] = mem[64] + 64
            mem[_133 + (32 * _132) + 96] = 96
            mem[_133 + (32 * _132) + 128] = 96
            mem[_500 + 32] = _133 + (32 * _132) + 96
            mem[s + 32] = _500
            s = _500 + 32
            s = _500
            s = s + 32
            idx = idx - 1
            continue 
        _568 = mem[96]
        idx = 0
        while idx < _568:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _573 = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _576 = mem[mem[(32 * idx) + 128] + 64]
            _577 = mem[64]
            _579 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            while s < _579:
                mem[_577 + s] = mem[_576 + s + 32]
                _568 = mem[96]
                s = s + 32
                continue 
            if ceil32(_579) <= _579:
                call address(_573).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _577 + _579 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _644 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_644] = bool(ext_call.success)
                    _645 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_645] = mem[mem[(32 * idx) + 128]]
                    mem[_645 + 32] = 96
                    mem[_644 + 32] = _645
                    if idx >= mem[_133]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _133 + 32] = _644
                else:
                    _636 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_636] = return_data.size
                    mem[_636 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _647 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_647] = bool(ext_call.success)
                    _648 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_648] = mem[mem[(32 * idx) + 128]]
                    mem[_648 + 32] = _636
                    mem[_647 + 32] = _648
                    if idx >= mem[_133]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _133 + 32] = _647
            else:
                mem[_577 + _579] = 0
                call address(_573).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _577 + _579 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _658 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_658] = bool(ext_call.success)
                    _659 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_659] = mem[mem[(32 * idx) + 128]]
                    mem[_659 + 32] = 96
                    mem[_658 + 32] = _659
                    if idx >= mem[_133]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _133 + 32] = _658
                else:
                    _639 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_639] = return_data.size
                    mem[_639 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _661 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_661] = bool(ext_call.success)
                    _662 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_662] = mem[mem[(32 * idx) + 128]]
                    mem[_662 + 32] = _639
                    mem[_661 + 32] = _662
                    if idx >= mem[_133]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _133 + 32] = _661
            if idx == -1:
                revert with 'NH{q', 17
            _568 = mem[96]
            idx = idx + 1
            continue 
        _578 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _581 = mem[_133]
        mem[mem[64] + 96] = mem[_133]
        idx = 0
        s = _133 + 32
        t = mem[64] + (32 * _581) + 128
        u = mem[64] + 128
        while idx < _581:
            mem[u] = t + -_578 - 128
            _631 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _638 = mem[_631 + 32]
            mem[t + 32] = 64
            _640 = mem[_638]
            mem[t + 64] = 64
            _643 = mem[_640]
            mem[t + 128] = mem[_640]
            v = 0
            while v < _643:
                mem[t + v + 160] = mem[_640 + v + 32]
                v = v + 32
                continue 
            if ceil32(_643) <= _643:
                _682 = mem[_638 + 32]
                mem[t + 96] = ceil32(_643) + 96
                _684 = mem[_682]
                mem[t + ceil32(_643) + 160] = mem[_682]
                v = 0
                while v < _684:
                    mem[t + ceil32(_643) + v + 192] = mem[_682 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_684) > _684:
                    mem[t + ceil32(_643) + _684 + 192] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_643) + ceil32(_684) + 192
                u = u + 32
                continue 
            mem[t + _643 + 160] = 0
            _683 = mem[_638 + 32]
            mem[t + 96] = ceil32(_643) + 96
            _685 = mem[_683]
            mem[t + ceil32(_643) + 160] = mem[_683]
            v = 0
            while v < _685:
                mem[t + ceil32(_643) + v + 192] = mem[_683 + v + 32]
                v = v + 32
                continue 
            if ceil32(_685) > _685:
                mem[t + ceil32(_643) + _685 + 192] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_643) + ceil32(_685) + 192
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function tryAggregate(bool arg1, string arg2, address arg3, bytes[] arg4) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + 97
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] <= test266151307()
        require calldata.size + -arg2 + -cd[s] - 36 >= 96
        _181 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 67 < calldata.size
        if cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _211 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)])) + 1
        mem[_211] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)] + 68 <= calldata.size
        mem[_211 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)]]
        mem[_211 + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)] + 32] = 0
        mem[_181] = _211
        require cd[(arg2 + cd[s] + 68)] == address(cd[(arg2 + cd[s] + 68)])
        mem[_181 + 32] = cd[(arg2 + cd[s] + 68)]
        require cd[(arg2 + cd[s] + 100)] <= test266151307()
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 67 < calldata.size
        if cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _355 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)])) + 1
        mem[_355] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)] + 68 <= calldata.size
        mem[_355 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)]]
        mem[_355 + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)] + 32] = 0
        mem[_181 + 64] = _355
        mem[t] = _181
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _179 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _180 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _179) + 32
    if not _179:
        _356 = mem[96]
        idx = 0
        while idx < _356:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _361 = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _365 = mem[mem[(32 * idx) + 128] + 64]
            _366 = mem[64]
            _368 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            while s < _368:
                mem[_366 + s] = mem[_365 + s + 32]
                _356 = mem[96]
                s = s + 32
                continue 
            if ceil32(_368) <= _368:
                call address(_361).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _366 + _368 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _543 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_543] = bool(ext_call.success)
                        _544 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_544] = mem[mem[(32 * idx) + 128]]
                        mem[_544 + 32] = 96
                        mem[_543 + 32] = _544
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _543
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _571 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_571] = bool(ext_call.success)
                        _572 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_572] = mem[mem[(32 * idx) + 128]]
                        mem[_572 + 32] = 96
                        mem[_571 + 32] = _572
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _571
                else:
                    _536 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_536] = return_data.size
                    mem[_536 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_546] = bool(ext_call.success)
                        _547 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_547] = mem[mem[(32 * idx) + 128]]
                        mem[_547 + 32] = _536
                        mem[_546 + 32] = _547
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _546
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _574 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_574] = bool(ext_call.success)
                        _575 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_575] = mem[mem[(32 * idx) + 128]]
                        mem[_575 + 32] = _536
                        mem[_574 + 32] = _575
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _574
            else:
                mem[_366 + _368] = 0
                call address(_361).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _366 + _368 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _561 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_561] = bool(ext_call.success)
                        _562 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_562] = mem[mem[(32 * idx) + 128]]
                        mem[_562 + 32] = 96
                        mem[_561 + 32] = _562
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _561
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _591 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_591] = bool(ext_call.success)
                        _592 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_592] = mem[mem[(32 * idx) + 128]]
                        mem[_592 + 32] = 96
                        mem[_591 + 32] = _592
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _591
                else:
                    _540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_540] = return_data.size
                    mem[_540 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _564 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_564] = bool(ext_call.success)
                        _565 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_565] = mem[mem[(32 * idx) + 128]]
                        mem[_565 + 32] = _540
                        mem[_564 + 32] = _565
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _564
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _594 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_594] = bool(ext_call.success)
                        _595 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_595] = mem[mem[(32 * idx) + 128]]
                        mem[_595 + 32] = _540
                        mem[_594 + 32] = _595
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _594
            if idx == -1:
                revert with 'NH{q', 17
            _356 = mem[96]
            idx = idx + 1
            continue 
        _359 = mem[64]
        mem[mem[64]] = 32
        _367 = mem[_180]
        mem[mem[64] + 32] = mem[_180]
        s = 0
        t = _180 + 32
        u = mem[64] + (32 * _367) + 64
        v = mem[64] + 64
        while s < _367:
            mem[v] = u + -_359 - 64
            _529 = mem[t]
            mem[u] = bool(mem[mem[t]])
            _539 = mem[_529 + 32]
            mem[u + 32] = 64
            _542 = mem[_539]
            mem[u + 64] = 64
            _570 = mem[_542]
            mem[u + 128] = mem[_542]
            w = 0
            while w < _570:
                mem[u + w + 160] = mem[_542 + w + 32]
                w = w + 32
                continue 
            if ceil32(_570) <= _570:
                _694 = mem[_539 + 32]
                mem[u + 96] = ceil32(_570) + 96
                _701 = mem[_694]
                mem[u + ceil32(_570) + 160] = mem[_694]
                idx = 0
                while idx < _701:
                    mem[u + ceil32(_570) + idx + 192] = mem[_694 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_701) > _701:
                    mem[u + ceil32(_570) + _701 + 192] = 0
                s = s + 1
                t = t + 32
                u = u + ceil32(_570) + ceil32(_701) + 192
                v = v + 32
                continue 
            mem[u + _570 + 160] = 0
            _696 = mem[_539 + 32]
            mem[u + 96] = ceil32(_570) + 96
            _705 = mem[_696]
            mem[u + ceil32(_570) + 160] = mem[_696]
            idx = 0
            while idx < _705:
                mem[u + ceil32(_570) + idx + 192] = mem[_696 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_705) > _705:
                mem[u + ceil32(_570) + _705 + 192] = 0
            s = s + 1
            t = t + 32
            u = u + ceil32(_570) + ceil32(_705) + 192
            v = v + 32
            continue 
    else:
        mem[_180 + (32 * _179) + 32] = 0
        mem[64] = _180 + (32 * _179) + 160
        mem[_180 + (32 * _179) + 96] = 96
        mem[_180 + (32 * _179) + 128] = 96
        mem[_180 + (32 * _179) + 64] = _180 + (32 * _179) + 96
        mem[var44002] = _180 + (32 * _179) + 32
        s = _180 + (32 * _179) + 64
        s = _180 + (32 * _179) + 32
        s = var44002
        idx = var44003
        while idx - 1:
            _692 = mem[64]
            mem[64] = mem[64] + 64
            mem[_692] = 0
            mem[64] = mem[64] + 64
            mem[_180 + (32 * _179) + 96] = 96
            mem[_180 + (32 * _179) + 128] = 96
            mem[_692 + 32] = _180 + (32 * _179) + 96
            mem[s + 32] = _692
            s = _692 + 32
            s = _692
            s = s + 32
            idx = idx - 1
            continue 
        _784 = mem[96]
        idx = 0
        while idx < _784:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _790 = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _793 = mem[mem[(32 * idx) + 128] + 64]
            _794 = mem[64]
            _796 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            while s < _796:
                mem[_794 + s] = mem[_793 + s + 32]
                _784 = mem[96]
                s = s + 32
                continue 
            if ceil32(_796) <= _796:
                call address(_790).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _794 + _796 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _881 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_881] = bool(ext_call.success)
                        _882 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_882] = mem[mem[(32 * idx) + 128]]
                        mem[_882 + 32] = 96
                        mem[_881 + 32] = _882
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _881
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _902 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_902] = bool(ext_call.success)
                        _903 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_903] = mem[mem[(32 * idx) + 128]]
                        mem[_903 + 32] = 96
                        mem[_902 + 32] = _903
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _902
                else:
                    _876 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_876] = return_data.size
                    mem[_876 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _884 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_884] = bool(ext_call.success)
                        _885 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_885] = mem[mem[(32 * idx) + 128]]
                        mem[_885 + 32] = _876
                        mem[_884 + 32] = _885
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _884
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _905 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_905] = bool(ext_call.success)
                        _906 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_906] = mem[mem[(32 * idx) + 128]]
                        mem[_906 + 32] = _876
                        mem[_905 + 32] = _906
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _905
            else:
                mem[_794 + _796] = 0
                call address(_790).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _794 + _796 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _895 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_895] = bool(ext_call.success)
                        _896 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_896] = mem[mem[(32 * idx) + 128]]
                        mem[_896 + 32] = 96
                        mem[_895 + 32] = _896
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _895
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _922 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_922] = bool(ext_call.success)
                        _923 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_923] = mem[mem[(32 * idx) + 128]]
                        mem[_923 + 32] = 96
                        mem[_922 + 32] = _923
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _922
                else:
                    _879 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_879] = return_data.size
                    mem[_879 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _898 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_898] = bool(ext_call.success)
                        _899 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_899] = mem[mem[(32 * idx) + 128]]
                        mem[_899 + 32] = _879
                        mem[_898 + 32] = _899
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _898
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _925 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_925] = bool(ext_call.success)
                        _926 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_926] = mem[mem[(32 * idx) + 128]]
                        mem[_926 + 32] = _879
                        mem[_925 + 32] = _926
                        if idx >= mem[_180]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _180 + 32] = _925
            if idx == -1:
                revert with 'NH{q', 17
            _784 = mem[96]
            idx = idx + 1
            continue 
        _788 = mem[64]
        mem[mem[64]] = 32
        _795 = mem[_180]
        mem[mem[64] + 32] = mem[_180]
        s = 0
        t = _180 + 32
        u = mem[64] + (32 * _795) + 64
        v = mem[64] + 64
        while s < _795:
            mem[v] = u + -_788 - 64
            _871 = mem[t]
            mem[u] = bool(mem[mem[t]])
            _878 = mem[_871 + 32]
            mem[u + 32] = 64
            _880 = mem[_878]
            mem[u + 64] = 64
            _901 = mem[_880]
            mem[u + 128] = mem[_880]
            w = 0
            while w < _901:
                mem[u + w + 160] = mem[_880 + w + 32]
                w = w + 32
                continue 
            if ceil32(_901) <= _901:
                _946 = mem[_878 + 32]
                mem[u + 96] = ceil32(_901) + 96
                _948 = mem[_946]
                mem[u + ceil32(_901) + 160] = mem[_946]
                idx = 0
                while idx < _948:
                    mem[u + ceil32(_901) + idx + 192] = mem[_946 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_948) > _948:
                    mem[u + ceil32(_901) + _948 + 192] = 0
                s = s + 1
                t = t + 32
                u = u + ceil32(_901) + ceil32(_948) + 192
                v = v + 32
                continue 
            mem[u + _901 + 160] = 0
            _947 = mem[_878 + 32]
            mem[u + 96] = ceil32(_901) + 96
            _949 = mem[_947]
            mem[u + ceil32(_901) + 160] = mem[_947]
            idx = 0
            while idx < _949:
                mem[u + ceil32(_901) + idx + 192] = mem[_947 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_949) > _949:
                mem[u + ceil32(_901) + _949 + 192] = 0
            s = s + 1
            t = t + 32
            u = u + ceil32(_901) + ceil32(_949) + 192
            v = v + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function tryBlockAndAggregate(bool arg1, string arg2, address arg3, bytes[] arg4) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + 97
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] <= test266151307()
        require calldata.size + -arg2 + -cd[s] - 36 >= 96
        _180 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 67 < calldata.size
        if cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _206 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)])) + 1
        mem[_206] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)] + 68 <= calldata.size
        mem[_206 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)]]
        mem[_206 + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 36)] + 32] = 0
        mem[_180] = _206
        require cd[(arg2 + cd[s] + 68)] == address(cd[(arg2 + cd[s] + 68)])
        mem[_180 + 32] = cd[(arg2 + cd[s] + 68)]
        require cd[(arg2 + cd[s] + 100)] <= test266151307()
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 67 < calldata.size
        if cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _347 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)])) + 1
        mem[_347] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)] + 68 <= calldata.size
        mem[_347 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)]]
        mem[_347 + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 100)] + 36)] + 32] = 0
        mem[_180 + 64] = _347
        mem[t] = _180
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _179 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _181 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _179) + 32
    if not _179:
        _356 = mem[96]
        idx = 0
        while idx < _356:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _360 = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _365 = mem[mem[(32 * idx) + 128] + 64]
            _366 = mem[64]
            _367 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            while s < _367:
                mem[_366 + s] = mem[_365 + s + 32]
                _356 = mem[96]
                s = s + 32
                continue 
            if ceil32(_367) <= _367:
                call address(_360).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _366 + _367 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _543 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_543] = bool(ext_call.success)
                        _544 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_544] = mem[mem[(32 * idx) + 128]]
                        mem[_544 + 32] = 96
                        mem[_543 + 32] = _544
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _543
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _571 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_571] = bool(ext_call.success)
                        _572 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_572] = mem[mem[(32 * idx) + 128]]
                        mem[_572 + 32] = 96
                        mem[_571 + 32] = _572
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _571
                else:
                    _536 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_536] = return_data.size
                    mem[_536 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_546] = bool(ext_call.success)
                        _547 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_547] = mem[mem[(32 * idx) + 128]]
                        mem[_547 + 32] = _536
                        mem[_546 + 32] = _547
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _546
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _574 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_574] = bool(ext_call.success)
                        _575 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_575] = mem[mem[(32 * idx) + 128]]
                        mem[_575 + 32] = _536
                        mem[_574 + 32] = _575
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _574
            else:
                mem[_366 + _367] = 0
                call address(_360).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _366 + _367 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _560 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_560] = bool(ext_call.success)
                        _561 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_561] = mem[mem[(32 * idx) + 128]]
                        mem[_561 + 32] = 96
                        mem[_560 + 32] = _561
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _560
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _591 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_591] = bool(ext_call.success)
                        _592 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_592] = mem[mem[(32 * idx) + 128]]
                        mem[_592 + 32] = 96
                        mem[_591 + 32] = _592
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _591
                else:
                    _540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_540] = return_data.size
                    mem[_540 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _563 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_563] = bool(ext_call.success)
                        _564 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_564] = mem[mem[(32 * idx) + 128]]
                        mem[_564 + 32] = _540
                        mem[_563 + 32] = _564
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _563
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _594 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_594] = bool(ext_call.success)
                        _595 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_595] = mem[mem[(32 * idx) + 128]]
                        mem[_595 + 32] = _540
                        mem[_594 + 32] = _595
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _594
            if idx == -1:
                revert with 'NH{q', 17
            _356 = mem[96]
            idx = idx + 1
            continue 
        _363 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _379 = mem[_181]
        mem[mem[64] + 96] = mem[_181]
        idx = 0
        s = _181 + 32
        t = mem[64] + (32 * _379) + 128
        u = mem[64] + 128
        while idx < _379:
            mem[u] = t + -_363 - 128
            _529 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _539 = mem[_529 + 32]
            mem[t + 32] = 64
            _542 = mem[_539]
            mem[t + 64] = 64
            _570 = mem[_542]
            mem[t + 128] = mem[_542]
            v = 0
            while v < _570:
                mem[t + v + 160] = mem[_542 + v + 32]
                v = v + 32
                continue 
            if ceil32(_570) <= _570:
                _694 = mem[_539 + 32]
                mem[t + 96] = ceil32(_570) + 96
                _700 = mem[_694]
                mem[t + ceil32(_570) + 160] = mem[_694]
                v = 0
                while v < _700:
                    mem[t + ceil32(_570) + v + 192] = mem[_694 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_700) > _700:
                    mem[t + ceil32(_570) + _700 + 192] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_570) + ceil32(_700) + 192
                u = u + 32
                continue 
            mem[t + _570 + 160] = 0
            _696 = mem[_539 + 32]
            mem[t + 96] = ceil32(_570) + 96
            _705 = mem[_696]
            mem[t + ceil32(_570) + 160] = mem[_696]
            v = 0
            while v < _705:
                mem[t + ceil32(_570) + v + 192] = mem[_696 + v + 32]
                v = v + 32
                continue 
            if ceil32(_705) > _705:
                mem[t + ceil32(_570) + _705 + 192] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_570) + ceil32(_705) + 192
            u = u + 32
            continue 
    else:
        mem[_181 + (32 * _179) + 32] = 0
        mem[64] = _181 + (32 * _179) + 160
        mem[_181 + (32 * _179) + 96] = 96
        mem[_181 + (32 * _179) + 128] = 96
        mem[_181 + (32 * _179) + 64] = _181 + (32 * _179) + 96
        mem[var45002] = _181 + (32 * _179) + 32
        s = _181 + (32 * _179) + 64
        s = _181 + (32 * _179) + 32
        s = var45002
        idx = var45003
        while idx - 1:
            _692 = mem[64]
            mem[64] = mem[64] + 64
            mem[_692] = 0
            mem[64] = mem[64] + 64
            mem[_181 + (32 * _179) + 96] = 96
            mem[_181 + (32 * _179) + 128] = 96
            mem[_692 + 32] = _181 + (32 * _179) + 96
            mem[s + 32] = _692
            s = _692 + 32
            s = _692
            s = s + 32
            idx = idx - 1
            continue 
        _784 = mem[96]
        idx = 0
        while idx < _784:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _789 = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _793 = mem[mem[(32 * idx) + 128] + 64]
            _794 = mem[64]
            _795 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            while s < _795:
                mem[_794 + s] = mem[_793 + s + 32]
                _784 = mem[96]
                s = s + 32
                continue 
            if ceil32(_795) <= _795:
                call address(_789).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _794 + _795 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _881 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_881] = bool(ext_call.success)
                        _882 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_882] = mem[mem[(32 * idx) + 128]]
                        mem[_882 + 32] = 96
                        mem[_881 + 32] = _882
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _881
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _902 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_902] = bool(ext_call.success)
                        _903 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_903] = mem[mem[(32 * idx) + 128]]
                        mem[_903 + 32] = 96
                        mem[_902 + 32] = _903
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _902
                else:
                    _876 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_876] = return_data.size
                    mem[_876 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _884 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_884] = bool(ext_call.success)
                        _885 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_885] = mem[mem[(32 * idx) + 128]]
                        mem[_885 + 32] = _876
                        mem[_884 + 32] = _885
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _884
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _905 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_905] = bool(ext_call.success)
                        _906 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_906] = mem[mem[(32 * idx) + 128]]
                        mem[_906 + 32] = _876
                        mem[_905 + 32] = _906
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _905
            else:
                mem[_794 + _795] = 0
                call address(_789).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _794 + _795 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _895 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_895] = bool(ext_call.success)
                        _896 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_896] = mem[mem[(32 * idx) + 128]]
                        mem[_896 + 32] = 96
                        mem[_895 + 32] = _896
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _895
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _922 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_922] = bool(ext_call.success)
                        _923 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_923] = mem[mem[(32 * idx) + 128]]
                        mem[_923 + 32] = 96
                        mem[_922 + 32] = _923
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _922
                else:
                    _879 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_879] = return_data.size
                    mem[_879 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _898 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_898] = bool(ext_call.success)
                        _899 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_899] = mem[mem[(32 * idx) + 128]]
                        mem[_899 + 32] = _879
                        mem[_898 + 32] = _899
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _898
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _925 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_925] = bool(ext_call.success)
                        _926 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_926] = mem[mem[(32 * idx) + 128]]
                        mem[_926 + 32] = _879
                        mem[_925 + 32] = _926
                        if idx >= mem[_181]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _181 + 32] = _925
            if idx == -1:
                revert with 'NH{q', 17
            _784 = mem[96]
            idx = idx + 1
            continue 
        _791 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _797 = mem[_181]
        mem[mem[64] + 96] = mem[_181]
        idx = 0
        s = _181 + 32
        t = mem[64] + (32 * _797) + 128
        u = mem[64] + 128
        while idx < _797:
            mem[u] = t + -_791 - 128
            _871 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _878 = mem[_871 + 32]
            mem[t + 32] = 64
            _880 = mem[_878]
            mem[t + 64] = 64
            _901 = mem[_880]
            mem[t + 128] = mem[_880]
            v = 0
            while v < _901:
                mem[t + v + 160] = mem[_880 + v + 32]
                v = v + 32
                continue 
            if ceil32(_901) <= _901:
                _946 = mem[_878 + 32]
                mem[t + 96] = ceil32(_901) + 96
                _948 = mem[_946]
                mem[t + ceil32(_901) + 160] = mem[_946]
                v = 0
                while v < _948:
                    mem[t + ceil32(_901) + v + 192] = mem[_946 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_948) > _948:
                    mem[t + ceil32(_901) + _948 + 192] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_901) + ceil32(_948) + 192
                u = u + 32
                continue 
            mem[t + _901 + 160] = 0
            _947 = mem[_878 + 32]
            mem[t + 96] = ceil32(_901) + 96
            _949 = mem[_947]
            mem[t + ceil32(_901) + 160] = mem[_947]
            v = 0
            while v < _949:
                mem[t + ceil32(_901) + v + 192] = mem[_947 + v + 32]
                v = v + 32
                continue 
            if ceil32(_949) > _949:
                mem[t + ceil32(_901) + _949 + 192] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_901) + ceil32(_949) + 192
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
