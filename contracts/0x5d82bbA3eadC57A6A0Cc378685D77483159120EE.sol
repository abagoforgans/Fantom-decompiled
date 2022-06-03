contract main {




// =====================  Runtime code  =====================


#
#  - sub_6c32f54c(?)
#
address owner;

function owner() {
    return owner
}

function close() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg4 == arg4
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Formula: INSUFFICIENT_INPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0, 'Formula: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0, 'Formula: INSUFFICIENT_LIQUIDITY'
    if 10000 < arg4:
        revert with 'NH{q', 17
    if arg1 and uint16(-arg4 + 10000) > -1 / arg1:
        revert with 'NH{q', 17
    if arg2 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 'NH{q', 17
    if 10000 * arg2 > !(arg1 * uint16(-arg4 + 10000)):
        revert with 'NH{q', 17
    if arg3 and arg1 * uint16(-arg4 + 10000) > -1 / arg3:
        revert with 'NH{q', 17
    if not (10000 * arg2) + (arg1 * uint16(-arg4 + 10000)):
        revert with 'NH{q', 18
    return (arg3 * arg1 * uint16(-arg4 + 10000) / (10000 * arg2) + (arg1 * uint16(-arg4 + 10000)))
}

function getReserve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg2 != address(ext_call.return_data[0]):
        return address(ext_call.return_data[0]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
}

