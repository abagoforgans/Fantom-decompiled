contract main {




// =====================  Runtime code  =====================


address stor1;
mapping of uint256 stor99;
uint256 stor6BEC;
uint256 stor6BEC;
array of struct stor70033491026939277790958647764103795464735256559157214596316159562928651994980;
mapping of uint256 stor70033491026939277790958647764103795464735256559157214596316159562928651994981;

function _fallback() payable {
    revert
}

function isReflected(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor9AD5.length
    if not stor9AD5[address(arg1)]:
        if 0 >= stor9AD5.length:
            revert with 'NH{q', 50
        require address(stor9AD5.field_0) == arg1
    if stor9AD5[address(arg1)] >= stor9AD5.length:
        revert with 'NH{q', 50
    require uint8(stor9AD5[stor9AD5[address(arg1)]].field_160)
    return 1
}

function reflects() payable {
    mem[96] = 16
    mem[128] = 'Tangle.Reflector'
    mem[64] = (32 * stor9AD5.length) + 192
    mem[160] = stor9AD5.length
    s = 192
    idx = 0
    while idx < stor9AD5.length:
        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = address(stor9AD5[idx].field_0)
        mem[_12 + 32] = bool(uint8(stor9AD5[idx].field_160))
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[160]
    mem[mem[64] + 32] = mem[160]
    idx = 0
    s = 192
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = bool(mem[_19 + 32])
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function reflect() payable {
    if msg.sender != this.address:
        revert with 0, 'internal'
    if stor9AD5.length:
        mem[64] = 356
        mem[356 len 128] = getId(string arg1), 0, 0, 8, 'balances', 0, mem[364 len 20]
        mem[456] = 0
        staticcall this.address.mem[356 len 4] with:
                gas gas_remaining wei
               args mem[360 len 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'getMappingId reflector'
            idx = 0
            s = 0
            t = 0
            while idx < stor9AD5.length:
                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                _644 = mem[64]
                mem[64] = mem[64] + 64
                mem[_644] = address(stor9AD5[idx].field_0)
                mem[_644 + 32] = bool(uint8(stor9AD5[idx].field_160))
                if uint8(stor9AD5[idx].field_160):
                    if not uint8(stor9AD5[idx].field_160):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if s > !stor[sha3('balances')][address(stor9AD5[idx].field_0)]:
                        revert with 'NH{q', 17
                    mem[0] = address(stor9AD5[idx].field_0)
                    mem[32] = sha3('balances')
                    stor[sha3('balances')][address(stor9AD5[idx].field_0)] = 0
                    if not stor6BEC:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(stor9AD5[idx].field_0)
                    mem[mem[64] + 32] = stor[sha3('balances')][address(stor9AD5[idx].field_0)] / stor6BEC
                    emit Reflect(address(stor9AD5[idx].field_0), stor[sha3('balances')][address(stor9AD5[idx].field_0)] / stor6BEC);
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + stor[sha3('balances')][address(stor9AD5[idx].field_0)]
                    t = t
                    continue 
                mem[0] = address(stor9AD5[idx].field_0)
                mem[32] = sha3('balances')
                if t > !stor[sha3('balances')][address(stor9AD5[idx].field_0)]:
                    revert with 'NH{q', 17
                if not uint8(stor9AD5[idx].field_160):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    t = t + stor[sha3('balances')][address(stor9AD5[idx].field_0)]
                    continue 
                if s > !stor[sha3('balances')][address(stor9AD5[idx].field_0)]:
                    revert with 'NH{q', 17
                mem[0] = address(stor9AD5[idx].field_0)
                mem[32] = sha3('balances')
                stor[sha3('balances')][address(stor9AD5[idx].field_0)] = 0
                if not stor6BEC:
                    revert with 'NH{q', 18
                mem[mem[64]] = address(stor9AD5[idx].field_0)
                mem[mem[64] + 32] = stor[sha3('balances')][address(stor9AD5[idx].field_0)] / stor6BEC
                emit Reflect(address(stor9AD5[idx].field_0), stor[sha3('balances')][address(stor9AD5[idx].field_0)] / stor6BEC);
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor[sha3('balances')][address(stor9AD5[idx].field_0)]
                t = t + stor[sha3('balances')][address(stor9AD5[idx].field_0)]
                continue 
            if s:
                if stor6BEC and stor6BEC > -1 / stor6BEC:
                    revert with 'NH{q', 17
                if stor6BEC * stor6BEC < t:
                    revert with 'NH{q', 17
                if (stor6BEC * stor6BEC) - t < s:
                    revert with 'NH{q', 17
                if stor6BEC and (stor6BEC * stor6BEC) - t - s > -1 / stor6BEC:
                    revert with 'NH{q', 17
                if not (stor6BEC * stor6BEC) - t:
                    revert with 'NH{q', 18
                stor6BEC = (stor6BEC * stor6BEC * stor6BEC) - (t * stor6BEC) - (s * stor6BEC) / (stor6BEC * stor6BEC) - t
                if (stor6BEC * stor6BEC * stor6BEC) - (t * stor6BEC) - (s * stor6BEC) / (stor6BEC * stor6BEC) - t < 1:
                    stor6BEC = 1
                idx = 0
                while idx < stor9AD5.length:
                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                    if not uint8(stor9AD5[idx].field_160):
                        if idx >= stor9AD5.length:
                            revert with 'NH{q', 50
                        if stor[sha3('balances')][address(stor9AD5[idx].field_0)] and (stor6BEC * stor6BEC) - t - s > -1 / stor[sha3('balances')][address(stor9AD5[idx].field_0)]:
                            revert with 'NH{q', 17
                        if not (stor6BEC * stor6BEC) - t:
                            revert with 'NH{q', 18
                        if idx >= stor9AD5.length:
                            revert with 'NH{q', 50
                        mem[0] = address(stor9AD5[idx].field_0)
                        mem[32] = sha3('balances')
                        stor[sha3('balances')][address(stor9AD5[idx].field_0)] = (stor6BEC * stor6BEC * stor[sha3('balances')][address(stor9AD5[idx].field_0)]) - (t * stor[sha3('balances')][address(stor9AD5[idx].field_0)]) - (s * stor[sha3('balances')][address(stor9AD5[idx].field_0)]) / (stor6BEC * stor6BEC) - t
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            mem[64] = ceil32(return_data.size) + 357
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'getMappingId reflector'
            _469 = sha3(mem[452 len mem[420]])
            idx = 0
            s = 0
            t = 0
            while idx < stor9AD5.length:
                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                _646 = mem[64]
                mem[64] = mem[64] + 64
                mem[_646] = address(stor9AD5[idx].field_0)
                mem[_646 + 32] = bool(uint8(stor9AD5[idx].field_160))
                if uint8(stor9AD5[idx].field_160):
                    if not uint8(stor9AD5[idx].field_160):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if s > !stor[_469][address(stor9AD5[idx].field_0)]:
                        revert with 'NH{q', 17
                    mem[0] = address(stor9AD5[idx].field_0)
                    mem[32] = _469
                    stor[_469][address(stor9AD5[idx].field_0)] = 0
                    if not stor6BEC:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(stor9AD5[idx].field_0)
                    mem[mem[64] + 32] = stor[_469][address(stor9AD5[idx].field_0)] / stor6BEC
                    emit Reflect(address(stor9AD5[idx].field_0), stor[_469][address(stor9AD5[idx].field_0)] / stor6BEC);
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + stor[_469][address(stor9AD5[idx].field_0)]
                    t = t
                    continue 
                mem[0] = address(stor9AD5[idx].field_0)
                mem[32] = _469
                if t > !stor[_469][address(stor9AD5[idx].field_0)]:
                    revert with 'NH{q', 17
                if not uint8(stor9AD5[idx].field_160):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    t = t + stor[_469][address(stor9AD5[idx].field_0)]
                    continue 
                if s > !stor[_469][address(stor9AD5[idx].field_0)]:
                    revert with 'NH{q', 17
                mem[0] = address(stor9AD5[idx].field_0)
                mem[32] = _469
                stor[_469][address(stor9AD5[idx].field_0)] = 0
                if not stor6BEC:
                    revert with 'NH{q', 18
                mem[mem[64]] = address(stor9AD5[idx].field_0)
                mem[mem[64] + 32] = stor[_469][address(stor9AD5[idx].field_0)] / stor6BEC
                emit Reflect(address(stor9AD5[idx].field_0), stor[_469][address(stor9AD5[idx].field_0)] / stor6BEC);
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor[_469][address(stor9AD5[idx].field_0)]
                t = t + stor[_469][address(stor9AD5[idx].field_0)]
                continue 
            if s:
                if stor6BEC and stor6BEC > -1 / stor6BEC:
                    revert with 'NH{q', 17
                if stor6BEC * stor6BEC < t:
                    revert with 'NH{q', 17
                if (stor6BEC * stor6BEC) - t < s:
                    revert with 'NH{q', 17
                if stor6BEC and (stor6BEC * stor6BEC) - t - s > -1 / stor6BEC:
                    revert with 'NH{q', 17
                if not (stor6BEC * stor6BEC) - t:
                    revert with 'NH{q', 18
                stor6BEC = (stor6BEC * stor6BEC * stor6BEC) - (t * stor6BEC) - (s * stor6BEC) / (stor6BEC * stor6BEC) - t
                if (stor6BEC * stor6BEC * stor6BEC) - (t * stor6BEC) - (s * stor6BEC) / (stor6BEC * stor6BEC) - t < 1:
                    stor6BEC = 1
                idx = 0
                while idx < stor9AD5.length:
                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                    if not uint8(stor9AD5[idx].field_160):
                        if idx >= stor9AD5.length:
                            revert with 'NH{q', 50
                        if stor[_469][address(stor9AD5[idx].field_0)] and (stor6BEC * stor6BEC) - t - s > -1 / stor[_469][address(stor9AD5[idx].field_0)]:
                            revert with 'NH{q', 17
                        if not (stor6BEC * stor6BEC) - t:
                            revert with 'NH{q', 18
                        if idx >= stor9AD5.length:
                            revert with 'NH{q', 50
                        mem[0] = address(stor9AD5[idx].field_0)
                        mem[32] = _469
                        stor[_469][address(stor9AD5[idx].field_0)] = (stor6BEC * stor6BEC * stor[_469][address(stor9AD5[idx].field_0)]) - (t * stor[_469][address(stor9AD5[idx].field_0)]) - (s * stor[_469][address(stor9AD5[idx].field_0)]) / (stor6BEC * stor6BEC) - t
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
}

function reflectCut(uint8 arg1, address arg2, bool[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (96 * arg1.length) + 36 <= calldata.size
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        require calldata.size + (-96 * idx) + -arg1 - 36 >= 96
        _432 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[((96 * idx) + arg1 + 36)] < 3
        mem[_432] = cd[((96 * idx) + arg1 + 36)]
        require calldata.size + (-96 * idx) + -arg1 - 68 >= 64
        _434 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[((96 * idx) + arg1 + 68)] == address(cd[((96 * idx) + arg1 + 68)])
        mem[_434] = cd[((96 * idx) + arg1 + 68)]
        require cd[((96 * idx) + arg1 + 100)] == bool(cd[((96 * idx) + arg1 + 100)])
        mem[_434 + 32] = cd[((96 * idx) + arg1 + 100)]
        mem[_432 + 32] = _434
        if cd[((96 * idx) + arg1 + 36)] > 2:
            revert with 'NH{q', 33
        if cd[((96 * idx) + arg1 + 36)]:
            if cd[((96 * idx) + arg1 + 36)] > 2:
                revert with 'NH{q', 33
            if cd[((96 * idx) + arg1 + 36)] != 1:
                if cd[((96 * idx) + arg1 + 36)] > 2:
                    revert with 'NH{q', 33
                if cd[((96 * idx) + arg1 + 36)] != 2:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                _450 = mem[64]
                mem[64] = mem[64] + 64
                mem[_450] = 16
                mem[_450 + 32] = 'Tangle.Reflector'
                _459 = mem[64]
                mem[64] = mem[64] + 64
                mem[_459] = 16
                mem[_459 + 32] = 'Tangle.Reflector'
                if not stor9AD5.length:
                    revert with 0, 'reflect remove'
                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                    if stor9AD5.length < 1:
                        revert with 'NH{q', 17
                    if stor9AD5.length - 1 >= stor9AD5.length:
                        revert with 'NH{q', 50
                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                    _532 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_532] = address(stor9AD5[stor9AD5.length].field_0)
                    mem[_532 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                else:
                    if 0 >= stor9AD5.length:
                        revert with 'NH{q', 50
                    if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                        revert with 0, 'reflect remove'
                    if stor9AD5.length < 1:
                        revert with 'NH{q', 17
                    if stor9AD5.length - 1 >= stor9AD5.length:
                        revert with 'NH{q', 50
                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                    _566 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_566] = address(stor9AD5[stor9AD5.length].field_0)
                    mem[_566 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                    stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                        revert with 'NH{q', 50
                    address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                    Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                if not stor9AD5.length:
                    revert with 'NH{q', 49
                Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                stor9AD5.length--
                mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                if s:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
            else:
                _443 = mem[64]
                mem[64] = mem[64] + 64
                mem[_443] = 16
                mem[_443 + 32] = 'Tangle.Reflector'
                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                    revert with 'NH{q', 50
                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                _452 = mem[64]
                mem[64] = mem[64] + 64
                mem[_452] = 16
                mem[_452 + 32] = 'Tangle.Reflector'
                if not stor9AD5.length:
                    revert with 0, 'reflect change'
                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                    if bool(uint8(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160)) == bool(cd[((96 * idx) + arg1 + 100)]):
                        revert with 0, 'reflect change'
                    mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                        revert with 'NH{q', 50
                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                    address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(cd[((96 * idx) + arg1 + 68)])
                    Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(cd[((96 * idx) + arg1 + 100)]))
                    if cd[((96 * idx) + arg1 + 36)] > 2:
                        revert with 'NH{q', 33
                    if not s:
                        if cd[((96 * idx) + arg1 + 36)] == 2:
                            _601 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_601] = 16
                            mem[_601 + 32] = 'Tangle.Reflector'
                            _611 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_611] = 16
                            mem[_611 + 32] = 'Tangle.Reflector'
                            if not stor9AD5.length:
                                revert with 0, 'reflect remove'
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                if stor9AD5.length < 1:
                                    revert with 'NH{q', 17
                                if stor9AD5.length - 1 >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                _832 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_832] = address(stor9AD5[stor9AD5.length].field_0)
                                mem[_832 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                            else:
                                if 0 >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                    revert with 0, 'reflect remove'
                                if stor9AD5.length < 1:
                                    revert with 'NH{q', 17
                                if stor9AD5.length - 1 >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                _903 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_903] = address(stor9AD5[stor9AD5.length].field_0)
                                mem[_903 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                            if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                            if not stor9AD5.length:
                                revert with 'NH{q', 49
                            Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                            stor9AD5.length--
                            mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                    else:
                        if cd[((96 * idx) + arg1 + 36)] != 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        _583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_583] = 16
                        mem[_583 + 32] = 'Tangle.Reflector'
                        _600 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_600] = 16
                        mem[_600 + 32] = 'Tangle.Reflector'
                        if not stor9AD5.length:
                            revert with 0, 'reflect remove'
                        mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                            if stor9AD5.length < 1:
                                revert with 'NH{q', 17
                            if stor9AD5.length - 1 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            _804 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_804] = address(stor9AD5[stor9AD5.length].field_0)
                            mem[_804 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                        else:
                            if 0 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                revert with 0, 'reflect remove'
                            if stor9AD5.length < 1:
                                revert with 'NH{q', 17
                            if stor9AD5.length - 1 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            _865 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_865] = address(stor9AD5[stor9AD5.length].field_0)
                            mem[_865 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                        if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                            stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                revert with 'NH{q', 50
                            address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                            Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                        if not stor9AD5.length:
                            revert with 'NH{q', 49
                        Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                        stor9AD5.length--
                        mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                        mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                        stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                        if s:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    if 0 >= stor9AD5.length:
                        revert with 'NH{q', 50
                    if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                        revert with 0, 'reflect change'
                    if bool(uint8(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160)) == bool(cd[((96 * idx) + arg1 + 100)]):
                        revert with 0, 'reflect change'
                    mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                        revert with 'NH{q', 50
                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                    address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(cd[((96 * idx) + arg1 + 68)])
                    Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(cd[((96 * idx) + arg1 + 100)]))
                    if cd[((96 * idx) + arg1 + 36)] > 2:
                        revert with 'NH{q', 33
                    if not s:
                        if cd[((96 * idx) + arg1 + 36)] == 2:
                            _633 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_633] = 16
                            mem[_633 + 32] = 'Tangle.Reflector'
                            _655 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_655] = 16
                            mem[_655 + 32] = 'Tangle.Reflector'
                            if not stor9AD5.length:
                                revert with 0, 'reflect remove'
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                if stor9AD5.length < 1:
                                    revert with 'NH{q', 17
                                if stor9AD5.length - 1 >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                _908 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_908] = address(stor9AD5[stor9AD5.length].field_0)
                                mem[_908 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                            else:
                                if 0 >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                    revert with 0, 'reflect remove'
                                if stor9AD5.length < 1:
                                    revert with 'NH{q', 17
                                if stor9AD5.length - 1 >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                _976 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_976] = address(stor9AD5[stor9AD5.length].field_0)
                                mem[_976 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                            if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                            if not stor9AD5.length:
                                revert with 'NH{q', 49
                            Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                            stor9AD5.length--
                            mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                    else:
                        if cd[((96 * idx) + arg1 + 36)] != 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        _612 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_612] = 16
                        mem[_612 + 32] = 'Tangle.Reflector'
                        _632 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_632] = 16
                        mem[_632 + 32] = 'Tangle.Reflector'
                        if not stor9AD5.length:
                            revert with 0, 'reflect remove'
                        mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                            if stor9AD5.length < 1:
                                revert with 'NH{q', 17
                            if stor9AD5.length - 1 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            _870 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_870] = address(stor9AD5[stor9AD5.length].field_0)
                            mem[_870 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                        else:
                            if 0 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                revert with 0, 'reflect remove'
                            if stor9AD5.length < 1:
                                revert with 'NH{q', 17
                            if stor9AD5.length - 1 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            _943 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_943] = address(stor9AD5[stor9AD5.length].field_0)
                            mem[_943 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                        if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                            stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                revert with 'NH{q', 50
                            address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                            Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                        if not stor9AD5.length:
                            revert with 'NH{q', 49
                        Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                        stor9AD5.length--
                        mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                        mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                        stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                        if s:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
        else:
            _438 = mem[64]
            mem[64] = mem[64] + 64
            mem[_438] = 16
            mem[_438 + 32] = 'Tangle.Reflector'
            _442 = mem[64]
            mem[64] = mem[64] + 64
            mem[_442] = 16
            mem[_442 + 32] = 'Tangle.Reflector'
            if not stor9AD5.length:
                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = stor9AD5.length
                stor9AD5.length++
                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                address(stor9AD5[stor9AD5.length].field_0) = address(cd[((96 * idx) + arg1 + 68)])
                Mask(96, 0, stor9AD5[stor9AD5.length].field_160) = Mask(96, 0, bool(cd[((96 * idx) + arg1 + 100)]))
                if cd[((96 * idx) + arg1 + 36)] > 2:
                    revert with 'NH{q', 33
                if not s:
                    if cd[((96 * idx) + arg1 + 36)] != 1:
                        if cd[((96 * idx) + arg1 + 36)] > 2:
                            revert with 'NH{q', 33
                        if cd[((96 * idx) + arg1 + 36)] == 2:
                            _515 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_515] = 16
                            mem[_515 + 32] = 'Tangle.Reflector'
                            _529 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_529] = 16
                            mem[_529 + 32] = 'Tangle.Reflector'
                            if not stor9AD5.length:
                                revert with 0, 'reflect remove'
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                if stor9AD5.length < 1:
                                    revert with 'NH{q', 17
                                if stor9AD5.length - 1 >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                _684 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_684] = address(stor9AD5[stor9AD5.length].field_0)
                                mem[_684 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                            else:
                                if 0 >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                    revert with 0, 'reflect remove'
                                if stor9AD5.length < 1:
                                    revert with 'NH{q', 17
                                if stor9AD5.length - 1 >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                _742 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_742] = address(stor9AD5[stor9AD5.length].field_0)
                                mem[_742 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                            if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                            if not stor9AD5.length:
                                revert with 'NH{q', 49
                            Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                            stor9AD5.length--
                            mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                    else:
                        _491 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_491] = 16
                        mem[_491 + 32] = 'Tangle.Reflector'
                        mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                            revert with 'NH{q', 50
                        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                        _517 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_517] = 16
                        mem[_517 + 32] = 'Tangle.Reflector'
                        if not stor9AD5.length:
                            revert with 0, 'reflect change'
                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                            if bool(uint8(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160)) == bool(cd[((96 * idx) + arg1 + 100)]):
                                revert with 0, 'reflect change'
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(cd[((96 * idx) + arg1 + 68)])
                            Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(cd[((96 * idx) + arg1 + 100)]))
                            if cd[((96 * idx) + arg1 + 36)] > 2:
                                revert with 'NH{q', 33
                            if cd[((96 * idx) + arg1 + 36)] == 2:
                                _774 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_774] = 16
                                mem[_774 + 32] = 'Tangle.Reflector'
                                _801 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_801] = 16
                                mem[_801 + 32] = 'Tangle.Reflector'
                                if not stor9AD5.length:
                                    revert with 0, 'reflect remove'
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1043 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1043] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1043 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                else:
                                    if 0 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                        revert with 0, 'reflect remove'
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1092 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1092] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1092 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                    stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                    Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                                if not stor9AD5.length:
                                    revert with 'NH{q', 49
                                Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                                stor9AD5.length--
                                mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                        else:
                            if 0 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                revert with 0, 'reflect change'
                            if bool(uint8(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160)) == bool(cd[((96 * idx) + arg1 + 100)]):
                                revert with 0, 'reflect change'
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(cd[((96 * idx) + arg1 + 68)])
                            Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(cd[((96 * idx) + arg1 + 100)]))
                            if cd[((96 * idx) + arg1 + 36)] > 2:
                                revert with 'NH{q', 33
                            if cd[((96 * idx) + arg1 + 36)] == 2:
                                _827 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_827] = 16
                                mem[_827 + 32] = 'Tangle.Reflector'
                                _858 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_858] = 16
                                mem[_858 + 32] = 'Tangle.Reflector'
                                if not stor9AD5.length:
                                    revert with 0, 'reflect remove'
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1095 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1095] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1095 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                else:
                                    if 0 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                        revert with 0, 'reflect remove'
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1167 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1167] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1167 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                    stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                    Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                                if not stor9AD5.length:
                                    revert with 'NH{q', 49
                                Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                                stor9AD5.length--
                                mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                else:
                    if cd[((96 * idx) + arg1 + 36)] != 1:
                        if cd[((96 * idx) + arg1 + 36)] > 2:
                            revert with 'NH{q', 33
                        if cd[((96 * idx) + arg1 + 36)] != 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        _499 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_499] = 16
                        mem[_499 + 32] = 'Tangle.Reflector'
                        _513 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_513] = 16
                        mem[_513 + 32] = 'Tangle.Reflector'
                        if not stor9AD5.length:
                            revert with 0, 'reflect remove'
                        mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                            if stor9AD5.length < 1:
                                revert with 'NH{q', 17
                            if stor9AD5.length - 1 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            _660 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_660] = address(stor9AD5[stor9AD5.length].field_0)
                            mem[_660 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                        else:
                            if 0 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                revert with 0, 'reflect remove'
                            if stor9AD5.length < 1:
                                revert with 'NH{q', 17
                            if stor9AD5.length - 1 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            _710 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_710] = address(stor9AD5[stor9AD5.length].field_0)
                            mem[_710 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                        if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                            stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                revert with 'NH{q', 50
                            address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                            Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                        if not stor9AD5.length:
                            revert with 'NH{q', 49
                        Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                        stor9AD5.length--
                        mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                        mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                        stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                        if s:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        _482 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_482] = 16
                        mem[_482 + 32] = 'Tangle.Reflector'
                        mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                            revert with 'NH{q', 50
                        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                        _501 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_501] = 16
                        mem[_501 + 32] = 'Tangle.Reflector'
                        if not stor9AD5.length:
                            revert with 0, 'reflect change'
                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                            if bool(uint8(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160)) == bool(cd[((96 * idx) + arg1 + 100)]):
                                revert with 0, 'reflect change'
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(cd[((96 * idx) + arg1 + 68)])
                            Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(cd[((96 * idx) + arg1 + 100)]))
                            if cd[((96 * idx) + arg1 + 36)] > 2:
                                revert with 'NH{q', 33
                            if not s:
                                if cd[((96 * idx) + arg1 + 36)] == 2:
                                    _769 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_769] = 16
                                    mem[_769 + 32] = 'Tangle.Reflector'
                                    _790 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_790] = 16
                                    mem[_790 + 32] = 'Tangle.Reflector'
                                    if not stor9AD5.length:
                                        revert with 0, 'reflect remove'
                                    mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                        if stor9AD5.length < 1:
                                            revert with 'NH{q', 17
                                        if stor9AD5.length - 1 >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                        _1038 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1038] = address(stor9AD5[stor9AD5.length].field_0)
                                        mem[_1038 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                    else:
                                        if 0 >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                            revert with 0, 'reflect remove'
                                        if stor9AD5.length < 1:
                                            revert with 'NH{q', 17
                                        if stor9AD5.length - 1 >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                        _1079 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1079] = address(stor9AD5[stor9AD5.length].field_0)
                                        mem[_1079 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                    if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                        stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                        Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                                    if not stor9AD5.length:
                                        revert with 'NH{q', 49
                                    Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                                    stor9AD5.length--
                                    mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                                    mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                    stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                            else:
                                if cd[((96 * idx) + arg1 + 36)] != 2:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s
                                    continue 
                                _732 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_732] = 16
                                mem[_732 + 32] = 'Tangle.Reflector'
                                _768 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_768] = 16
                                mem[_768 + 32] = 'Tangle.Reflector'
                                if not stor9AD5.length:
                                    revert with 0, 'reflect remove'
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1023 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1023] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1023 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                else:
                                    if 0 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                        revert with 0, 'reflect remove'
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1057 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1057] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1057 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                    stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                    Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                                if not stor9AD5.length:
                                    revert with 'NH{q', 49
                                Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                                stor9AD5.length--
                                mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                                if s:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if 0 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                revert with 0, 'reflect change'
                            if bool(uint8(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160)) == bool(cd[((96 * idx) + arg1 + 100)]):
                                revert with 0, 'reflect change'
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(cd[((96 * idx) + arg1 + 68)])
                            Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(cd[((96 * idx) + arg1 + 100)]))
                            if cd[((96 * idx) + arg1 + 36)] > 2:
                                revert with 'NH{q', 33
                            if not s:
                                if cd[((96 * idx) + arg1 + 36)] == 2:
                                    _824 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_824] = 16
                                    mem[_824 + 32] = 'Tangle.Reflector'
                                    _855 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_855] = 16
                                    mem[_855 + 32] = 'Tangle.Reflector'
                                    if not stor9AD5.length:
                                        revert with 0, 'reflect remove'
                                    mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                        if stor9AD5.length < 1:
                                            revert with 'NH{q', 17
                                        if stor9AD5.length - 1 >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                        _1084 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1084] = address(stor9AD5[stor9AD5.length].field_0)
                                        mem[_1084 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                    else:
                                        if 0 >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                            revert with 0, 'reflect remove'
                                        if stor9AD5.length < 1:
                                            revert with 'NH{q', 17
                                        if stor9AD5.length - 1 >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                        _1152 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1152] = address(stor9AD5[stor9AD5.length].field_0)
                                        mem[_1152 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                    if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                        stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                        Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                                    if not stor9AD5.length:
                                        revert with 'NH{q', 49
                                    Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                                    stor9AD5.length--
                                    mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                                    mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                    stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                            else:
                                if cd[((96 * idx) + arg1 + 36)] != 2:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s
                                    continue 
                                _791 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_791] = 16
                                mem[_791 + 32] = 'Tangle.Reflector'
                                _823 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_823] = 16
                                mem[_823 + 32] = 'Tangle.Reflector'
                                if not stor9AD5.length:
                                    revert with 0, 'reflect remove'
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1062 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1062] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1062 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                else:
                                    if 0 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                        revert with 0, 'reflect remove'
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1118 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1118] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1118 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                    stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                    Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                                if not stor9AD5.length:
                                    revert with 'NH{q', 49
                                Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                                stor9AD5.length--
                                mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                                if s:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s
                                    continue 
            else:
                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                    revert with 0, 'reflect add'
                if 0 >= stor9AD5.length:
                    revert with 'NH{q', 50
                if address(stor9AD5.field_0) == address(cd[((96 * idx) + arg1 + 68)]):
                    revert with 0, 'reflect add'
                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = stor9AD5.length
                stor9AD5.length++
                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                address(stor9AD5[stor9AD5.length].field_0) = address(cd[((96 * idx) + arg1 + 68)])
                Mask(96, 0, stor9AD5[stor9AD5.length].field_160) = Mask(96, 0, bool(cd[((96 * idx) + arg1 + 100)]))
                if cd[((96 * idx) + arg1 + 36)] > 2:
                    revert with 'NH{q', 33
                if not s:
                    if cd[((96 * idx) + arg1 + 36)] != 1:
                        if cd[((96 * idx) + arg1 + 36)] > 2:
                            revert with 'NH{q', 33
                        if cd[((96 * idx) + arg1 + 36)] == 2:
                            _572 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_572] = 16
                            mem[_572 + 32] = 'Tangle.Reflector'
                            _588 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_588] = 16
                            mem[_588 + 32] = 'Tangle.Reflector'
                            if not stor9AD5.length:
                                revert with 0, 'reflect remove'
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                if stor9AD5.length < 1:
                                    revert with 'NH{q', 17
                                if stor9AD5.length - 1 >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                _782 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_782] = address(stor9AD5[stor9AD5.length].field_0)
                                mem[_782 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                            else:
                                if 0 >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                    revert with 0, 'reflect remove'
                                if stor9AD5.length < 1:
                                    revert with 'NH{q', 17
                                if stor9AD5.length - 1 >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                _848 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_848] = address(stor9AD5[stor9AD5.length].field_0)
                                mem[_848 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                            if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                    revert with 'NH{q', 50
                                address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                            if not stor9AD5.length:
                                revert with 'NH{q', 49
                            Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                            stor9AD5.length--
                            mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                    else:
                        _542 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_542] = 16
                        mem[_542 + 32] = 'Tangle.Reflector'
                        mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                            revert with 'NH{q', 50
                        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                        _574 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_574] = 16
                        mem[_574 + 32] = 'Tangle.Reflector'
                        if not stor9AD5.length:
                            revert with 0, 'reflect change'
                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                            if bool(uint8(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160)) == bool(cd[((96 * idx) + arg1 + 100)]):
                                revert with 0, 'reflect change'
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(cd[((96 * idx) + arg1 + 68)])
                            Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(cd[((96 * idx) + arg1 + 100)]))
                            if cd[((96 * idx) + arg1 + 36)] > 2:
                                revert with 'NH{q', 33
                            if cd[((96 * idx) + arg1 + 36)] == 2:
                                _886 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_886] = 16
                                mem[_886 + 32] = 'Tangle.Reflector'
                                _922 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_922] = 16
                                mem[_922 + 32] = 'Tangle.Reflector'
                                if not stor9AD5.length:
                                    revert with 0, 'reflect remove'
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1134 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1134] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1134 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                else:
                                    if 0 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                        revert with 0, 'reflect remove'
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1220 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1220] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1220 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                    stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                    Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                                if not stor9AD5.length:
                                    revert with 'NH{q', 49
                                Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                                stor9AD5.length--
                                mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                        else:
                            if 0 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                revert with 0, 'reflect change'
                            if bool(uint8(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160)) == bool(cd[((96 * idx) + arg1 + 100)]):
                                revert with 0, 'reflect change'
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(cd[((96 * idx) + arg1 + 68)])
                            Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(cd[((96 * idx) + arg1 + 100)]))
                            if cd[((96 * idx) + arg1 + 36)] > 2:
                                revert with 'NH{q', 33
                            if cd[((96 * idx) + arg1 + 36)] == 2:
                                _954 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_954] = 16
                                mem[_954 + 32] = 'Tangle.Reflector'
                                _984 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_984] = 16
                                mem[_984 + 32] = 'Tangle.Reflector'
                                if not stor9AD5.length:
                                    revert with 0, 'reflect remove'
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1223 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1223] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1223 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                else:
                                    if 0 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                        revert with 0, 'reflect remove'
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1298 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1298] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1298 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                    stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                    Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                                if not stor9AD5.length:
                                    revert with 'NH{q', 49
                                Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                                stor9AD5.length--
                                mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                else:
                    if cd[((96 * idx) + arg1 + 36)] != 1:
                        if cd[((96 * idx) + arg1 + 36)] > 2:
                            revert with 'NH{q', 33
                        if cd[((96 * idx) + arg1 + 36)] != 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        _550 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_550] = 16
                        mem[_550 + 32] = 'Tangle.Reflector'
                        _570 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_570] = 16
                        mem[_570 + 32] = 'Tangle.Reflector'
                        if not stor9AD5.length:
                            revert with 0, 'reflect remove'
                        mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                            if stor9AD5.length < 1:
                                revert with 'NH{q', 17
                            if stor9AD5.length - 1 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            _749 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_749] = address(stor9AD5[stor9AD5.length].field_0)
                            mem[_749 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                        else:
                            if 0 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                revert with 0, 'reflect remove'
                            if stor9AD5.length < 1:
                                revert with 'NH{q', 17
                            if stor9AD5.length - 1 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            _814 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_814] = address(stor9AD5[stor9AD5.length].field_0)
                            mem[_814 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                        if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                            stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                revert with 'NH{q', 50
                            address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                            Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                        if not stor9AD5.length:
                            revert with 'NH{q', 49
                        Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                        stor9AD5.length--
                        mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                        mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                        stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                        if s:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        _523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_523] = 16
                        mem[_523 + 32] = 'Tangle.Reflector'
                        mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                            revert with 'NH{q', 50
                        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                        _552 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_552] = 16
                        mem[_552 + 32] = 'Tangle.Reflector'
                        if not stor9AD5.length:
                            revert with 0, 'reflect change'
                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                            if bool(uint8(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160)) == bool(cd[((96 * idx) + arg1 + 100)]):
                                revert with 0, 'reflect change'
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(cd[((96 * idx) + arg1 + 68)])
                            Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(cd[((96 * idx) + arg1 + 100)]))
                            if cd[((96 * idx) + arg1 + 36)] > 2:
                                revert with 'NH{q', 33
                            if not s:
                                if cd[((96 * idx) + arg1 + 36)] == 2:
                                    _881 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_881] = 16
                                    mem[_881 + 32] = 'Tangle.Reflector'
                                    _911 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_911] = 16
                                    mem[_911 + 32] = 'Tangle.Reflector'
                                    if not stor9AD5.length:
                                        revert with 0, 'reflect remove'
                                    mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                        if stor9AD5.length < 1:
                                            revert with 'NH{q', 17
                                        if stor9AD5.length - 1 >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                        _1129 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1129] = address(stor9AD5[stor9AD5.length].field_0)
                                        mem[_1129 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                    else:
                                        if 0 >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                            revert with 0, 'reflect remove'
                                        if stor9AD5.length < 1:
                                            revert with 'NH{q', 17
                                        if stor9AD5.length - 1 >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                        _1207 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1207] = address(stor9AD5[stor9AD5.length].field_0)
                                        mem[_1207 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                    if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                        stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                        Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                                    if not stor9AD5.length:
                                        revert with 'NH{q', 49
                                    Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                                    stor9AD5.length--
                                    mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                                    mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                    stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                            else:
                                if cd[((96 * idx) + arg1 + 36)] != 2:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s
                                    continue 
                                _838 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_838] = 16
                                mem[_838 + 32] = 'Tangle.Reflector'
                                _880 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_880] = 16
                                mem[_880 + 32] = 'Tangle.Reflector'
                                if not stor9AD5.length:
                                    revert with 0, 'reflect remove'
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1098 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1098] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1098 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                else:
                                    if 0 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                        revert with 0, 'reflect remove'
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1175 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1175] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1175 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                    stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                    Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                                if not stor9AD5.length:
                                    revert with 'NH{q', 49
                                Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                                stor9AD5.length--
                                mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                                if s:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if 0 >= stor9AD5.length:
                                revert with 'NH{q', 50
                            if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                revert with 0, 'reflect change'
                            if bool(uint8(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160)) == bool(cd[((96 * idx) + arg1 + 100)]):
                                revert with 0, 'reflect change'
                            mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                            if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                revert with 'NH{q', 50
                            mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                            address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(cd[((96 * idx) + arg1 + 68)])
                            Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(cd[((96 * idx) + arg1 + 100)]))
                            if cd[((96 * idx) + arg1 + 36)] > 2:
                                revert with 'NH{q', 33
                            if not s:
                                if cd[((96 * idx) + arg1 + 36)] == 2:
                                    _951 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_951] = 16
                                    mem[_951 + 32] = 'Tangle.Reflector'
                                    _981 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_981] = 16
                                    mem[_981 + 32] = 'Tangle.Reflector'
                                    if not stor9AD5.length:
                                        revert with 0, 'reflect remove'
                                    mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                        if stor9AD5.length < 1:
                                            revert with 'NH{q', 17
                                        if stor9AD5.length - 1 >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                        _1212 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1212] = address(stor9AD5[stor9AD5.length].field_0)
                                        mem[_1212 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                    else:
                                        if 0 >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                            revert with 0, 'reflect remove'
                                        if stor9AD5.length < 1:
                                            revert with 'NH{q', 17
                                        if stor9AD5.length - 1 >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                        _1283 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1283] = address(stor9AD5[stor9AD5.length].field_0)
                                        mem[_1283 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                    if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                        stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                        if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                            revert with 'NH{q', 50
                                        address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                        Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                                    if not stor9AD5.length:
                                        revert with 'NH{q', 49
                                    Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                                    stor9AD5.length--
                                    mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                                    mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                    stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                            else:
                                if cd[((96 * idx) + arg1 + 36)] != 2:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s
                                    continue 
                                _912 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_912] = 16
                                mem[_912 + 32] = 'Tangle.Reflector'
                                _950 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_950] = 16
                                mem[_950 + 32] = 'Tangle.Reflector'
                                if not stor9AD5.length:
                                    revert with 0, 'reflect remove'
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]:
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1180 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1180] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1180 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                else:
                                    if 0 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    if address(stor9AD5.field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                        revert with 0, 'reflect remove'
                                    if stor9AD5.length < 1:
                                        revert with 'NH{q', 17
                                    if stor9AD5.length - 1 >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8764
                                    _1258 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1258] = address(stor9AD5[stor9AD5.length].field_0)
                                    mem[_1258 + 32] = bool(uint8(stor9AD5[stor9AD5.length].field_0))
                                if address(stor9AD5[stor9AD5.length].field_0) != address(cd[((96 * idx) + arg1 + 68)]):
                                    stor9AD5[address(stor9AD5[stor9AD5.length].field_0)] = stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]
                                    if stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] >= stor9AD5.length:
                                        revert with 'NH{q', 50
                                    address(stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_0) = address(stor9AD5[stor9AD5.length].field_0)
                                    Mask(96, 0, stor9AD5[stor9AD5[address(cd[((96 * idx) + arg1 + 68)])]].field_160) = Mask(96, 0, bool(uint8(stor9AD5[stor9AD5.length].field_0)))
                                if not stor9AD5.length:
                                    revert with 'NH{q', 49
                                Mask(168, 0, stor9AD5[stor9AD5.length].field_0) = 0
                                stor9AD5.length--
                                mem[0] = address(cd[((96 * idx) + arg1 + 68)])
                                mem[32] = 0x9ad58d1cb65ce66d2d00d857d7f493706df2d7ae7ae2e6c5d2c15b80eb8f8765
                                stor9AD5[address(cd[((96 * idx) + arg1 + 68)])] = 0
                                if s:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s
                                    continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = 1
        continue 
    if s:
        _431 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = arg1.length
        idx = 0
        s = arg1 + 36
        t = mem[64] + 64
        while idx < arg1.length:
            require cd[s] < 3
            mem[t] = cd[s]
            require cd[(s + 32)] == address(cd[(s + 32)])
            mem[t + 32] = address(cd[(s + 32)])
            require cd[(s + 64)] == bool(cd[(s + 64)])
            mem[t + 64] = bool(cd[(s + 64)])
            idx = idx + 1
            s = s + 96
            t = t + 96
            continue 
        emit 0xad96cc14: mem[mem[64] len _431 + (96 * arg1.length) + -mem[64] + 64]
}



}