function aggregate(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] <= test266151307()
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _122 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_122] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _144 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1
        mem[_144] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_144 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_144 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_122 + 32] = _144
        mem[t] = _122
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _123 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _125 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _123) + 32
    if not _123:
        _242 = mem[96]
        idx = 0
        while idx < _242:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _246 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _250 = mem[mem[(32 * idx) + 128] + 32]
            _252 = mem[64]
            mem[64] = mem[64] + 64
            mem[_252] = 30
            mem[_252 + 32] = 'Address: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(_246):
                revert with 0, 'Address: call to non-contract'
            _266 = mem[64]
            _271 = mem[_250]
            s = 0
            while s < _271:
                mem[s + _266] = mem[s + _250 + 32]
                _242 = mem[96]
                s = s + 32
                continue 
            if ceil32(_271) <= _271:
                call address(_246).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _271 + _266 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[_125]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _125 + 32] = 96
                        if idx == -1:
                            revert with 'NH{q', 17
                        _242 = mem[96]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _381 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _397 = mem[_252]
                    mem[mem[64] + 36] = mem[_252]
                    idx = 0
                    while idx < _397:
                        mem[idx + _381 + 68] = mem[idx + _252 + 32]
                        _242 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_397) > _397:
                        mem[_381 + _397 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_397) + _381 + -mem[64] + 68
                _372 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_372] = return_data.size
                mem[_372 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if idx >= mem[_125]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _125 + 32] = _372
                    if idx == -1:
                        revert with 'NH{q', 17
                    _242 = mem[96]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _383 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _398 = mem[_252]
                mem[mem[64] + 36] = mem[_252]
                idx = 0
                while idx < _398:
                    mem[idx + _383 + 68] = mem[idx + _252 + 32]
                    _242 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_398) > _398:
                    mem[_383 + _398 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_398) + _383 + -mem[64] + 68
            mem[_266 + _271] = 0
            call address(_246).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _271 + _266 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if idx >= mem[_125]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _125 + 32] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    _242 = mem[96]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _390 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _399 = mem[_252]
                mem[mem[64] + 36] = mem[_252]
                idx = 0
                while idx < _399:
                    mem[idx + _390 + 68] = mem[idx + _252 + 32]
                    _242 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_399) > _399:
                    mem[_390 + _399 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_399) + _390 + -mem[64] + 68
            _375 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_375] = return_data.size
            mem[_375 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if idx >= mem[_125]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _125 + 32] = _375
                if idx == -1:
                    revert with 'NH{q', 17
                _242 = mem[96]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _392 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _400 = mem[_252]
            mem[mem[64] + 36] = mem[_252]
            idx = 0
            while idx < _400:
                mem[idx + _392 + 68] = mem[idx + _252 + 32]
                _242 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_400) > _400:
                mem[_392 + _400 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_400) + _392 + -mem[64] + 68
        _244 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _248 = mem[_125]
        mem[mem[64] + 64] = mem[_125]
        idx = 0
        s = _125 + 32
        t = mem[64] + 96
        u = mem[64] + (32 * _248) + 96
        while idx < _248:
            mem[t] = u + -_244 - 96
            _357 = mem[s]
            _361 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _361:
                mem[v + u + 32] = mem[v + _357 + 32]
                v = v + 32
                continue 
            if ceil32(_361) > _361:
                mem[u + _361 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_361) + u + 32
            continue 
    else:
        mem[_125 + 32] = 96
        s = _125 + 32
        idx = _123
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _356 = mem[96]
        idx = 0
        while idx < _356:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _364 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _368 = mem[mem[(32 * idx) + 128] + 32]
            _370 = mem[64]
            mem[64] = mem[64] + 64
            mem[_370] = 30
            mem[_370 + 32] = 'Address: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(_364):
                revert with 0, 'Address: call to non-contract'
            _387 = mem[64]
            _395 = mem[_368]
            s = 0
            while s < _395:
                mem[s + _387] = mem[s + _368 + 32]
                _356 = mem[96]
                s = s + 32
                continue 
            if ceil32(_395) <= _395:
                call address(_364).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _395 + _387 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[_125]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _125 + 32] = 96
                        if idx == -1:
                            revert with 'NH{q', 17
                        _356 = mem[96]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _478 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _488 = mem[_370]
                    mem[mem[64] + 36] = mem[_370]
                    idx = 0
                    while idx < _488:
                        mem[idx + _478 + 68] = mem[idx + _370 + 32]
                        _356 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_488) > _488:
                        mem[_478 + _488 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_488) + _478 + -mem[64] + 68
                _469 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_469] = return_data.size
                mem[_469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if idx >= mem[_125]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _125 + 32] = _469
                    if idx == -1:
                        revert with 'NH{q', 17
                    _356 = mem[96]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _480 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _489 = mem[_370]
                mem[mem[64] + 36] = mem[_370]
                idx = 0
                while idx < _489:
                    mem[idx + _480 + 68] = mem[idx + _370 + 32]
                    _356 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_489) > _489:
                    mem[_480 + _489 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_489) + _480 + -mem[64] + 68
            mem[_387 + _395] = 0
            call address(_364).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _395 + _387 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if idx >= mem[_125]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _125 + 32] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    _356 = mem[96]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _484 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _490 = mem[_370]
                mem[mem[64] + 36] = mem[_370]
                idx = 0
                while idx < _490:
                    mem[idx + _484 + 68] = mem[idx + _370 + 32]
                    _356 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_490) > _490:
                    mem[_484 + _490 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_490) + _484 + -mem[64] + 68
            _475 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_475] = return_data.size
            mem[_475 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if idx >= mem[_125]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _125 + 32] = _475
                if idx == -1:
                    revert with 'NH{q', 17
                _356 = mem[96]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _486 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _491 = mem[_370]
            mem[mem[64] + 36] = mem[_370]
            idx = 0
            while idx < _491:
                mem[idx + _486 + 68] = mem[idx + _370 + 32]
                _356 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_491) > _491:
                mem[_486 + _491 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_491) + _486 + -mem[64] + 68
        _362 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _366 = mem[_125]
        mem[mem[64] + 64] = mem[_125]
        idx = 0
        s = _125 + 32
        t = mem[64] + 96
        u = mem[64] + (32 * _366) + 96
        while idx < _366:
            mem[t] = u + -_362 - 96
            _459 = mem[s]
            _462 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _462:
                mem[v + u + 32] = mem[v + _459 + 32]
                v = v + 32
                continue 
            if ceil32(_462) > _462:
                mem[u + _462 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_462) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
