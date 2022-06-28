contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
uint256 sub_4c822e6b;
uint256 serviceFee;
address stor4;
uint256 sub_bdbd96ef;
uint256 sub_e275c997;
uint256 sub_445c9e0d;
mapping of struct stor8;
mapping of struct userHistory;

function userHistory(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userHistory[arg1].field_0, userHistory[arg1].field_256, userHistory[arg1].field_512
}

function sub_270e5326(?) {
    return address(stor1.length)
}

function sub_445c9e0d(?) {
    return sub_445c9e0d
}

function sub_4c822e6b(?) {
    return sub_4c822e6b
}

function sub_678e74de(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return userHistory[address(arg1)][3][arg2].field_0
}

function serviceFee() {
    return serviceFee
}

function owner() {
    return owner
}

function sub_9f0b0ef3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return userHistory[address(arg1)][4][arg2].field_0
}

function sub_bdbd96ef(?) {
    return sub_bdbd96ef
}

function sub_e275c997(?) {
    return sub_e275c997
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
}

function setServiceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    serviceFee = arg1
    emit 0x67c99114: arg1
}

function setBypassAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4c822e6b = arg1
    emit 0xb1860c32: arg1
}

function cancelTrade(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor8[arg1].field_512) != msg.sender:
        revert with 0, 'cancelTrade: not trade creator'
    uint8(stor8[arg1].field_1536) = 1
}

function sub_e9667336(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor1.length) = address(arg1)
    emit 0xeb9ba8a5: address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_65b6c33d(?) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 8
    mem[64] = (32 * stor8[arg1].field_0) + 128
    mem[96] = stor8[arg1].field_0
    s = 128
    idx = 0
    while idx < stor8[arg1].field_0:
        mem[0] = sha3(arg1, 8)
        _40 = mem[64]
        mem[64] = mem[64] + 128
        mem[_40] = address(stor8[arg1][idx].field_0)
        mem[_40 + 32] = uint16(stor8[arg1][idx].field_160)
        _41 = mem[64]
        mem[64] = mem[64] + (32 * stor8[arg1][idx].field_256) + 32
        mem[_41] = stor8[arg1][idx].field_256
        if not stor8[arg1][idx].field_256:
            mem[_40 + 64] = _41
            _42 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
            mem[_42] = stor8[arg1][idx].field_512
            if stor8[arg1][idx].field_512:
                mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                mem[_42 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                t = _42 + 32
                u = sha3(mem[0])
                while _42 + (32 * stor8[arg1][idx].field_512) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_40 + 96] = _42
        else:
            mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 1
            mem[_41 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
            t = _41 + 32
            u = sha3(mem[0])
            while _41 + (32 * stor8[arg1][idx].field_256) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_40 + 64] = _41
            _101 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
            mem[_101] = stor8[arg1][idx].field_512
            if stor8[arg1][idx].field_512:
                mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                mem[_101 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                t = _101 + 32
                u = sha3(mem[0])
                while _101 + (32 * stor8[arg1][idx].field_512) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_40 + 96] = _101
        mem[s] = _40
        s = s + 32
        idx = idx + 1
        continue 
    _38 = mem[64]
    mem[64] = mem[64] + (32 * stor8[arg1].field_256) + 32
    mem[_38] = stor8[arg1].field_256
    s = _38 + 32
    idx = 0
    while idx < stor8[arg1].field_256:
        mem[0] = sha3(arg1, 8) + 1
        _74 = mem[64]
        mem[64] = mem[64] + 128
        mem[_74] = address(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_0)
        mem[_74 + 32] = uint16(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_160)
        _75 = mem[64]
        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
        mem[_75] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256
        if not stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256:
            mem[_74 + 64] = _75
            _77 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
            mem[_77] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
            if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                mem[_77 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                t = _77 + 32
                u = sha3(mem[0])
                while _77 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_74 + 96] = _77
        else:
            mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 1
            mem[_75 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
            t = _75 + 32
            u = sha3(mem[0])
            while _75 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_74 + 64] = _75
            _123 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
            mem[_123] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
            if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                mem[_123 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                t = _123 + 32
                u = sha3(mem[0])
                while _123 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_74 + 96] = _123
        mem[s] = _74
        s = s + 32
        idx = idx + 1
        continue 
    _76 = mem[64]
    mem[mem[64]] = 192
    _80 = mem[96]
    mem[mem[64] + 192] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 224
    u = mem[64] + 224
    while idx < _80:
        mem[u] = t + -_76 - 224
        _102 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_102 + 62 len 2]
        _105 = mem[_102 + 64]
        mem[t + 64] = 128
        _107 = mem[_105]
        mem[t + 128] = mem[_105]
        v = 0
        w = _105 + 32
        x = t + 160
        while v < _107:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _131 = mem[_102 + 96]
        mem[t + 96] = (32 * _107) + 160
        _133 = mem[_131]
        mem[t + (32 * _107) + 160] = mem[_131]
        v = 0
        w = _131 + 32
        x = t + (32 * _107) + 192
        while v < _133:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + (32 * _107) + (32 * _133) + 192
        u = u + 32
        continue 
    mem[_76 + 32] = t - _76
    _108 = mem[_38]
    mem[t] = mem[_38]
    idx = 0
    s = _38 + 32
    u = t + (32 * _108) + 32
    v = t + 32
    while idx < _108:
        mem[v] = u + -t - 32
        _124 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        mem[u + 32] = mem[_124 + 62 len 2]
        _127 = mem[_124 + 64]
        mem[u + 64] = 128
        _130 = mem[_127]
        mem[u + 128] = mem[_127]
        t = 0
        w = _127 + 32
        x = u + 160
        while t < _130:
            mem[x] = mem[w]
            t = t + 1
            w = w + 32
            x = x + 32
            continue 
        _141 = mem[_124 + 96]
        mem[u + 96] = (32 * _130) + 160
        _142 = mem[_141]
        mem[u + (32 * _130) + 160] = mem[_141]
        t = 0
        w = _141 + 32
        x = u + (32 * _130) + 192
        while t < _142:
            mem[x] = mem[w]
            t = t + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        u = u + (32 * _130) + (32 * _142) + 192
        v = v + 32
        continue 
    mem[_76 + 64] = address(stor8[arg1].field_512)
    mem[_76 + 96] = address(stor8[arg1].field_768)
    mem[_76 + 128] = stor8[arg1].field_1024
    mem[_76 + 160] = bool(uint8(stor8[arg1].field_1536))
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_708e5906(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    mem[0] = arg1
    mem[32] = 8
    mem[64] = (32 * stor8[arg1].field_0) + 352
    mem[320] = stor8[arg1].field_0
    s = 352
    idx = 0
    while idx < stor8[arg1].field_0:
        mem[0] = sha3(arg1, 8)
        _460 = mem[64]
        mem[64] = mem[64] + 128
        mem[_460] = address(stor8[arg1][idx].field_0)
        mem[_460 + 32] = uint16(stor8[arg1][idx].field_160)
        _461 = mem[64]
        mem[64] = mem[64] + (32 * stor8[arg1][idx].field_256) + 32
        mem[_461] = stor8[arg1][idx].field_256
        if not stor8[arg1][idx].field_256:
            mem[_460 + 64] = _461
            _462 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
            mem[_462] = stor8[arg1][idx].field_512
            if stor8[arg1][idx].field_512:
                mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                mem[_462 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                t = _462 + 32
                u = sha3(mem[0])
                while _462 + (32 * stor8[arg1][idx].field_512) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_460 + 96] = _462
        else:
            mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 1
            mem[_461 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
            t = _461 + 32
            u = sha3(mem[0])
            while _461 + (32 * stor8[arg1][idx].field_256) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_460 + 64] = _461
            _1369 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
            mem[_1369] = stor8[arg1][idx].field_512
            if stor8[arg1][idx].field_512:
                mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                mem[_1369 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                t = _1369 + 32
                u = sha3(mem[0])
                while _1369 + (32 * stor8[arg1][idx].field_512) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_460 + 96] = _1369
        mem[s] = _460
        s = s + 32
        idx = idx + 1
        continue 
    mem[96] = 320
    _458 = mem[64]
    mem[64] = mem[64] + (32 * stor8[arg1].field_256) + 32
    mem[_458] = stor8[arg1].field_256
    s = _458 + 32
    idx = 0
    while idx < stor8[arg1].field_256:
        mem[0] = sha3(arg1, 8) + 1
        _915 = mem[64]
        mem[64] = mem[64] + 128
        mem[_915] = address(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_0)
        mem[_915 + 32] = uint16(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_160)
        _916 = mem[64]
        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
        mem[_916] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256
        if not stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256:
            mem[_915 + 64] = _916
            _918 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
            mem[_918] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
            if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                mem[_918 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                t = _918 + 32
                u = sha3(mem[0])
                while _918 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_915 + 96] = _918
        else:
            mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 1
            mem[_916 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
            t = _916 + 32
            u = sha3(mem[0])
            while _916 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_915 + 64] = _916
            _1791 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
            mem[_1791] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
            if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                mem[_1791 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                t = _1791 + 32
                u = sha3(mem[0])
                while _1791 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_915 + 96] = _1791
        mem[s] = _915
        s = s + 32
        idx = idx + 1
        continue 
    mem[128] = _458
    mem[160] = address(stor8[arg1].field_512)
    mem[192] = address(stor8[arg1].field_768)
    mem[224] = stor8[arg1].field_1024
    mem[256] = stor8[arg1].field_1280
    mem[288] = bool(uint8(stor8[arg1].field_1536))
    if address(stor8[arg1].field_512) == address(arg2):
        if address(arg2) != address(stor8[arg1].field_512):
            if 0 >= mem[_458]:
                revert with 0, 50
            if mem[mem[_458 + 32] + 12 len 20]:
                _1362 = mem[_458]
                idx = 0
                while uint8(idx) < _1362:
                    if uint8(idx) >= mem[mem[128]]:
                        revert with 0, 50
                    if uint8(idx) >= mem[mem[128]]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                            revert with 0, 50
                        _1433 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        _1465 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                        _1466 = mem[192]
                        mem[mem[64] + 4] = mem[204 len 20]
                        require ext_code.size(address(_1465))
                        staticcall address(_1465).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_1466)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1551 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1551] < _1433:
                            return 0
                    else:
                        if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 777:
                            if uint8(idx) < mem[mem[128]]:
                                if 721 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                                    if uint8(idx) < mem[mem[128]]:
                                        if uint8(var51003) >= mem[mem[mem[(32 * uint8(idx)) + var51002 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[128]]:
                                            if uint8(idx) < mem[mem[128]]:
                                                _2654 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                                _2655 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]
                                                t = mem[128]
                                                t = mem[mem[(32 * uint8(idx)) + var55002 + 32] + 12 len 20]
                                                u = var55003
                                                s = var55004
                                                while uint8(s) < _2655:
                                                    _2665 = mem[(32 * uint8(s)) + _2654 + 32]
                                                    mem[mem[64] + 4] = mem[(32 * uint8(s)) + _2654 + 32]
                                                    require ext_code.size(t)
                                                    staticcall t.ownerOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _2665
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2677 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_2677] == mem[_2677 + 12 len 20]
                                                    if mem[_2677 + 12 len 20] != u:
                                                        return 0
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    t = mem[128]
                                                    t = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 12 len 20]
                                                    u = mem[204 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                else:
                                    if uint8(idx) < mem[mem[128]]:
                                        if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 1155:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[128]]:
                                            if uint8(var52003) >= mem[mem[mem[(32 * uint8(idx)) + var52002 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[mem[128]]:
                                                _2438 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]
                                                _2439 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]
                                                t = mem[128]
                                                s = var54001
                                                while uint8(s) < _2439:
                                                    _2465 = mem[(32 * uint8(s)) + _2438 + 32]
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    _2490 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(s) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        revert with 0, 50
                                                    _2533 = mem[(32 * uint8(s)) + mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64] + 32]
                                                    mem[mem[64] + 4] = mem[204 len 20]
                                                    mem[mem[64] + 36] = _2533
                                                    require ext_code.size(address(_2490))
                                                    staticcall address(_2490).balanceOf(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4], _2533
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2549 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_2549] < _2465:
                                                        return 0
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    t = mem[128]
                                                    s = uint8(s) + 1
                                                    continue 
                            revert with 0, 50
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                            revert with 0, 50
                        _1497 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        _1524 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(address(_1524))
                        staticcall address(_1524).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1594 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1594] < _1497:
                            return 0
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
        else:
            if not mem[mem[96]]:
                revert with 0, 50
            if mem[mem[mem[96] + 32] + 12 len 20]:
                _1364 = mem[mem[96]]
                idx = 0
                while uint8(idx) < _1364:
                    if uint8(idx) >= mem[mem[96]]:
                        revert with 0, 50
                    if uint8(idx) >= mem[mem[96]]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2]:
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                            revert with 0, 50
                        _1441 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        _1474 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                        _1475 = mem[160]
                        mem[mem[64] + 4] = mem[172 len 20]
                        require ext_code.size(address(_1474))
                        staticcall address(_1474).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_1475)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1556 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1556] < _1441:
                            return 0
                    else:
                        if mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2] != 777:
                            if uint8(idx) < mem[mem[96]]:
                                if 721 == mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2]:
                                    if uint8(idx) < mem[mem[96]]:
                                        if uint8(var51003) >= mem[mem[mem[(32 * uint8(idx)) + var51002 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[96]]:
                                            if uint8(idx) < mem[mem[96]]:
                                                _2657 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]
                                                _2658 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]
                                                t = mem[96]
                                                t = mem[mem[(32 * uint8(idx)) + var55002 + 32] + 12 len 20]
                                                u = var55003
                                                s = var55004
                                                while uint8(s) < _2658:
                                                    _2667 = mem[(32 * uint8(s)) + _2657 + 32]
                                                    mem[mem[64] + 4] = mem[(32 * uint8(s)) + _2657 + 32]
                                                    require ext_code.size(t)
                                                    staticcall t.ownerOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _2667
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2678 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_2678] == mem[_2678 + 12 len 20]
                                                    if mem[_2678 + 12 len 20] != u:
                                                        return 0
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[96]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[96]]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[mem[96]]:
                                                        revert with 0, 50
                                                    t = mem[96]
                                                    t = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 12 len 20]
                                                    u = mem[172 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                else:
                                    if uint8(idx) < mem[mem[96]]:
                                        if mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2] != 1155:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[96]]:
                                            if uint8(var52003) >= mem[mem[mem[(32 * uint8(idx)) + var52002 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[mem[96]]:
                                                _2445 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]
                                                _2446 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]
                                                t = mem[96]
                                                s = var54001
                                                while uint8(s) < _2446:
                                                    _2471 = mem[(32 * uint8(s)) + _2445 + 32]
                                                    if uint8(idx) >= mem[mem[96]]:
                                                        revert with 0, 50
                                                    _2497 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(s) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        revert with 0, 50
                                                    _2535 = mem[(32 * uint8(s)) + mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64] + 32]
                                                    mem[mem[64] + 4] = mem[172 len 20]
                                                    mem[mem[64] + 36] = _2535
                                                    require ext_code.size(address(_2497))
                                                    staticcall address(_2497).balanceOf(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4], _2535
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2551 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_2551] < _2471:
                                                        return 0
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[96]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[96]]:
                                                        revert with 0, 50
                                                    t = mem[96]
                                                    s = uint8(s) + 1
                                                    continue 
                            revert with 0, 50
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                            revert with 0, 50
                        _1503 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        _1531 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(address(_1531))
                        staticcall address(_1531).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1603 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1603] < _1503:
                            return 0
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
    else:
        if address(arg2) != address(stor8[arg1].field_768):
            revert with 0, 'hasTradableBal: not apart of trade'
        if address(arg2) != address(stor8[arg1].field_512):
            if 0 >= mem[_458]:
                revert with 0, 50
            if mem[mem[_458 + 32] + 12 len 20]:
                _1366 = mem[_458]
                idx = 0
                while uint8(idx) < _1366:
                    if uint8(idx) >= mem[mem[128]]:
                        revert with 0, 50
                    if uint8(idx) >= mem[mem[128]]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                            revert with 0, 50
                        _1448 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        _1483 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                        _1484 = mem[192]
                        mem[mem[64] + 4] = mem[204 len 20]
                        require ext_code.size(address(_1483))
                        staticcall address(_1483).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_1484)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1561 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1561] < _1448:
                            return 0
                    else:
                        if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 777:
                            if uint8(idx) < mem[mem[128]]:
                                if 721 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                                    if uint8(idx) < mem[mem[128]]:
                                        if uint8(var52003) >= mem[mem[mem[(32 * uint8(idx)) + var52002 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[128]]:
                                            if uint8(idx) < mem[mem[128]]:
                                                _2660 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                                _2661 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]
                                                t = mem[128]
                                                t = mem[mem[(32 * uint8(idx)) + var56002 + 32] + 12 len 20]
                                                u = var56003
                                                s = var56004
                                                while uint8(s) < _2661:
                                                    _2669 = mem[(32 * uint8(s)) + _2660 + 32]
                                                    mem[mem[64] + 4] = mem[(32 * uint8(s)) + _2660 + 32]
                                                    require ext_code.size(t)
                                                    staticcall t.ownerOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _2669
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2679 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_2679] == mem[_2679 + 12 len 20]
                                                    if mem[_2679 + 12 len 20] != u:
                                                        return 0
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    t = mem[128]
                                                    t = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 12 len 20]
                                                    u = mem[204 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                else:
                                    if uint8(idx) < mem[mem[128]]:
                                        if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 1155:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[128]]:
                                            if uint8(var53003) >= mem[mem[mem[(32 * uint8(idx)) + var53002 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[mem[128]]:
                                                _2452 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]
                                                _2453 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]
                                                t = mem[128]
                                                s = var55001
                                                while uint8(s) < _2453:
                                                    _2477 = mem[(32 * uint8(s)) + _2452 + 32]
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    _2504 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(s) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        revert with 0, 50
                                                    _2537 = mem[(32 * uint8(s)) + mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64] + 32]
                                                    mem[mem[64] + 4] = mem[204 len 20]
                                                    mem[mem[64] + 36] = _2537
                                                    require ext_code.size(address(_2504))
                                                    staticcall address(_2504).balanceOf(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4], _2537
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2553 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_2553] < _2477:
                                                        return 0
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    t = mem[128]
                                                    s = uint8(s) + 1
                                                    continue 
                            revert with 0, 50
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                            revert with 0, 50
                        _1509 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        _1538 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(address(_1538))
                        staticcall address(_1538).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1612 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1612] < _1509:
                            return 0
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
        else:
            if not mem[mem[96]]:
                revert with 0, 50
            if mem[mem[mem[96] + 32] + 12 len 20]:
                _1368 = mem[mem[96]]
                idx = 0
                while uint8(idx) < _1368:
                    if uint8(idx) >= mem[mem[96]]:
                        revert with 0, 50
                    if uint8(idx) >= mem[mem[96]]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2]:
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                            revert with 0, 50
                        _1456 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        _1492 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                        _1493 = mem[160]
                        mem[mem[64] + 4] = mem[172 len 20]
                        require ext_code.size(address(_1492))
                        staticcall address(_1492).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_1493)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1566 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1566] < _1456:
                            return 0
                    else:
                        if mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2] != 777:
                            if uint8(idx) < mem[mem[96]]:
                                if 721 == mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2]:
                                    if uint8(idx) < mem[mem[96]]:
                                        if uint8(var52003) >= mem[mem[mem[(32 * uint8(idx)) + var52002 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[96]]:
                                            if uint8(idx) < mem[mem[96]]:
                                                _2663 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]
                                                _2664 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]
                                                t = mem[96]
                                                t = mem[mem[(32 * uint8(idx)) + var56002 + 32] + 12 len 20]
                                                u = var56003
                                                s = var56004
                                                while uint8(s) < _2664:
                                                    _2671 = mem[(32 * uint8(s)) + _2663 + 32]
                                                    mem[mem[64] + 4] = mem[(32 * uint8(s)) + _2663 + 32]
                                                    require ext_code.size(t)
                                                    staticcall t.ownerOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _2671
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2680 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_2680] == mem[_2680 + 12 len 20]
                                                    if mem[_2680 + 12 len 20] != u:
                                                        return 0
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[96]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[96]]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[mem[96]]:
                                                        revert with 0, 50
                                                    t = mem[96]
                                                    t = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 12 len 20]
                                                    u = mem[172 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                else:
                                    if uint8(idx) < mem[mem[96]]:
                                        if mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2] != 1155:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[96]]:
                                            if uint8(var53003) >= mem[mem[mem[(32 * uint8(idx)) + var53002 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[mem[96]]:
                                                _2459 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]
                                                _2460 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]
                                                t = mem[96]
                                                s = var55001
                                                while uint8(s) < _2460:
                                                    _2483 = mem[(32 * uint8(s)) + _2459 + 32]
                                                    if uint8(idx) >= mem[mem[96]]:
                                                        revert with 0, 50
                                                    _2511 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(s) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        revert with 0, 50
                                                    _2539 = mem[(32 * uint8(s)) + mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64] + 32]
                                                    mem[mem[64] + 4] = mem[172 len 20]
                                                    mem[mem[64] + 36] = _2539
                                                    require ext_code.size(address(_2511))
                                                    staticcall address(_2511).balanceOf(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4], _2539
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2555 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_2555] < _2483:
                                                        return 0
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[96]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[96]]:
                                                        revert with 0, 50
                                                    t = mem[96]
                                                    s = uint8(s) + 1
                                                    continue 
                            revert with 0, 50
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                            revert with 0, 50
                        _1515 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        _1545 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(address(_1545))
                        staticcall address(_1545).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1621 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1621] < _1515:
                            return 0
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
    return 1
}

function acceptTrade(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor8[arg1].field_1536):
        revert with 0, 'acceptTrade: trade inactive'
    if not stor8[arg1].field_1280:
        if not address(stor8[arg1].field_768):
            stor8[arg1].field_768 = msg.sender or Mask(96, 160, stor8[arg1].field_768)
            mem[0] = arg1
            mem[32] = 8
            mem[64] = (32 * stor8[arg1].field_0) + 352
            mem[320] = stor8[arg1].field_0
            s = 352
            idx = 0
            while idx < stor8[arg1].field_0:
                mem[0] = sha3(arg1, 8)
                _1824 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1824] = address(stor8[arg1][idx].field_0)
                mem[_1824 + 32] = uint16(stor8[arg1][idx].field_160)
                _1825 = mem[64]
                mem[64] = mem[64] + (32 * stor8[arg1][idx].field_256) + 32
                mem[_1825] = stor8[arg1][idx].field_256
                if not stor8[arg1][idx].field_256:
                    mem[_1824 + 64] = _1825
                    _1838 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
                    mem[_1838] = stor8[arg1][idx].field_512
                    if stor8[arg1][idx].field_512:
                        mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                        mem[_1838 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                        t = _1838 + 32
                        u = sha3(mem[0])
                        while _1838 + (32 * stor8[arg1][idx].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1824 + 96] = _1838
                else:
                    mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 1
                    mem[_1825 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
                    t = _1825 + 32
                    u = sha3(mem[0])
                    while _1825 + (32 * stor8[arg1][idx].field_256) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1824 + 64] = _1825
                    _5406 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
                    mem[_5406] = stor8[arg1][idx].field_512
                    if stor8[arg1][idx].field_512:
                        mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                        mem[_5406 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                        t = _5406 + 32
                        u = sha3(mem[0])
                        while _5406 + (32 * stor8[arg1][idx].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1824 + 96] = _5406
                mem[s] = _1824
                s = s + 32
                idx = idx + 1
                continue 
            mem[96] = 320
            _1822 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1].field_256) + 32
            mem[_1822] = stor8[arg1].field_256
            s = _1822 + 32
            idx = 0
            while idx < stor8[arg1].field_256:
                mem[0] = sha3(arg1, 8) + 1
                _3629 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3629] = address(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                mem[_3629 + 32] = uint16(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                _3630 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                mem[_3630] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256
                if not stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                    mem[_3629 + 64] = _3630
                    _3648 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                    mem[_3648] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
                    if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                        mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                        mem[_3648 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                        t = _3648 + 32
                        u = sha3(mem[0])
                        while _3648 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_3629 + 96] = _3648
                else:
                    mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 1
                    mem[_3630 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                    t = _3630 + 32
                    u = sha3(mem[0])
                    while _3630 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_3629 + 64] = _3630
                    _7124 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                    mem[_7124] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
                    if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                        mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                        mem[_7124 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                        t = _7124 + 32
                        u = sha3(mem[0])
                        while _7124 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_3629 + 96] = _7124
                mem[s] = _3629
                s = s + 32
                idx = idx + 1
                continue 
            mem[128] = _1822
            mem[160] = address(stor8[arg1].field_512)
            mem[192] = address(stor8[arg1].field_768)
            mem[224] = stor8[arg1].field_1024
            mem[256] = stor8[arg1].field_1280
            mem[288] = bool(uint8(stor8[arg1].field_1536))
            if not mem[mem[96]]:
                revert with 0, 50
            if not mem[mem[mem[96] + 32] + 12 len 20]:
                if 0 >= mem[_1822]:
                    revert with 0, 50
                if mem[mem[_1822 + 32] + 12 len 20]:
                    _5403 = mem[_1822]
                    idx = 0
                    while uint8(idx) < _5403:
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if 20 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                            _5509 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                            _5511 = mem[160]
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                revert with 0, 50
                            _5644 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                            mem[mem[64] + 4] = mem[204 len 20]
                            mem[mem[64] + 36] = address(_5511)
                            mem[mem[64] + 68] = _5644
                            require ext_code.size(address(_5509))
                            call address(_5509).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5511), _5644
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5893 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5893] == bool(mem[_5893])
                        else:
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 777:
                                if 721 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                                    if uint8(idx) < mem[mem[128]]:
                                        if uint8(var46003) >= mem[mem[mem[(32 * uint8(idx)) + var46002 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[128]]:
                                            if uint8(idx) < mem[mem[128]]:
                                                _8731 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                                _8732 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]
                                                t = mem[128]
                                                t = mem[160]
                                                u = mem[192]
                                                v = mem[mem[(32 * uint8(idx)) + var50002 + 32] + 12 len 20]
                                                s = var50003
                                                while uint8(s) < _8732:
                                                    _8778 = mem[(32 * uint8(s)) + _8731 + 32]
                                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = address(u)
                                                    mem[mem[64] + 36] = address(t)
                                                    mem[mem[64] + 68] = _8778
                                                    require ext_code.size(v)
                                                    call v.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args address(u), address(t), _8778
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    t = mem[128]
                                                    t = mem[160]
                                                    u = mem[192]
                                                    v = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 12 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 1155:
                                    revert with 0, 'executeTrade: user 2 unsupported erc type'
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]] <= 1:
                                    _6103 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6104 = mem[192]
                                    _6105 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                        revert with 0, 50
                                    _6370 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64] + 32]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _6654 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_6104)
                                    mem[mem[64] + 36] = address(_6105)
                                    mem[mem[64] + 68] = _6370
                                    mem[mem[64] + 100] = _6654
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(address(_6103))
                                    call address(_6103).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_6104), address(_6105), _6370, _6654, 160, 0
                                else:
                                    _6109 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6110 = mem[192]
                                    _6111 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _6242 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _6374 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]
                                    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_6110)
                                    mem[mem[64] + 36] = address(_6111)
                                    mem[mem[64] + 68] = 160
                                    _6656 = mem[_6242]
                                    mem[mem[64] + 164] = mem[_6242]
                                    s = 0
                                    t = _6242 + 32
                                    u = mem[64] + 196
                                    while s < _6656:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = (32 * _6656) + 192
                                    _7214 = mem[_6374]
                                    mem[mem[64] + (32 * _6656) + 196] = mem[_6374]
                                    s = 0
                                    t = _6374 + 32
                                    u = mem[64] + (32 * _6656) + 228
                                    while s < _7214:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 132] = (32 * _6656) + (32 * _7214) + 224
                                    mem[mem[64] + (32 * _6656) + (32 * _7214) + 228] = 0
                                    require ext_code.size(address(_6109))
                                    call address(_6109).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_6110), address(_6111), 160, (32 * _6656) + 192, (32 * _6656) + (32 * _7214) + 224, mem[mem[64] + 164 len (32 * _6656) + (32 * _7214) + 64], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _5641 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_5641))
                                staticcall address(_5641).isOperatorFor(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args this.address, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5739 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5739] == bool(mem[_5739])
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if not mem[_5739]:
                                    _6377 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6379 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _6657 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64] + 4] = mem[204 len 20]
                                    mem[mem[64] + 36] = address(_6379)
                                    mem[mem[64] + 68] = _6657
                                    require ext_code.size(address(_6377))
                                    call address(_6377).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_6379), _6657
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6975 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6975] == bool(mem[_6975])
                                else:
                                    _6383 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6384 = mem[192]
                                    _6385 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _6659 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0x62ad1b8300000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_6384)
                                    mem[mem[64] + 36] = address(_6385)
                                    mem[mem[64] + 68] = _6659
                                    mem[mem[64] + 100] = 160
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 132] = 192
                                    mem[mem[64] + 196] = 0
                                    require ext_code.size(address(_6383))
                                    call address(_6383).operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_6384), address(_6385), _6659, 160, 192, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        continue 
            else:
                _5405 = mem[mem[96]]
                idx = 0
                while uint8(idx) < _5405:
                    if uint8(idx) >= mem[mem[96]]:
                        revert with 0, 50
                    if uint8(idx) >= mem[mem[96]]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2]:
                        _5517 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                        _5519 = mem[192]
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                            revert with 0, 50
                        _5654 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                        mem[mem[64] + 4] = mem[172 len 20]
                        mem[mem[64] + 36] = address(_5519)
                        mem[mem[64] + 68] = _5654
                        require ext_code.size(address(_5517))
                        call address(_5517).transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5519), _5654
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5909 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5909] == bool(mem[_5909])
                    else:
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        if mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2] != 777:
                            if 721 == mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2]:
                                if uint8(idx) < mem[mem[96]]:
                                    if uint8(var44003) >= mem[mem[mem[(32 * uint8(idx)) + var44002 + 32] + 64]]:
                                        if uint8(idx) == 255:
                                            revert with 0, 17
                                        idx = uint8(idx) + 1
                                        continue 
                                    if uint8(idx) < mem[mem[96]]:
                                        if uint8(idx) < mem[mem[96]]:
                                            _8740 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]
                                            _8741 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]
                                            t = mem[96]
                                            t = mem[192]
                                            u = mem[160]
                                            v = mem[mem[(32 * uint8(idx)) + var48002 + 32] + 12 len 20]
                                            s = var48003
                                            while uint8(s) < _8741:
                                                _8783 = mem[(32 * uint8(s)) + _8740 + 32]
                                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = address(u)
                                                mem[mem[64] + 36] = address(t)
                                                mem[mem[64] + 68] = _8783
                                                require ext_code.size(v)
                                                call v.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args address(u), address(t), _8783
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if uint8(s) == 255:
                                                    revert with 0, 17
                                                if uint8(idx) >= mem[mem[96]]:
                                                    revert with 0, 50
                                                if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) >= mem[mem[96]]:
                                                    revert with 0, 50
                                                if uint8(idx) >= mem[mem[96]]:
                                                    revert with 0, 50
                                                t = mem[96]
                                                t = mem[192]
                                                u = mem[160]
                                                v = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 12 len 20]
                                                s = uint8(s) + 1
                                                continue 
                                revert with 0, 50
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2] != 1155:
                                revert with 0, 'executeTrade: user 1 unsupported erc type'
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]] <= 1:
                                _6121 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6122 = mem[160]
                                _6123 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]:
                                    revert with 0, 50
                                _6395 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64] + 32]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                                    revert with 0, 50
                                _6672 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_6122)
                                mem[mem[64] + 36] = address(_6123)
                                mem[mem[64] + 68] = _6395
                                mem[mem[64] + 100] = _6672
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(address(_6121))
                                call address(_6121).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(_6122), address(_6123), _6395, _6672, 160, 0
                            else:
                                _6127 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6128 = mem[160]
                                _6129 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                _6262 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                _6399 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]
                                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_6128)
                                mem[mem[64] + 36] = address(_6129)
                                mem[mem[64] + 68] = 160
                                _6674 = mem[_6262]
                                mem[mem[64] + 164] = mem[_6262]
                                s = 0
                                t = _6262 + 32
                                u = mem[64] + 196
                                while s < _6674:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = (32 * _6674) + 192
                                _7225 = mem[_6399]
                                mem[mem[64] + (32 * _6674) + 196] = mem[_6399]
                                s = 0
                                t = _6399 + 32
                                u = mem[64] + (32 * _6674) + 228
                                while s < _7225:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 132] = (32 * _6674) + (32 * _7225) + 224
                                mem[mem[64] + (32 * _6674) + (32 * _7225) + 228] = 0
                                require ext_code.size(address(_6127))
                                call address(_6127).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(_6128), address(_6129), 160, (32 * _6674) + 192, (32 * _6674) + (32 * _7225) + 224, mem[mem[64] + 164 len (32 * _6674) + (32 * _7225) + 64], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _5651 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(_5651))
                            staticcall address(_5651).isOperatorFor(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5750 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5750] == bool(mem[_5750])
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if not mem[_5750]:
                                _6402 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6404 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                                    revert with 0, 50
                                _6675 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                                mem[mem[64] + 4] = mem[172 len 20]
                                mem[mem[64] + 36] = address(_6404)
                                mem[mem[64] + 68] = _6675
                                require ext_code.size(address(_6402))
                                call address(_6402).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_6404), _6675
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6987 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6987] == bool(mem[_6987])
                            else:
                                _6408 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6409 = mem[160]
                                _6410 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                                    revert with 0, 50
                                _6677 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                                mem[mem[64]] = 0x62ad1b8300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_6409)
                                mem[mem[64] + 36] = address(_6410)
                                mem[mem[64] + 68] = _6677
                                mem[mem[64] + 100] = 160
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 132] = 192
                                mem[mem[64] + 196] = 0
                                require ext_code.size(address(_6408))
                                call address(_6408).operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(_6409), address(_6410), _6677, 160, 192, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
                if 0 >= mem[mem[128]]:
                    revert with 0, 50
                if mem[mem[mem[128] + 32] + 12 len 20]:
                    _7121 = mem[mem[128]]
                    idx = 0
                    while uint8(idx) < _7121:
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if 20 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                            _7292 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                            _7294 = mem[160]
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                revert with 0, 50
                            _7404 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                            mem[mem[64] + 4] = mem[204 len 20]
                            mem[mem[64] + 36] = address(_7294)
                            mem[mem[64] + 68] = _7404
                            require ext_code.size(address(_7292))
                            call address(_7292).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_7294), _7404
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7513 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7513] == bool(mem[_7513])
                        else:
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 777:
                                if 721 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                                    if uint8(idx) < mem[mem[128]]:
                                        if uint8(var50003) >= mem[mem[mem[(32 * uint8(idx)) + var50002 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[128]]:
                                            if uint8(idx) < mem[mem[128]]:
                                                _8983 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                                _8984 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]
                                                t = mem[128]
                                                t = mem[160]
                                                u = mem[192]
                                                v = mem[mem[(32 * uint8(idx)) + var54002 + 32] + 12 len 20]
                                                s = var54003
                                                while uint8(s) < _8984:
                                                    _8994 = mem[(32 * uint8(s)) + _8983 + 32]
                                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = address(u)
                                                    mem[mem[64] + 36] = address(t)
                                                    mem[mem[64] + 68] = _8994
                                                    require ext_code.size(v)
                                                    call v.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args address(u), address(t), _8994
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    t = mem[128]
                                                    t = mem[160]
                                                    u = mem[192]
                                                    v = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 12 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 1155:
                                    revert with 0, 'executeTrade: user 2 unsupported erc type'
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]] <= 1:
                                    _7583 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7584 = mem[192]
                                    _7585 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                        revert with 0, 50
                                    _7714 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64] + 32]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _7826 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_7584)
                                    mem[mem[64] + 36] = address(_7585)
                                    mem[mem[64] + 68] = _7714
                                    mem[mem[64] + 100] = _7826
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(address(_7583))
                                    call address(_7583).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_7584), address(_7585), _7714, _7826, 160, 0
                                else:
                                    _7589 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7590 = mem[192]
                                    _7591 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _7652 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _7718 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]
                                    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_7590)
                                    mem[mem[64] + 36] = address(_7591)
                                    mem[mem[64] + 68] = 160
                                    _7828 = mem[_7652]
                                    mem[mem[64] + 164] = mem[_7652]
                                    s = 0
                                    t = _7652 + 32
                                    u = mem[64] + 196
                                    while s < _7828:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = (32 * _7828) + 192
                                    _8022 = mem[_7718]
                                    mem[mem[64] + (32 * _7828) + 196] = mem[_7718]
                                    s = 0
                                    t = _7718 + 32
                                    u = mem[64] + (32 * _7828) + 228
                                    while s < _8022:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 132] = (32 * _7828) + (32 * _8022) + 224
                                    mem[mem[64] + (32 * _7828) + (32 * _8022) + 228] = 0
                                    require ext_code.size(address(_7589))
                                    call address(_7589).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_7590), address(_7591), 160, (32 * _7828) + 192, (32 * _7828) + (32 * _8022) + 224, mem[mem[64] + 164 len (32 * _7828) + (32 * _8022) + 64], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _7401 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_7401))
                                staticcall address(_7401).isOperatorFor(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args this.address, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7459 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7459] == bool(mem[_7459])
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if not mem[_7459]:
                                    _7721 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7723 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _7829 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64] + 4] = mem[204 len 20]
                                    mem[mem[64] + 36] = address(_7723)
                                    mem[mem[64] + 68] = _7829
                                    require ext_code.size(address(_7721))
                                    call address(_7721).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_7723), _7829
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7871 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7871] == bool(mem[_7871])
                                else:
                                    _7727 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7728 = mem[192]
                                    _7729 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _7831 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0x62ad1b8300000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_7728)
                                    mem[mem[64] + 36] = address(_7729)
                                    mem[mem[64] + 68] = _7831
                                    mem[mem[64] + 100] = 160
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 132] = 192
                                    mem[mem[64] + 196] = 0
                                    require ext_code.size(address(_7727))
                                    call address(_7727).operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_7728), address(_7729), _7831, 160, 192, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        continue 
        else:
            if address(stor8[arg1].field_768) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'acceptTrade: not private trade recipient'
            mem[0] = arg1
            mem[32] = 8
            mem[64] = (32 * stor8[arg1].field_0) + 352
            mem[320] = stor8[arg1].field_0
            s = 352
            idx = 0
            while idx < stor8[arg1].field_0:
                mem[0] = sha3(arg1, 8)
                _1828 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1828] = address(stor8[arg1][idx].field_0)
                mem[_1828 + 32] = uint16(stor8[arg1][idx].field_160)
                _1829 = mem[64]
                mem[64] = mem[64] + (32 * stor8[arg1][idx].field_256) + 32
                mem[_1829] = stor8[arg1][idx].field_256
                if not stor8[arg1][idx].field_256:
                    mem[_1828 + 64] = _1829
                    _1840 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
                    mem[_1840] = stor8[arg1][idx].field_512
                    if stor8[arg1][idx].field_512:
                        mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                        mem[_1840 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                        t = _1840 + 32
                        u = sha3(mem[0])
                        while _1840 + (32 * stor8[arg1][idx].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1828 + 96] = _1840
                else:
                    mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 1
                    mem[_1829 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
                    t = _1829 + 32
                    u = sha3(mem[0])
                    while _1829 + (32 * stor8[arg1][idx].field_256) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1828 + 64] = _1829
                    _5411 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
                    mem[_5411] = stor8[arg1][idx].field_512
                    if stor8[arg1][idx].field_512:
                        mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                        mem[_5411 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                        t = _5411 + 32
                        u = sha3(mem[0])
                        while _5411 + (32 * stor8[arg1][idx].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1828 + 96] = _5411
                mem[s] = _1828
                s = s + 32
                idx = idx + 1
                continue 
            mem[96] = 320
            _1826 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1].field_256) + 32
            mem[_1826] = stor8[arg1].field_256
            s = _1826 + 32
            idx = 0
            while idx < stor8[arg1].field_256:
                mem[0] = sha3(arg1, 8) + 1
                _3634 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3634] = address(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                mem[_3634 + 32] = uint16(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                _3635 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                mem[_3635] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256
                if not stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                    mem[_3634 + 64] = _3635
                    _3652 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                    mem[_3652] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
                    if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                        mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                        mem[_3652 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                        t = _3652 + 32
                        u = sha3(mem[0])
                        while _3652 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_3634 + 96] = _3652
                else:
                    mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 1
                    mem[_3635 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                    t = _3635 + 32
                    u = sha3(mem[0])
                    while _3635 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_3634 + 64] = _3635
                    _7131 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                    mem[_7131] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
                    if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                        mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                        mem[_7131 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                        t = _7131 + 32
                        u = sha3(mem[0])
                        while _7131 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_3634 + 96] = _7131
                mem[s] = _3634
                s = s + 32
                idx = idx + 1
                continue 
            mem[128] = _1826
            mem[160] = address(stor8[arg1].field_512)
            mem[192] = address(stor8[arg1].field_768)
            mem[224] = stor8[arg1].field_1024
            mem[256] = stor8[arg1].field_1280
            mem[288] = bool(uint8(stor8[arg1].field_1536))
            if not mem[mem[96]]:
                revert with 0, 50
            if not mem[mem[mem[96] + 32] + 12 len 20]:
                if 0 >= mem[_1826]:
                    revert with 0, 50
                if mem[mem[_1826 + 32] + 12 len 20]:
                    _5408 = mem[_1826]
                    idx = 0
                    while uint8(idx) < _5408:
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if 20 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                            _5525 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                            _5527 = mem[160]
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                revert with 0, 50
                            _5662 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                            mem[mem[64] + 4] = mem[204 len 20]
                            mem[mem[64] + 36] = address(_5527)
                            mem[mem[64] + 68] = _5662
                            require ext_code.size(address(_5525))
                            call address(_5525).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5527), _5662
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5917 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5917] == bool(mem[_5917])
                        else:
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 777:
                                if 721 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                                    if uint8(idx) < mem[mem[128]]:
                                        if uint8(var47003) >= mem[mem[mem[(32 * uint8(idx)) + var47002 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[128]]:
                                            if uint8(idx) < mem[mem[128]]:
                                                _8743 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                                _8744 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]
                                                t = mem[128]
                                                t = mem[160]
                                                u = mem[192]
                                                v = mem[mem[(32 * uint8(idx)) + var51002 + 32] + 12 len 20]
                                                s = var51003
                                                while uint8(s) < _8744:
                                                    _8785 = mem[(32 * uint8(s)) + _8743 + 32]
                                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = address(u)
                                                    mem[mem[64] + 36] = address(t)
                                                    mem[mem[64] + 68] = _8785
                                                    require ext_code.size(v)
                                                    call v.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args address(u), address(t), _8785
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    t = mem[128]
                                                    t = mem[160]
                                                    u = mem[192]
                                                    v = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 12 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 1155:
                                    revert with 0, 'executeTrade: user 2 unsupported erc type'
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]] <= 1:
                                    _6137 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6138 = mem[192]
                                    _6139 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                        revert with 0, 50
                                    _6413 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64] + 32]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _6679 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_6138)
                                    mem[mem[64] + 36] = address(_6139)
                                    mem[mem[64] + 68] = _6413
                                    mem[mem[64] + 100] = _6679
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(address(_6137))
                                    call address(_6137).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_6138), address(_6139), _6413, _6679, 160, 0
                                else:
                                    _6143 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6144 = mem[192]
                                    _6145 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _6275 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _6417 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]
                                    _6418 = mem[64]
                                    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_6144)
                                    mem[mem[64] + 36] = address(_6145)
                                    mem[mem[64] + 68] = 160
                                    _6681 = mem[_6275]
                                    mem[mem[64] + 164] = mem[_6275]
                                    s = 0
                                    t = _6275 + 32
                                    u = mem[64] + 196
                                    while s < _6681:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_6418 + 100] = (32 * _6681) + 192
                                    _7232 = mem[_6417]
                                    mem[_6418 + (32 * _6681) + 196] = mem[_6417]
                                    s = 0
                                    t = _6417 + 32
                                    u = _6418 + (32 * _6681) + 228
                                    while s < _7232:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_6418 + 132] = (32 * _6681) + (32 * _7232) + 224
                                    mem[_6418 + (32 * _6681) + (32 * _7232) + 228] = 0
                                    require ext_code.size(address(_6143))
                                    call address(_6143).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _6418 + (32 * _6681) + (32 * _7232) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _5659 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_5659))
                                staticcall address(_5659).isOperatorFor(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args this.address, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5757 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5757] == bool(mem[_5757])
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if not mem[_5757]:
                                    _6420 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6422 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _6682 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64] + 4] = mem[204 len 20]
                                    mem[mem[64] + 36] = address(_6422)
                                    mem[mem[64] + 68] = _6682
                                    require ext_code.size(address(_6420))
                                    call address(_6420).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_6422), _6682
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6989 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6989] == bool(mem[_6989])
                                else:
                                    _6426 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6427 = mem[192]
                                    _6428 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _6684 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0x62ad1b8300000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_6427)
                                    mem[mem[64] + 36] = address(_6428)
                                    mem[mem[64] + 68] = _6684
                                    mem[mem[64] + 100] = 160
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 132] = 192
                                    mem[mem[64] + 196] = 0
                                    require ext_code.size(address(_6426))
                                    call address(_6426).operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_6427), address(_6428), _6684, 160, 192, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        continue 
            else:
                _5410 = mem[mem[96]]
                idx = 0
                while uint8(idx) < _5410:
                    if uint8(idx) >= mem[mem[96]]:
                        revert with 0, 50
                    if uint8(idx) >= mem[mem[96]]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2]:
                        _5533 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                        _5535 = mem[192]
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                            revert with 0, 50
                        _5672 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                        mem[mem[64] + 4] = mem[172 len 20]
                        mem[mem[64] + 36] = address(_5535)
                        mem[mem[64] + 68] = _5672
                        require ext_code.size(address(_5533))
                        call address(_5533).transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5535), _5672
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5933 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5933] == bool(mem[_5933])
                    else:
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        if mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2] != 777:
                            if 721 == mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2]:
                                if uint8(idx) < mem[mem[96]]:
                                    if uint8(var45003) >= mem[mem[mem[(32 * uint8(idx)) + var45002 + 32] + 64]]:
                                        if uint8(idx) == 255:
                                            revert with 0, 17
                                        idx = uint8(idx) + 1
                                        continue 
                                    if uint8(idx) < mem[mem[96]]:
                                        if uint8(idx) < mem[mem[96]]:
                                            _8752 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]
                                            _8753 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]
                                            t = mem[96]
                                            t = mem[192]
                                            u = mem[160]
                                            v = mem[mem[(32 * uint8(idx)) + var49002 + 32] + 12 len 20]
                                            s = var49003
                                            while uint8(s) < _8753:
                                                _8790 = mem[(32 * uint8(s)) + _8752 + 32]
                                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = address(u)
                                                mem[mem[64] + 36] = address(t)
                                                mem[mem[64] + 68] = _8790
                                                require ext_code.size(v)
                                                call v.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args address(u), address(t), _8790
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if uint8(s) == 255:
                                                    revert with 0, 17
                                                if uint8(idx) >= mem[mem[96]]:
                                                    revert with 0, 50
                                                if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) >= mem[mem[96]]:
                                                    revert with 0, 50
                                                if uint8(idx) >= mem[mem[96]]:
                                                    revert with 0, 50
                                                t = mem[96]
                                                t = mem[192]
                                                u = mem[160]
                                                v = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 12 len 20]
                                                s = uint8(s) + 1
                                                continue 
                                revert with 0, 50
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2] != 1155:
                                revert with 0, 'executeTrade: user 1 unsupported erc type'
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]] <= 1:
                                _6155 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6156 = mem[160]
                                _6157 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]:
                                    revert with 0, 50
                                _6438 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64] + 32]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                                    revert with 0, 50
                                _6697 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_6156)
                                mem[mem[64] + 36] = address(_6157)
                                mem[mem[64] + 68] = _6438
                                mem[mem[64] + 100] = _6697
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(address(_6155))
                                call address(_6155).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(_6156), address(_6157), _6438, _6697, 160, 0
                            else:
                                _6161 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6162 = mem[160]
                                _6163 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                _6295 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                _6442 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]
                                _6443 = mem[64]
                                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_6162)
                                mem[mem[64] + 36] = address(_6163)
                                mem[mem[64] + 68] = 160
                                _6699 = mem[_6295]
                                mem[mem[64] + 164] = mem[_6295]
                                s = 0
                                t = _6295 + 32
                                u = mem[64] + 196
                                while s < _6699:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = (32 * _6699) + 192
                                _7243 = mem[_6442]
                                mem[mem[64] + (32 * _6699) + 196] = mem[_6442]
                                s = 0
                                t = _6442 + 32
                                u = mem[64] + (32 * _6699) + 228
                                while s < _7243:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_6443 + 132] = (32 * _6699) + (32 * _7243) + 224
                                mem[_6443 + (32 * _6699) + (32 * _7243) + 228] = 0
                                require ext_code.size(address(_6161))
                                call address(_6161).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6443 + (32 * _6699) + (32 * _7243) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _5669 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(_5669))
                            staticcall address(_5669).isOperatorFor(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5768 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5768] == bool(mem[_5768])
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if not mem[_5768]:
                                _6445 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6447 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                                    revert with 0, 50
                                _6700 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                                mem[mem[64] + 4] = mem[172 len 20]
                                mem[mem[64] + 36] = address(_6447)
                                mem[mem[64] + 68] = _6700
                                require ext_code.size(address(_6445))
                                call address(_6445).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_6447), _6700
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7001 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7001] == bool(mem[_7001])
                            else:
                                _6451 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6452 = mem[160]
                                _6453 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                                    revert with 0, 50
                                _6702 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                                mem[mem[64]] = 0x62ad1b8300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_6452)
                                mem[mem[64] + 36] = address(_6453)
                                mem[mem[64] + 68] = _6702
                                mem[mem[64] + 100] = 160
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 132] = 192
                                mem[mem[64] + 196] = 0
                                require ext_code.size(address(_6451))
                                call address(_6451).operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(_6452), address(_6453), _6702, 160, 192, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
                if 0 >= mem[mem[128]]:
                    revert with 0, 50
                if mem[mem[mem[128] + 32] + 12 len 20]:
                    _7128 = mem[mem[128]]
                    idx = 0
                    while uint8(idx) < _7128:
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if 20 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                            _7306 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                            _7308 = mem[160]
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                revert with 0, 50
                            _7412 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                            mem[mem[64] + 4] = mem[204 len 20]
                            mem[mem[64] + 36] = address(_7308)
                            mem[mem[64] + 68] = _7412
                            require ext_code.size(address(_7306))
                            call address(_7306).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_7308), _7412
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7521] == bool(mem[_7521])
                        else:
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 777:
                                if 721 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                                    if uint8(idx) < mem[mem[128]]:
                                        if uint8(var51003) >= mem[mem[mem[(32 * uint8(idx)) + var51002 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[128]]:
                                            if uint8(idx) < mem[mem[128]]:
                                                _8986 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                                _8987 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]
                                                t = mem[128]
                                                t = mem[160]
                                                u = mem[192]
                                                v = mem[mem[(32 * uint8(idx)) + var55002 + 32] + 12 len 20]
                                                s = var55003
                                                while uint8(s) < _8987:
                                                    _8996 = mem[(32 * uint8(s)) + _8986 + 32]
                                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = address(u)
                                                    mem[mem[64] + 36] = address(t)
                                                    mem[mem[64] + 68] = _8996
                                                    require ext_code.size(v)
                                                    call v.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args address(u), address(t), _8996
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    t = mem[128]
                                                    t = mem[160]
                                                    u = mem[192]
                                                    v = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 12 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 1155:
                                    revert with 0, 'executeTrade: user 2 unsupported erc type'
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]] <= 1:
                                    _7599 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7600 = mem[192]
                                    _7601 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                        revert with 0, 50
                                    _7732 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64] + 32]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _7833 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_7600)
                                    mem[mem[64] + 36] = address(_7601)
                                    mem[mem[64] + 68] = _7732
                                    mem[mem[64] + 100] = _7833
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(address(_7599))
                                    call address(_7599).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_7600), address(_7601), _7732, _7833, 160, 0
                                else:
                                    _7605 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7606 = mem[192]
                                    _7607 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _7669 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _7736 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]
                                    _7737 = mem[64]
                                    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_7606)
                                    mem[mem[64] + 36] = address(_7607)
                                    mem[mem[64] + 68] = 160
                                    _7835 = mem[_7669]
                                    mem[mem[64] + 164] = mem[_7669]
                                    s = 0
                                    t = _7669 + 32
                                    u = mem[64] + 196
                                    while s < _7835:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = (32 * _7835) + 192
                                    _8037 = mem[_7736]
                                    mem[mem[64] + (32 * _7835) + 196] = mem[_7736]
                                    s = 0
                                    t = _7736 + 32
                                    u = mem[64] + (32 * _7835) + 228
                                    while s < _8037:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_7737 + 132] = (32 * _7835) + (32 * _8037) + 224
                                    mem[_7737 + (32 * _7835) + (32 * _8037) + 228] = 0
                                    require ext_code.size(address(_7605))
                                    call address(_7605).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7737 + (32 * _7835) + (32 * _8037) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _7409 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_7409))
                                staticcall address(_7409).isOperatorFor(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args this.address, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7466 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7466] == bool(mem[_7466])
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if not mem[_7466]:
                                    _7739 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7741 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _7836 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64] + 4] = mem[204 len 20]
                                    mem[mem[64] + 36] = address(_7741)
                                    mem[mem[64] + 68] = _7836
                                    require ext_code.size(address(_7739))
                                    call address(_7739).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_7741), _7836
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7873 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7873] == bool(mem[_7873])
                                else:
                                    _7745 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7746 = mem[192]
                                    _7747 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _7838 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0x62ad1b8300000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_7746)
                                    mem[mem[64] + 36] = address(_7747)
                                    mem[mem[64] + 68] = _7838
                                    mem[mem[64] + 100] = 160
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 132] = 192
                                    mem[mem[64] + 196] = 0
                                    require ext_code.size(address(_7745))
                                    call address(_7745).operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_7746), address(_7747), _7838, 160, 192, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        continue 
    else:
        if block.timestamp >= stor8[arg1].field_1280:
            revert with 0, 'acceptTrade: trade expired'
        if not address(stor8[arg1].field_768):
            stor8[arg1].field_768 = msg.sender or Mask(96, 160, stor8[arg1].field_768)
            mem[0] = arg1
            mem[32] = 8
            mem[64] = (32 * stor8[arg1].field_0) + 352
            mem[320] = stor8[arg1].field_0
            s = 352
            idx = 0
            while idx < stor8[arg1].field_0:
                mem[0] = sha3(arg1, 8)
                _1832 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1832] = address(stor8[arg1][idx].field_0)
                mem[_1832 + 32] = uint16(stor8[arg1][idx].field_160)
                _1833 = mem[64]
                mem[64] = mem[64] + (32 * stor8[arg1][idx].field_256) + 32
                mem[_1833] = stor8[arg1][idx].field_256
                if not stor8[arg1][idx].field_256:
                    mem[_1832 + 64] = _1833
                    _1842 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
                    mem[_1842] = stor8[arg1][idx].field_512
                    if stor8[arg1][idx].field_512:
                        mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                        mem[_1842 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                        t = _1842 + 32
                        u = sha3(mem[0])
                        while _1842 + (32 * stor8[arg1][idx].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1832 + 96] = _1842
                else:
                    mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 1
                    mem[_1833 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
                    t = _1833 + 32
                    u = sha3(mem[0])
                    while _1833 + (32 * stor8[arg1][idx].field_256) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1832 + 64] = _1833
                    _5416 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
                    mem[_5416] = stor8[arg1][idx].field_512
                    if stor8[arg1][idx].field_512:
                        mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                        mem[_5416 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                        t = _5416 + 32
                        u = sha3(mem[0])
                        while _5416 + (32 * stor8[arg1][idx].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1832 + 96] = _5416
                mem[s] = _1832
                s = s + 32
                idx = idx + 1
                continue 
            mem[96] = 320
            _1830 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1].field_256) + 32
            mem[_1830] = stor8[arg1].field_256
            s = _1830 + 32
            idx = 0
            while idx < stor8[arg1].field_256:
                mem[0] = sha3(arg1, 8) + 1
                _3639 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3639] = address(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                mem[_3639 + 32] = uint16(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                _3640 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                mem[_3640] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256
                if not stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                    mem[_3639 + 64] = _3640
                    _3656 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                    mem[_3656] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
                    if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                        mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                        mem[_3656 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                        t = _3656 + 32
                        u = sha3(mem[0])
                        while _3656 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_3639 + 96] = _3656
                else:
                    mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 1
                    mem[_3640 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                    t = _3640 + 32
                    u = sha3(mem[0])
                    while _3640 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_3639 + 64] = _3640
                    _7138 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                    mem[_7138] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
                    if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                        mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                        mem[_7138 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                        t = _7138 + 32
                        u = sha3(mem[0])
                        while _7138 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_3639 + 96] = _7138
                mem[s] = _3639
                s = s + 32
                idx = idx + 1
                continue 
            mem[128] = _1830
            mem[160] = address(stor8[arg1].field_512)
            mem[192] = address(stor8[arg1].field_768)
            mem[224] = stor8[arg1].field_1024
            mem[256] = stor8[arg1].field_1280
            mem[288] = bool(uint8(stor8[arg1].field_1536))
            if not mem[mem[96]]:
                revert with 0, 50
            if not mem[mem[mem[96] + 32] + 12 len 20]:
                if 0 >= mem[_1830]:
                    revert with 0, 50
                if mem[mem[_1830 + 32] + 12 len 20]:
                    _5413 = mem[_1830]
                    idx = 0
                    while uint8(idx) < _5413:
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if 20 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                            _5541 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                            _5543 = mem[160]
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                revert with 0, 50
                            _5680 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                            mem[mem[64] + 4] = mem[204 len 20]
                            mem[mem[64] + 36] = address(_5543)
                            mem[mem[64] + 68] = _5680
                            require ext_code.size(address(_5541))
                            call address(_5541).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5543), _5680
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5941 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5941] == bool(mem[_5941])
                        else:
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 777:
                                if 721 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                                    if uint8(idx) < mem[mem[128]]:
                                        if uint8(var47003) >= mem[mem[mem[(32 * uint8(idx)) + var47002 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[128]]:
                                            if uint8(idx) < mem[mem[128]]:
                                                _8755 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                                _8756 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]
                                                t = mem[128]
                                                t = mem[160]
                                                u = mem[192]
                                                v = mem[mem[(32 * uint8(idx)) + var51002 + 32] + 12 len 20]
                                                s = var51003
                                                while uint8(s) < _8756:
                                                    _8792 = mem[(32 * uint8(s)) + _8755 + 32]
                                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = address(u)
                                                    mem[mem[64] + 36] = address(t)
                                                    mem[mem[64] + 68] = _8792
                                                    require ext_code.size(v)
                                                    call v.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args address(u), address(t), _8792
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    t = mem[128]
                                                    t = mem[160]
                                                    u = mem[192]
                                                    v = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 12 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 1155:
                                    revert with 0, 'executeTrade: user 2 unsupported erc type'
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]] <= 1:
                                    _6171 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6172 = mem[192]
                                    _6173 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                        revert with 0, 50
                                    _6456 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64] + 32]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _6704 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_6172)
                                    mem[mem[64] + 36] = address(_6173)
                                    mem[mem[64] + 68] = _6456
                                    mem[mem[64] + 100] = _6704
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(address(_6171))
                                    call address(_6171).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_6172), address(_6173), _6456, _6704, 160, 0
                                else:
                                    _6177 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6178 = mem[192]
                                    _6179 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _6308 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _6460 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]
                                    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_6178)
                                    mem[mem[64] + 36] = address(_6179)
                                    mem[mem[64] + 68] = 160
                                    _6706 = mem[_6308]
                                    mem[mem[64] + 164] = mem[_6308]
                                    s = 0
                                    t = _6308 + 32
                                    u = mem[64] + 196
                                    while s < _6706:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = (32 * _6706) + 192
                                    _7250 = mem[_6460]
                                    mem[mem[64] + (32 * _6706) + 196] = mem[_6460]
                                    s = 0
                                    t = _6460 + 32
                                    u = mem[64] + (32 * _6706) + 228
                                    while s < _7250:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 132] = (32 * _6706) + (32 * _7250) + 224
                                    mem[mem[64] + (32 * _6706) + (32 * _7250) + 228] = 0
                                    require ext_code.size(address(_6177))
                                    call address(_6177).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_6178), address(_6179), 160, (32 * _6706) + 192, (32 * _6706) + (32 * _7250) + 224, mem[mem[64] + 164 len (32 * _6706) + (32 * _7250) + 64], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _5677 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_5677))
                                staticcall address(_5677).isOperatorFor(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args this.address, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5775 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5775] == bool(mem[_5775])
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if not mem[_5775]:
                                    _6463 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6465 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _6707 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64] + 4] = mem[204 len 20]
                                    mem[mem[64] + 36] = address(_6465)
                                    mem[mem[64] + 68] = _6707
                                    require ext_code.size(address(_6463))
                                    call address(_6463).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_6465), _6707
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7003 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7003] == bool(mem[_7003])
                                else:
                                    _6469 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6470 = mem[192]
                                    _6471 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _6709 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0x62ad1b8300000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_6470)
                                    mem[mem[64] + 36] = address(_6471)
                                    mem[mem[64] + 68] = _6709
                                    mem[mem[64] + 100] = 160
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 132] = 192
                                    mem[mem[64] + 196] = 0
                                    require ext_code.size(address(_6469))
                                    call address(_6469).operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_6470), address(_6471), _6709, 160, 192, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        continue 
            else:
                _5415 = mem[mem[96]]
                idx = 0
                while uint8(idx) < _5415:
                    if uint8(idx) >= mem[mem[96]]:
                        revert with 0, 50
                    if uint8(idx) >= mem[mem[96]]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2]:
                        _5549 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                        _5551 = mem[192]
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                            revert with 0, 50
                        _5690 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                        mem[mem[64] + 4] = mem[172 len 20]
                        mem[mem[64] + 36] = address(_5551)
                        mem[mem[64] + 68] = _5690
                        require ext_code.size(address(_5549))
                        call address(_5549).transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5551), _5690
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5957 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5957] == bool(mem[_5957])
                    else:
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        if mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2] != 777:
                            if 721 == mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2]:
                                if uint8(idx) < mem[mem[96]]:
                                    if uint8(var45003) >= mem[mem[mem[(32 * uint8(idx)) + var45002 + 32] + 64]]:
                                        if uint8(idx) == 255:
                                            revert with 0, 17
                                        idx = uint8(idx) + 1
                                        continue 
                                    if uint8(idx) < mem[mem[96]]:
                                        if uint8(idx) < mem[mem[96]]:
                                            _8764 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]
                                            _8765 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]
                                            t = mem[96]
                                            t = mem[192]
                                            u = mem[160]
                                            v = mem[mem[(32 * uint8(idx)) + var49002 + 32] + 12 len 20]
                                            s = var49003
                                            while uint8(s) < _8765:
                                                _8797 = mem[(32 * uint8(s)) + _8764 + 32]
                                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = address(u)
                                                mem[mem[64] + 36] = address(t)
                                                mem[mem[64] + 68] = _8797
                                                require ext_code.size(v)
                                                call v.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args address(u), address(t), _8797
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if uint8(s) == 255:
                                                    revert with 0, 17
                                                if uint8(idx) >= mem[mem[96]]:
                                                    revert with 0, 50
                                                if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) >= mem[mem[96]]:
                                                    revert with 0, 50
                                                if uint8(idx) >= mem[mem[96]]:
                                                    revert with 0, 50
                                                t = mem[96]
                                                t = mem[192]
                                                u = mem[160]
                                                v = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 12 len 20]
                                                s = uint8(s) + 1
                                                continue 
                                revert with 0, 50
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2] != 1155:
                                revert with 0, 'executeTrade: user 1 unsupported erc type'
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]] <= 1:
                                _6189 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6190 = mem[160]
                                _6191 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]:
                                    revert with 0, 50
                                _6481 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64] + 32]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                                    revert with 0, 50
                                _6722 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_6190)
                                mem[mem[64] + 36] = address(_6191)
                                mem[mem[64] + 68] = _6481
                                mem[mem[64] + 100] = _6722
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(address(_6189))
                                call address(_6189).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(_6190), address(_6191), _6481, _6722, 160, 0
                            else:
                                _6195 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6196 = mem[160]
                                _6197 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                _6328 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                _6485 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]
                                _6486 = mem[64]
                                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_6196)
                                mem[mem[64] + 36] = address(_6197)
                                mem[mem[64] + 68] = 160
                                _6724 = mem[_6328]
                                mem[mem[64] + 164] = mem[_6328]
                                s = 0
                                t = _6328 + 32
                                u = mem[64] + 196
                                while s < _6724:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = (32 * _6724) + 192
                                _7261 = mem[_6485]
                                mem[mem[64] + (32 * _6724) + 196] = mem[_6485]
                                s = 0
                                t = _6485 + 32
                                u = mem[64] + (32 * _6724) + 228
                                while s < _7261:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_6486 + 132] = (32 * _6724) + (32 * _7261) + 224
                                mem[_6486 + (32 * _6724) + (32 * _7261) + 228] = 0
                                require ext_code.size(address(_6195))
                                call address(_6195).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6486 + (32 * _6724) + (32 * _7261) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _5687 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(_5687))
                            staticcall address(_5687).isOperatorFor(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5786 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5786] == bool(mem[_5786])
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if not mem[_5786]:
                                _6488 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6490 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                                    revert with 0, 50
                                _6725 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                                mem[mem[64] + 4] = mem[172 len 20]
                                mem[mem[64] + 36] = address(_6490)
                                mem[mem[64] + 68] = _6725
                                require ext_code.size(address(_6488))
                                call address(_6488).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_6490), _6725
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7015 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7015] == bool(mem[_7015])
                            else:
                                _6494 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6495 = mem[160]
                                _6496 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                                    revert with 0, 50
                                _6727 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                                mem[mem[64]] = 0x62ad1b8300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_6495)
                                mem[mem[64] + 36] = address(_6496)
                                mem[mem[64] + 68] = _6727
                                mem[mem[64] + 100] = 160
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 132] = 192
                                mem[mem[64] + 196] = 0
                                require ext_code.size(address(_6494))
                                call address(_6494).operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(_6495), address(_6496), _6727, 160, 192, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
                if 0 >= mem[mem[128]]:
                    revert with 0, 50
                if mem[mem[mem[128] + 32] + 12 len 20]:
                    _7135 = mem[mem[128]]
                    idx = 0
                    while uint8(idx) < _7135:
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if 20 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                            _7320 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                            _7322 = mem[160]
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                revert with 0, 50
                            _7420 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                            mem[mem[64] + 4] = mem[204 len 20]
                            mem[mem[64] + 36] = address(_7322)
                            mem[mem[64] + 68] = _7420
                            require ext_code.size(address(_7320))
                            call address(_7320).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_7322), _7420
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7529 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7529] == bool(mem[_7529])
                        else:
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 777:
                                if 721 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                                    if uint8(idx) < mem[mem[128]]:
                                        if uint8(var51003) >= mem[mem[mem[(32 * uint8(idx)) + var51002 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[128]]:
                                            if uint8(idx) < mem[mem[128]]:
                                                _8989 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                                _8990 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]
                                                t = mem[128]
                                                t = mem[160]
                                                u = mem[192]
                                                v = mem[mem[(32 * uint8(idx)) + var55002 + 32] + 12 len 20]
                                                s = var55003
                                                while uint8(s) < _8990:
                                                    _8998 = mem[(32 * uint8(s)) + _8989 + 32]
                                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = address(u)
                                                    mem[mem[64] + 36] = address(t)
                                                    mem[mem[64] + 68] = _8998
                                                    require ext_code.size(v)
                                                    call v.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args address(u), address(t), _8998
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    t = mem[128]
                                                    t = mem[160]
                                                    u = mem[192]
                                                    v = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 12 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 1155:
                                    revert with 0, 'executeTrade: user 2 unsupported erc type'
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]] <= 1:
                                    _7615 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7616 = mem[192]
                                    _7617 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                        revert with 0, 50
                                    _7750 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64] + 32]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _7840 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_7616)
                                    mem[mem[64] + 36] = address(_7617)
                                    mem[mem[64] + 68] = _7750
                                    mem[mem[64] + 100] = _7840
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(address(_7615))
                                    call address(_7615).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_7616), address(_7617), _7750, _7840, 160, 0
                                else:
                                    _7621 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7622 = mem[192]
                                    _7623 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _7686 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _7754 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]
                                    _7755 = mem[64]
                                    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_7622)
                                    mem[mem[64] + 36] = address(_7623)
                                    mem[mem[64] + 68] = 160
                                    _7842 = mem[_7686]
                                    mem[mem[64] + 164] = mem[_7686]
                                    s = 0
                                    t = _7686 + 32
                                    u = mem[64] + 196
                                    while s < _7842:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = (32 * _7842) + 192
                                    _8052 = mem[_7754]
                                    mem[mem[64] + (32 * _7842) + 196] = mem[_7754]
                                    s = 0
                                    t = _7754 + 32
                                    u = mem[64] + (32 * _7842) + 228
                                    while s < _8052:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_7755 + 132] = (32 * _7842) + (32 * _8052) + 224
                                    mem[_7755 + (32 * _7842) + (32 * _8052) + 228] = 0
                                    require ext_code.size(address(_7621))
                                    call address(_7621).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7755 + (32 * _7842) + (32 * _8052) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _7417 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_7417))
                                staticcall address(_7417).isOperatorFor(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args this.address, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7473 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7473] == bool(mem[_7473])
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if not mem[_7473]:
                                    _7757 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7759 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _7843 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64] + 4] = mem[204 len 20]
                                    mem[mem[64] + 36] = address(_7759)
                                    mem[mem[64] + 68] = _7843
                                    require ext_code.size(address(_7757))
                                    call address(_7757).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_7759), _7843
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7875 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7875] == bool(mem[_7875])
                                else:
                                    _7763 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7764 = mem[192]
                                    _7765 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _7845 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0x62ad1b8300000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_7764)
                                    mem[mem[64] + 36] = address(_7765)
                                    mem[mem[64] + 68] = _7845
                                    mem[mem[64] + 100] = 160
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 132] = 192
                                    mem[mem[64] + 196] = 0
                                    require ext_code.size(address(_7763))
                                    call address(_7763).operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_7764), address(_7765), _7845, 160, 192, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        continue 
        else:
            if address(stor8[arg1].field_768) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'acceptTrade: not private trade recipient'
            mem[0] = arg1
            mem[32] = 8
            mem[64] = (32 * stor8[arg1].field_0) + 352
            mem[320] = stor8[arg1].field_0
            s = 352
            idx = 0
            while idx < stor8[arg1].field_0:
                mem[0] = sha3(arg1, 8)
                _1836 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1836] = address(stor8[arg1][idx].field_0)
                mem[_1836 + 32] = uint16(stor8[arg1][idx].field_160)
                _1837 = mem[64]
                mem[64] = mem[64] + (32 * stor8[arg1][idx].field_256) + 32
                mem[_1837] = stor8[arg1][idx].field_256
                if not stor8[arg1][idx].field_256:
                    mem[_1836 + 64] = _1837
                    _1844 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
                    mem[_1844] = stor8[arg1][idx].field_512
                    if stor8[arg1][idx].field_512:
                        mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                        mem[_1844 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                        t = _1844 + 32
                        u = sha3(mem[0])
                        while _1844 + (32 * stor8[arg1][idx].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1836 + 96] = _1844
                else:
                    mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 1
                    mem[_1837 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
                    t = _1837 + 32
                    u = sha3(mem[0])
                    while _1837 + (32 * stor8[arg1][idx].field_256) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1836 + 64] = _1837
                    _5421 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
                    mem[_5421] = stor8[arg1][idx].field_512
                    if stor8[arg1][idx].field_512:
                        mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                        mem[_5421 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                        t = _5421 + 32
                        u = sha3(mem[0])
                        while _5421 + (32 * stor8[arg1][idx].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1836 + 96] = _5421
                mem[s] = _1836
                s = s + 32
                idx = idx + 1
                continue 
            mem[96] = 320
            _1834 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1].field_256) + 32
            mem[_1834] = stor8[arg1].field_256
            s = _1834 + 32
            idx = 0
            while idx < stor8[arg1].field_256:
                mem[0] = sha3(arg1, 8) + 1
                _3644 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3644] = address(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                mem[_3644 + 32] = uint16(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                _3645 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                mem[_3645] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256
                if not stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                    mem[_3644 + 64] = _3645
                    _3660 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                    mem[_3660] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
                    if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                        mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                        mem[_3660 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                        t = _3660 + 32
                        u = sha3(mem[0])
                        while _3660 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_3644 + 96] = _3660
                else:
                    mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 1
                    mem[_3645 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                    t = _3645 + 32
                    u = sha3(mem[0])
                    while _3645 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_3644 + 64] = _3645
                    _7145 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                    mem[_7145] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
                    if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                        mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                        mem[_7145 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                        t = _7145 + 32
                        u = sha3(mem[0])
                        while _7145 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_3644 + 96] = _7145
                mem[s] = _3644
                s = s + 32
                idx = idx + 1
                continue 
            mem[128] = _1834
            mem[160] = address(stor8[arg1].field_512)
            mem[192] = address(stor8[arg1].field_768)
            mem[224] = stor8[arg1].field_1024
            mem[256] = stor8[arg1].field_1280
            mem[288] = bool(uint8(stor8[arg1].field_1536))
            if not mem[mem[96]]:
                revert with 0, 50
            if not mem[mem[mem[96] + 32] + 12 len 20]:
                if 0 >= mem[_1834]:
                    revert with 0, 50
                if mem[mem[_1834 + 32] + 12 len 20]:
                    _5418 = mem[_1834]
                    idx = 0
                    while uint8(idx) < _5418:
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if 20 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                            _5557 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                            _5559 = mem[160]
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                revert with 0, 50
                            _5698 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                            mem[mem[64] + 4] = mem[204 len 20]
                            mem[mem[64] + 36] = address(_5559)
                            mem[mem[64] + 68] = _5698
                            require ext_code.size(address(_5557))
                            call address(_5557).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5559), _5698
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5965 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5965] == bool(mem[_5965])
                        else:
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 777:
                                if 721 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                                    if uint8(idx) < mem[mem[128]]:
                                        if uint8(var48003) >= mem[mem[mem[(32 * uint8(idx)) + var48002 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[128]]:
                                            if uint8(idx) < mem[mem[128]]:
                                                _8767 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                                _8768 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]
                                                t = mem[128]
                                                t = mem[160]
                                                u = mem[192]
                                                v = mem[mem[(32 * uint8(idx)) + var52002 + 32] + 12 len 20]
                                                s = var52003
                                                while uint8(s) < _8768:
                                                    _8799 = mem[(32 * uint8(s)) + _8767 + 32]
                                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = address(u)
                                                    mem[mem[64] + 36] = address(t)
                                                    mem[mem[64] + 68] = _8799
                                                    require ext_code.size(v)
                                                    call v.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args address(u), address(t), _8799
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    t = mem[128]
                                                    t = mem[160]
                                                    u = mem[192]
                                                    v = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 12 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 1155:
                                    revert with 0, 'executeTrade: user 2 unsupported erc type'
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]] <= 1:
                                    _6205 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6206 = mem[192]
                                    _6207 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                        revert with 0, 50
                                    _6499 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64] + 32]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _6729 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_6206)
                                    mem[mem[64] + 36] = address(_6207)
                                    mem[mem[64] + 68] = _6499
                                    mem[mem[64] + 100] = _6729
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(address(_6205))
                                    call address(_6205).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_6206), address(_6207), _6499, _6729, 160, 0
                                else:
                                    _6211 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6212 = mem[192]
                                    _6213 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _6341 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _6503 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]
                                    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_6212)
                                    mem[mem[64] + 36] = address(_6213)
                                    mem[mem[64] + 68] = 160
                                    _6731 = mem[_6341]
                                    mem[mem[64] + 164] = mem[_6341]
                                    s = 0
                                    t = _6341 + 32
                                    u = mem[64] + 196
                                    while s < _6731:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = (32 * _6731) + 192
                                    _7268 = mem[_6503]
                                    mem[mem[64] + (32 * _6731) + 196] = mem[_6503]
                                    s = 0
                                    t = _6503 + 32
                                    u = mem[64] + (32 * _6731) + 228
                                    while s < _7268:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 132] = (32 * _6731) + (32 * _7268) + 224
                                    mem[mem[64] + (32 * _6731) + (32 * _7268) + 228] = 0
                                    require ext_code.size(address(_6211))
                                    call address(_6211).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_6212), address(_6213), 160, (32 * _6731) + 192, (32 * _6731) + (32 * _7268) + 224, mem[mem[64] + 164 len (32 * _6731) + (32 * _7268) + 64], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _5695 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_5695))
                                staticcall address(_5695).isOperatorFor(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args this.address, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5793 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5793] == bool(mem[_5793])
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if not mem[_5793]:
                                    _6506 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6508 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _6732 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64] + 4] = mem[204 len 20]
                                    mem[mem[64] + 36] = address(_6508)
                                    mem[mem[64] + 68] = _6732
                                    require ext_code.size(address(_6506))
                                    call address(_6506).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_6508), _6732
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7017 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7017] == bool(mem[_7017])
                                else:
                                    _6512 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _6513 = mem[192]
                                    _6514 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _6734 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0x62ad1b8300000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_6513)
                                    mem[mem[64] + 36] = address(_6514)
                                    mem[mem[64] + 68] = _6734
                                    mem[mem[64] + 100] = 160
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 132] = 192
                                    mem[mem[64] + 196] = 0
                                    require ext_code.size(address(_6512))
                                    call address(_6512).operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_6513), address(_6514), _6734, 160, 192, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        continue 
            else:
                _5420 = mem[mem[96]]
                idx = 0
                while uint8(idx) < _5420:
                    if uint8(idx) >= mem[mem[96]]:
                        revert with 0, 50
                    if uint8(idx) >= mem[mem[96]]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2]:
                        _5565 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                        _5567 = mem[192]
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                            revert with 0, 50
                        _5708 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                        mem[mem[64] + 4] = mem[172 len 20]
                        mem[mem[64] + 36] = address(_5567)
                        mem[mem[64] + 68] = _5708
                        require ext_code.size(address(_5565))
                        call address(_5565).transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5567), _5708
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5981 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5981] == bool(mem[_5981])
                    else:
                        if uint8(idx) >= mem[mem[96]]:
                            revert with 0, 50
                        if mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2] != 777:
                            if 721 == mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2]:
                                if uint8(idx) < mem[mem[96]]:
                                    if uint8(var46003) >= mem[mem[mem[(32 * uint8(idx)) + var46002 + 32] + 64]]:
                                        if uint8(idx) == 255:
                                            revert with 0, 17
                                        idx = uint8(idx) + 1
                                        continue 
                                    if uint8(idx) < mem[mem[96]]:
                                        if uint8(idx) < mem[mem[96]]:
                                            _8776 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]
                                            _8777 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]
                                            t = mem[96]
                                            t = mem[192]
                                            u = mem[160]
                                            v = mem[mem[(32 * uint8(idx)) + var50002 + 32] + 12 len 20]
                                            s = var50003
                                            while uint8(s) < _8777:
                                                _8804 = mem[(32 * uint8(s)) + _8776 + 32]
                                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = address(u)
                                                mem[mem[64] + 36] = address(t)
                                                mem[mem[64] + 68] = _8804
                                                require ext_code.size(v)
                                                call v.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args address(u), address(t), _8804
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if uint8(s) == 255:
                                                    revert with 0, 17
                                                if uint8(idx) >= mem[mem[96]]:
                                                    revert with 0, 50
                                                if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) >= mem[mem[96]]:
                                                    revert with 0, 50
                                                if uint8(idx) >= mem[mem[96]]:
                                                    revert with 0, 50
                                                t = mem[96]
                                                t = mem[192]
                                                u = mem[160]
                                                v = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 12 len 20]
                                                s = uint8(s) + 1
                                                continue 
                                revert with 0, 50
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 62 len 2] != 1155:
                                revert with 0, 'executeTrade: user 1 unsupported erc type'
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]] <= 1:
                                _6223 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6224 = mem[160]
                                _6225 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]]:
                                    revert with 0, 50
                                _6524 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64] + 32]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                                    revert with 0, 50
                                _6747 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_6224)
                                mem[mem[64] + 36] = address(_6225)
                                mem[mem[64] + 68] = _6524
                                mem[mem[64] + 100] = _6747
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(address(_6223))
                                call address(_6223).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(_6224), address(_6225), _6524, _6747, 160, 0
                            else:
                                _6229 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6230 = mem[160]
                                _6231 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                _6361 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 64]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                _6528 = mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]
                                _6529 = mem[64]
                                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_6230)
                                mem[mem[64] + 36] = address(_6231)
                                mem[mem[64] + 68] = 160
                                _6749 = mem[_6361]
                                mem[mem[64] + 164] = mem[_6361]
                                s = 0
                                t = _6361 + 32
                                u = mem[64] + 196
                                while s < _6749:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_6529 + 100] = (32 * _6749) + 192
                                _7279 = mem[_6528]
                                mem[_6529 + (32 * _6749) + 196] = mem[_6528]
                                s = 0
                                t = _6528 + 32
                                u = _6529 + (32 * _6749) + 228
                                while s < _7279:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_6529 + 132] = (32 * _6749) + (32 * _7279) + 224
                                mem[_6529 + (32 * _6749) + (32 * _7279) + 228] = 0
                                require ext_code.size(address(_6229))
                                call address(_6229).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6529 + (32 * _6749) + (32 * _7279) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _5705 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(_5705))
                            staticcall address(_5705).isOperatorFor(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5804 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5804] == bool(mem[_5804])
                            if uint8(idx) >= mem[mem[96]]:
                                revert with 0, 50
                            if not mem[_5804]:
                                _6531 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6533 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                                    revert with 0, 50
                                _6750 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                                mem[mem[64] + 4] = mem[172 len 20]
                                mem[mem[64] + 36] = address(_6533)
                                mem[mem[64] + 68] = _6750
                                require ext_code.size(address(_6531))
                                call address(_6531).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_6533), _6750
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7029 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7029] == bool(mem[_7029])
                            else:
                                _6537 = mem[mem[(32 * uint8(idx)) + mem[96] + 32]]
                                _6538 = mem[160]
                                _6539 = mem[192]
                                if uint8(idx) >= mem[mem[96]]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96]]:
                                    revert with 0, 50
                                _6752 = mem[mem[mem[(32 * uint8(idx)) + mem[96] + 32] + 96] + 32]
                                mem[mem[64]] = 0x62ad1b8300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_6538)
                                mem[mem[64] + 36] = address(_6539)
                                mem[mem[64] + 68] = _6752
                                mem[mem[64] + 100] = 160
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 132] = 192
                                mem[mem[64] + 196] = 0
                                require ext_code.size(address(_6537))
                                call address(_6537).operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(_6538), address(_6539), _6752, 160, 192, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
                if 0 >= mem[mem[128]]:
                    revert with 0, 50
                if mem[mem[mem[128] + 32] + 12 len 20]:
                    _7142 = mem[mem[128]]
                    idx = 0
                    while uint8(idx) < _7142:
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if uint8(idx) >= mem[mem[128]]:
                            revert with 0, 50
                        if 20 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                            _7334 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                            _7336 = mem[160]
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                revert with 0, 50
                            _7428 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                            mem[mem[64] + 4] = mem[204 len 20]
                            mem[mem[64] + 36] = address(_7336)
                            mem[mem[64] + 68] = _7428
                            require ext_code.size(address(_7334))
                            call address(_7334).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_7336), _7428
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7537 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7537] == bool(mem[_7537])
                        else:
                            if uint8(idx) >= mem[mem[128]]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 777:
                                if 721 == mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2]:
                                    if uint8(idx) < mem[mem[128]]:
                                        if uint8(var52003) >= mem[mem[mem[(32 * uint8(idx)) + var52002 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[mem[128]]:
                                            if uint8(idx) < mem[mem[128]]:
                                                _8992 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                                _8993 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]
                                                t = mem[128]
                                                t = mem[160]
                                                u = mem[192]
                                                v = mem[mem[(32 * uint8(idx)) + var56002 + 32] + 12 len 20]
                                                s = var56003
                                                while uint8(s) < _8993:
                                                    _9000 = mem[(32 * uint8(s)) + _8992 + 32]
                                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = address(u)
                                                    mem[mem[64] + 36] = address(t)
                                                    mem[mem[64] + 68] = _9000
                                                    require ext_code.size(v)
                                                    call v.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args address(u), address(t), _9000
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[mem[128]]:
                                                        revert with 0, 50
                                                    t = mem[128]
                                                    t = mem[160]
                                                    u = mem[192]
                                                    v = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 12 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 62 len 2] != 1155:
                                    revert with 0, 'executeTrade: user 2 unsupported erc type'
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]] <= 1:
                                    _7631 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7632 = mem[192]
                                    _7633 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]]:
                                        revert with 0, 50
                                    _7768 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64] + 32]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _7847 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_7632)
                                    mem[mem[64] + 36] = address(_7633)
                                    mem[mem[64] + 68] = _7768
                                    mem[mem[64] + 100] = _7847
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(address(_7631))
                                    call address(_7631).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_7632), address(_7633), _7768, _7847, 160, 0
                                else:
                                    _7637 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7638 = mem[192]
                                    _7639 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _7703 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 64]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    _7772 = mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]
                                    _7773 = mem[64]
                                    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_7638)
                                    mem[mem[64] + 36] = address(_7639)
                                    mem[mem[64] + 68] = 160
                                    _7849 = mem[_7703]
                                    mem[mem[64] + 164] = mem[_7703]
                                    s = 0
                                    t = _7703 + 32
                                    u = mem[64] + 196
                                    while s < _7849:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = (32 * _7849) + 192
                                    _8067 = mem[_7772]
                                    mem[mem[64] + (32 * _7849) + 196] = mem[_7772]
                                    s = 0
                                    t = _7772 + 32
                                    u = mem[64] + (32 * _7849) + 228
                                    while s < _8067:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_7773 + 132] = (32 * _7849) + (32 * _8067) + 224
                                    mem[_7773 + (32 * _7849) + (32 * _8067) + 228] = 0
                                    require ext_code.size(address(_7637))
                                    call address(_7637).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7773 + (32 * _7849) + (32 * _8067) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _7425 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_7425))
                                staticcall address(_7425).isOperatorFor(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args this.address, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7480 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7480] == bool(mem[_7480])
                                if uint8(idx) >= mem[mem[128]]:
                                    revert with 0, 50
                                if not mem[_7480]:
                                    _7775 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7777 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _7850 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64] + 4] = mem[204 len 20]
                                    mem[mem[64] + 36] = address(_7777)
                                    mem[mem[64] + 68] = _7850
                                    require ext_code.size(address(_7775))
                                    call address(_7775).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_7777), _7850
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7877 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7877] == bool(mem[_7877])
                                else:
                                    _7781 = mem[mem[(32 * uint8(idx)) + mem[128] + 32]]
                                    _7782 = mem[192]
                                    _7783 = mem[160]
                                    if uint8(idx) >= mem[mem[128]]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96]]:
                                        revert with 0, 50
                                    _7852 = mem[mem[mem[(32 * uint8(idx)) + mem[128] + 32] + 96] + 32]
                                    mem[mem[64]] = 0x62ad1b8300000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_7782)
                                    mem[mem[64] + 36] = address(_7783)
                                    mem[mem[64] + 68] = _7852
                                    mem[mem[64] + 100] = 160
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 132] = 192
                                    mem[mem[64] + 196] = 0
                                    require ext_code.size(address(_7781))
                                    call address(_7781).operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args address(_7782), address(_7783), _7852, 160, 192, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        continue 
    if sub_445c9e0d == -1:
        revert with 0, 17
    sub_445c9e0d++
    uint8(stor8[arg1].field_1536) = 1
    stor8[arg1].field_1024 = block.timestamp
    if userHistory[msg.sender].field_0 == -1:
        revert with 0, 17
    userHistory[msg.sender].field_0++
    if userHistory[address(stor8[arg1].field_512)].field_0 == -1:
        revert with 0, 17
    userHistory[address(stor8[arg1].field_512)].field_0++
    sub_bdbd96ef = block.timestamp
    emit TradeExecuted(arg1, address(stor8[arg1].field_512), address(stor8[arg1].field_768));
}

function sub_a780073c(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] <= test266151307()
        require 128 <= calldata.size + -cd[68] + -cd[idx] - 36
        _1141 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        require cd[(cd[68] + cd[idx] + 36)] == address(cd[(cd[68] + cd[idx] + 36)])
        mem[_1141] = cd[(cd[68] + cd[idx] + 36)]
        require cd[(cd[68] + cd[idx] + 68)] == uint16(cd[(cd[68] + cd[idx] + 68)])
        mem[_1141 + 32] = cd[(cd[68] + cd[idx] + 68)]
        require cd[(cd[68] + cd[idx] + 100)] <= test266151307()
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 67 < calldata.size
        if cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)] > test266151307():
            revert with 0, 65
        _1144 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 1
        mem[_1144] = cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 68 <= calldata.size
        t = cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 68
        u = _1144 + 32
        while t < cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 68:
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_1141 + 64] = _1144
        require cd[(cd[68] + cd[idx] + 132)] <= test266151307()
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 67 < calldata.size
        if cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)] > test266151307():
            revert with 0, 65
        _2292 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 1
        mem[_2292] = cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 68 <= calldata.size
        t = cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 68
        u = _2292 + 32
        while t < cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 68:
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_1141 + 96] = _2292
        mem[s] = _1141
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    _1142 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 100).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 100).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 100).length) + 1
    mem[_1142] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    t = _1142 + 32
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] <= test266151307()
        require 128 <= calldata.size + -cd[100] + -cd[idx] - 36
        _2280 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        require cd[(cd[100] + cd[idx] + 36)] == address(cd[(cd[100] + cd[idx] + 36)])
        mem[_2280] = cd[(cd[100] + cd[idx] + 36)]
        require cd[(cd[100] + cd[idx] + 68)] == uint16(cd[(cd[100] + cd[idx] + 68)])
        mem[_2280 + 32] = cd[(cd[100] + cd[idx] + 68)]
        require cd[(cd[100] + cd[idx] + 100)] <= test266151307()
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 67 < calldata.size
        if cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)] > test266151307():
            revert with 0, 65
        _2380 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 1
        mem[_2380] = cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 68 <= calldata.size
        s = cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 68
        u = _2380 + 32
        while s < cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 68:
            mem[u] = cd[s]
            s = s + 32
            u = u + 32
            continue 
        mem[_2280 + 64] = _2380
        require cd[(cd[100] + cd[idx] + 132)] <= test266151307()
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 67 < calldata.size
        if cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)] > test266151307():
            revert with 0, 65
        _3589 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 1
        mem[_3589] = cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 68 <= calldata.size
        s = cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 68
        u = _3589 + 32
        while s < cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 68:
            mem[u] = cd[s]
            s = s + 32
            u = u + 32
            continue 
        mem[_2280 + 96] = _3589
        mem[t] = _2280
        idx = idx + 32
        t = t + 32
        continue 
    if not address(stor1.length):
        if 0 >= mem[96]:
            revert with 0, 50
        if not mem[mem[128] + 12 len 20]:
            stor8[stor6].field_512 = msg.sender or Mask(96, 160, stor8[stor6].field_512)
            address(stor8[stor6].field_768) = address(cd[4])
            stor8[stor6].field_1280 = cd[36]
            mem[0] = msg.sender
            mem[32] = 9
            if userHistory[msg.sender].field_256 == -1:
                revert with 0, 17
            userHistory[msg.sender].field_256++
            idx = 0
            while uint8(idx) < mem[96]:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                stor8[stor6].field_0++
                mem[0] = sha3(sub_e275c997, 8)
                address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                _3431 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                if not _3431:
                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    _4638 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                    if not _4638:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _4638) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                else:
                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                    t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                    while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _3431) + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    _5589 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                    if not _5589:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _5589) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                continue 
            _4530 = mem[_1142]
            idx = 0
            while uint8(idx) < _4530:
                if uint8(idx) >= mem[_1142]:
                    revert with 0, 50
                stor8[stor6].field_256++
                mem[0] = sha3(sub_e275c997, 8) + 1
                address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 12 len 20]
                uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 62 len 2]
                _4569 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                if not _4569:
                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    _5587 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                    if not _5587:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _5587) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                else:
                    t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                    u = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + 32
                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + (32 * _4569) + 32 > u:
                        stor[t] = mem[u]
                        t = t + 1
                        u = u + 32
                        continue 
                    s = t
                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    _6115 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                    if not _6115:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6115) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                continue 
        else:
            _3417 = mem[96]
            idx = 0
            while uint8(idx) < _3417:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                if 20 == mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]:
                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                        revert with 0, 50
                    _3483 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    _3500 = mem[mem[(32 * uint8(idx)) + 128]]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(address(_3500))
                    staticcall address(_3500).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3544 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3544] < _3483:
                        revert with 0, 'createTrade: erc20 approval unset'
                else:
                    if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 777:
                        if uint8(idx) < mem[96]:
                            if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 721:
                                if uint8(idx) >= mem[96]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 1155:
                                    revert with 0, 'createTrade: unsupported erc type'
                                if uint8(idx) >= mem[96]:
                                    revert with 0, 50
                                _3602 = mem[mem[(32 * uint8(idx)) + 128]]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                require ext_code.size(address(_3602))
                                staticcall address(_3602).isApprovedForAll(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args msg.sender, this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3649 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3649] == bool(mem[_3649])
                                if not mem[_3649]:
                                    revert with 0, 'createTrade: erc1155 approval unset'
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                            if uint8(idx) < mem[96]:
                                _3540 = mem[mem[(32 * uint8(idx)) + 128]]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                require ext_code.size(address(_3540))
                                staticcall address(_3540).isApprovedForAll(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args msg.sender, this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3605 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3605] == bool(mem[_3605])
                                if mem[_3605]:
                                    if uint8(idx) == 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    continue 
                                if uint8(idx) < mem[96]:
                                    if uint8(var78003) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                        if uint8(idx) == 255:
                                            revert with 0, 17
                                        idx = uint8(idx) + 1
                                        continue 
                                    if uint8(idx) < mem[96]:
                                        if uint8(idx) < mem[96]:
                                            _6603 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                                            _6604 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                                            t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                            s = var82004
                                            while uint8(s) < _6604:
                                                _6621 = mem[(32 * uint8(s)) + _6603 + 32]
                                                mem[mem[64] + 4] = mem[(32 * uint8(s)) + _6603 + 32]
                                                require ext_code.size(t)
                                                staticcall t.getApproved(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _6621
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6672 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6672] == mem[_6672 + 12 len 20]
                                                if mem[_6672 + 12 len 20] != this.address:
                                                    revert with 0, 'createTrade: erc721 approval unset'
                                                if uint8(s) == 255:
                                                    revert with 0, 17
                                                if uint8(idx) >= mem[96]:
                                                    revert with 0, 50
                                                if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) >= mem[96]:
                                                    revert with 0, 50
                                                if uint8(idx) >= mem[96]:
                                                    revert with 0, 50
                                                t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                                s = uint8(s) + 1
                                                continue 
                        revert with 0, 50
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    _3496 = mem[mem[(32 * uint8(idx)) + 128]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(address(_3496))
                    staticcall address(_3496).isOperatorFor(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3543] == bool(mem[_3543])
                    if not mem[_3543]:
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                            revert with 0, 50
                        _3729 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        _3781 = mem[mem[(32 * uint8(idx)) + 128]]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(address(_3781))
                        staticcall address(_3781).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3910] < _3729:
                            revert with 0, 'createTrade: erc777 operator and/or appproval unset'
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                continue 
            stor8[stor6].field_512 = msg.sender or Mask(96, 160, stor8[stor6].field_512)
            address(stor8[stor6].field_768) = address(cd[4])
            stor8[stor6].field_1280 = cd[36]
            mem[0] = msg.sender
            mem[32] = 9
            if userHistory[msg.sender].field_256 == -1:
                revert with 0, 17
            userHistory[msg.sender].field_256++
            idx = 0
            while uint8(idx) < mem[96]:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                stor8[stor6].field_0++
                mem[0] = sha3(sub_e275c997, 8)
                address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                _4576 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                if not _4576:
                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    _5592 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                    if not _5592:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _5592) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                else:
                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                    t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                    while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _4576) + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    _6119 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                    if not _6119:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6119) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                continue 
            _5458 = mem[_1142]
            idx = 0
            while uint8(idx) < _5458:
                if uint8(idx) >= mem[_1142]:
                    revert with 0, 50
                stor8[stor6].field_256++
                mem[0] = sha3(sub_e275c997, 8) + 1
                address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 12 len 20]
                uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 62 len 2]
                _5517 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                if not _5517:
                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    _6117 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                    if not _6117:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6117) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                else:
                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + 32
                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + (32 * _5517) + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    _6457 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                    if not _6457:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6457) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                continue 
    else:
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2288 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_2288] >= sub_4c822e6b:
            if 0 >= mem[96]:
                revert with 0, 50
            if not mem[mem[128] + 12 len 20]:
                stor8[stor6].field_512 = msg.sender or Mask(96, 160, stor8[stor6].field_512)
                address(stor8[stor6].field_768) = address(cd[4])
                stor8[stor6].field_1280 = cd[36]
                mem[0] = msg.sender
                mem[32] = 9
                if userHistory[msg.sender].field_256 == -1:
                    revert with 0, 17
                userHistory[msg.sender].field_256++
                idx = 0
                while uint8(idx) < mem[96]:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    stor8[stor6].field_0++
                    mem[0] = sha3(sub_e275c997, 8)
                    address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                    uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                    _3442 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                    stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                    if not _3442:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _4646 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _4646:
                            s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _4646) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        u = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _3442) + 32 > u:
                            stor[s] = mem[u]
                            s = s + 1
                            u = u + 32
                            continue 
                        u = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                        _5599 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _5599:
                            s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _5599) + 32 > u:
                                stor[s] = mem[u]
                                s = s + 1
                                u = u + 32
                                continue 
                            t = s
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
                _4533 = mem[_1142]
                idx = 0
                while uint8(idx) < _4533:
                    if uint8(idx) >= mem[_1142]:
                        revert with 0, 50
                    stor8[stor6].field_256++
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 12 len 20]
                    uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 62 len 2]
                    _4583 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                    if not _4583:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _5597 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _5597:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            u = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _5597) + 32 > u:
                                stor[s] = mem[u]
                                s = s + 1
                                u = u + 32
                                continue 
                            t = s
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + (32 * _4583) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                        _6123 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _6123:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6123) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
            else:
                _3419 = mem[96]
                s = 0
                while uint8(s) < _3419:
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                        if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                            revert with 0, 50
                        _3488 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        _3512 = mem[mem[(32 * uint8(s)) + 128]]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(address(_3512))
                        staticcall address(_3512).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3560 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3560] < _3488:
                            revert with 0, 'createTrade: erc20 approval unset'
                    else:
                        if mem[mem[(32 * uint8(s)) + 128] + 62 len 2] != 777:
                            if uint8(s) < mem[96]:
                                if mem[mem[(32 * uint8(s)) + 128] + 62 len 2] != 721:
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(s)) + 128] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    _3620 = mem[mem[(32 * uint8(s)) + 128]]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    require ext_code.size(address(_3620))
                                    staticcall address(_3620).isApprovedForAll(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args msg.sender, this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3655 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3655] == bool(mem[_3655])
                                    if not mem[_3655]:
                                        revert with 0, 'createTrade: erc1155 approval unset'
                                    if uint8(s) == 255:
                                        revert with 0, 17
                                    s = uint8(s) + 1
                                    continue 
                                if uint8(s) < mem[96]:
                                    _3556 = mem[mem[(32 * uint8(s)) + 128]]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    require ext_code.size(address(_3556))
                                    staticcall address(_3556).isApprovedForAll(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args msg.sender, this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3623 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3623] == bool(mem[_3623])
                                    if mem[_3623]:
                                        if uint8(s) == 255:
                                            revert with 0, 17
                                        s = uint8(s) + 1
                                        continue 
                                    if uint8(s) < mem[96]:
                                        if uint8(var84003) >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                            if uint8(s) == 255:
                                                revert with 0, 17
                                            s = uint8(s) + 1
                                            continue 
                                        if uint8(s) < mem[96]:
                                            if uint8(s) < mem[96]:
                                                _6606 = mem[mem[(32 * uint8(s)) + 128] + 64]
                                                _6607 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                                                t = mem[mem[(32 * uint8(s)) + 128] + 12 len 20]
                                                idx = var88004
                                                while uint8(idx) < _6607:
                                                    _6624 = mem[(32 * uint8(idx)) + _6606 + 32]
                                                    mem[mem[64] + 4] = mem[(32 * uint8(idx)) + _6606 + 32]
                                                    require ext_code.size(t)
                                                    staticcall t.getApproved(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _6624
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6673 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6673] == mem[_6673 + 12 len 20]
                                                    if mem[_6673 + 12 len 20] != this.address:
                                                        revert with 0, 'createTrade: erc721 approval unset'
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    if uint8(s) >= mem[96]:
                                                        revert with 0, 50
                                                    if uint8(uint8(idx) + 1) >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        s = uint8(s) + 1
                                                        continue 
                                                    if uint8(s) >= mem[96]:
                                                        revert with 0, 50
                                                    if uint8(s) >= mem[96]:
                                                        revert with 0, 50
                                                    t = mem[mem[(32 * uint8(s)) + 128] + 12 len 20]
                                                    idx = uint8(idx) + 1
                                                    continue 
                            revert with 0, 50
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        _3508 = mem[mem[(32 * uint8(s)) + 128]]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(_3508))
                        staticcall address(_3508).isOperatorFor(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3559 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3559] == bool(mem[_3559])
                        if not mem[_3559]:
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                                revert with 0, 50
                            _3736 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            _3793 = mem[mem[(32 * uint8(s)) + 128]]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(address(_3793))
                            staticcall address(_3793).allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3915 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_3915] < _3736:
                                revert with 0, 'createTrade: erc777 operator and/or appproval unset'
                    if uint8(s) == 255:
                        revert with 0, 17
                    s = uint8(s) + 1
                    continue 
                stor8[stor6].field_512 = msg.sender or Mask(96, 160, stor8[stor6].field_512)
                address(stor8[stor6].field_768) = address(cd[4])
                stor8[stor6].field_1280 = cd[36]
                mem[0] = msg.sender
                mem[32] = 9
                if userHistory[msg.sender].field_256 == -1:
                    revert with 0, 17
                userHistory[msg.sender].field_256++
                s = 0
                while uint8(s) < mem[96]:
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    stor8[stor6].field_0++
                    mem[0] = sha3(sub_e275c997, 8)
                    address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(s)) + 128] + 12 len 20]
                    uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(s)) + 128] + 62 len 2]
                    _4590 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                    stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                    if not _4590:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _5602 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _5602:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(s)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + 128] + 96] + (32 * _5602) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        u = mem[mem[(32 * uint8(s)) + 128] + 64] + 32
                        while mem[mem[(32 * uint8(s)) + 128] + 64] + (32 * _4590) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        idx = t
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _6127 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _6127:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(s)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + 128] + 96] + (32 * _6127) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    if uint8(s) == 255:
                        revert with 0, 17
                    s = uint8(s) + 1
                    continue 
                _5462 = mem[_1142]
                s = 0
                while uint8(s) < _5462:
                    if uint8(s) >= mem[_1142]:
                        revert with 0, 50
                    stor8[stor6].field_256++
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(s)) + _1142 + 32] + 12 len 20]
                    uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(s)) + _1142 + 32] + 62 len 2]
                    _5526 = mem[mem[mem[(32 * uint8(s)) + _1142 + 32] + 64]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(s)) + _1142 + 32] + 64]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                    if not _5526:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _6125 = mem[mem[mem[(32 * uint8(s)) + _1142 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _1142 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _6125:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            u = mem[mem[(32 * uint8(s)) + _1142 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + _1142 + 32] + 96] + (32 * _6125) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        u = mem[mem[(32 * uint8(s)) + _1142 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(s)) + _1142 + 32] + 64] + (32 * _5526) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        u = t
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                        _6460 = mem[mem[mem[(32 * uint8(s)) + _1142 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _1142 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _6460:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            u = mem[mem[(32 * uint8(s)) + _1142 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + _1142 + 32] + 96] + (32 * _6460) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    if uint8(s) == 255:
                        revert with 0, 17
                    s = uint8(s) + 1
                    continue 
        else:
            if serviceFee != msg.value:
                revert with 0, 'createTrade: service fee unsent'
            _2323 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            if ceil32(mem[_2323]) <= mem[_2323]:
                call stor4 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_2323] + _2323 + -mem[64] + 28]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if not mem[mem[128] + 12 len 20]:
                        stor8[stor6].field_512 = msg.sender or Mask(96, 160, stor8[stor6].field_512)
                        address(stor8[stor6].field_768) = address(cd[4])
                        stor8[stor6].field_1280 = cd[36]
                        mem[0] = msg.sender
                        mem[32] = 9
                        if userHistory[msg.sender].field_256 == -1:
                            revert with 0, 17
                        userHistory[msg.sender].field_256++
                        idx = 0
                        while uint8(idx) < mem[96]:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            stor8[stor6].field_0++
                            mem[0] = sha3(sub_e275c997, 8)
                            address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                            uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                            _4598 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                            if not _4598:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _5608 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _5608:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _5608) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _4598) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6133 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _6133:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6133) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _5466 = mem[_1142]
                        idx = 0
                        while uint8(idx) < _5466:
                            if uint8(idx) >= mem[_1142]:
                                revert with 0, 50
                            stor8[stor6].field_256++
                            mem[0] = sha3(sub_e275c997, 8) + 1
                            address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 12 len 20]
                            uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 62 len 2]
                            _5535 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                            if not _5535:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _6131 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6131:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6131) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + (32 * _5535) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6463 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6463:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6463) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                    else:
                        _4537 = mem[96]
                        idx = 0
                        while uint8(idx) < _4537:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]:
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                    revert with 0, 50
                                _4741 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                                if uint8(idx) >= mem[96]:
                                    revert with 0, 50
                                _4777 = mem[mem[(32 * uint8(idx)) + 128]]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                require ext_code.size(address(_4777))
                                staticcall address(_4777).allowance(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args msg.sender, this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4857 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4857] < _4741:
                                    revert with 0, 'createTrade: erc20 approval unset'
                            else:
                                if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 777:
                                    if uint8(idx) < mem[96]:
                                        if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 721:
                                            if uint8(idx) >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 1155:
                                                revert with 0, 'createTrade: unsupported erc type'
                                            if uint8(idx) >= mem[96]:
                                                revert with 0, 50
                                            _4964 = mem[mem[(32 * uint8(idx)) + 128]]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            require ext_code.size(address(_4964))
                                            staticcall address(_4964).isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5067 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5067] == bool(mem[_5067])
                                            if not mem[_5067]:
                                                revert with 0, 'createTrade: erc1155 approval unset'
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[96]:
                                            _4853 = mem[mem[(32 * uint8(idx)) + 128]]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            require ext_code.size(address(_4853))
                                            staticcall address(_4853).isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4967 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4967] == bool(mem[_4967])
                                            if mem[_4967]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[96]:
                                                if uint8(var96003) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[96]:
                                                    if uint8(idx) < mem[96]:
                                                        _6753 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                                                        _6754 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                                        s = var100004
                                                        while uint8(s) < _6754:
                                                            _6765 = mem[(32 * uint8(s)) + _6753 + 32]
                                                            mem[mem[64] + 4] = mem[(32 * uint8(s)) + _6753 + 32]
                                                            require ext_code.size(t)
                                                            staticcall t.getApproved(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _6765
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6780 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_6780] == mem[_6780 + 12 len 20]
                                                            if mem[_6780 + 12 len 20] != this.address:
                                                                revert with 0, 'createTrade: erc721 approval unset'
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[96]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[96]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[96]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[96]:
                                    revert with 0, 50
                                _4773 = mem[mem[(32 * uint8(idx)) + 128]]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_4773))
                                staticcall address(_4773).isOperatorFor(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args this.address, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4856 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4856] == bool(mem[_4856])
                                if not mem[_4856]:
                                    if uint8(idx) >= mem[96]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                        revert with 0, 50
                                    _5171 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                                    if uint8(idx) >= mem[96]:
                                        revert with 0, 50
                                    _5211 = mem[mem[(32 * uint8(idx)) + 128]]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    require ext_code.size(address(_5211))
                                    staticcall address(_5211).allowance(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args msg.sender, this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5292 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5292] < _5171:
                                        revert with 0, 'createTrade: erc777 operator and/or appproval unset'
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        stor8[stor6].field_512 = msg.sender or Mask(96, 160, stor8[stor6].field_512)
                        address(stor8[stor6].field_768) = address(cd[4])
                        stor8[stor6].field_1280 = cd[36]
                        mem[0] = msg.sender
                        mem[32] = 9
                        if userHistory[msg.sender].field_256 == -1:
                            revert with 0, 17
                        userHistory[msg.sender].field_256++
                        idx = 0
                        while uint8(idx) < mem[96]:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            stor8[stor6].field_0++
                            mem[0] = sha3(sub_e275c997, 8)
                            address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                            uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                            _5542 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                            if not _5542:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _6136 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _6136:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6136) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _5542) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6467 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _6467:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6467) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _6022 = mem[_1142]
                        idx = 0
                        while uint8(idx) < _6022:
                            if uint8(idx) >= mem[_1142]:
                                revert with 0, 50
                            stor8[stor6].field_256++
                            mem[0] = sha3(sub_e275c997, 8) + 1
                            address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 12 len 20]
                            uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 62 len 2]
                            _6083 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                            if not _6083:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _6465 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6465:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6465) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + (32 * _6083) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6661 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6661:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6661) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                else:
                    _3478 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3478] = return_data.size
                    mem[_3478 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if not mem[mem[128] + 12 len 20]:
                        stor8[stor6].field_512 = msg.sender or Mask(96, 160, stor8[stor6].field_512)
                        address(stor8[stor6].field_768) = address(cd[4])
                        stor8[stor6].field_1280 = cd[36]
                        mem[0] = msg.sender
                        mem[32] = 9
                        if userHistory[msg.sender].field_256 == -1:
                            revert with 0, 17
                        userHistory[msg.sender].field_256++
                        idx = 0
                        while uint8(idx) < mem[96]:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            stor8[stor6].field_0++
                            mem[0] = sha3(sub_e275c997, 8)
                            address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                            uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                            _4609 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                            if not _4609:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _5616 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _5616:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _5616) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _4609) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6143 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _6143:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6143) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _5469 = mem[_1142]
                        idx = 0
                        while uint8(idx) < _5469:
                            if uint8(idx) >= mem[_1142]:
                                revert with 0, 50
                            stor8[stor6].field_256++
                            mem[0] = sha3(sub_e275c997, 8) + 1
                            address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 12 len 20]
                            uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 62 len 2]
                            _5549 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                            if not _5549:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _6141 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6141:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6141) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + (32 * _5549) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6471 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6471:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6471) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                    else:
                        _4539 = mem[96]
                        idx = 0
                        while uint8(idx) < _4539:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]:
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                    revert with 0, 50
                                _4746 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                                if uint8(idx) >= mem[96]:
                                    revert with 0, 50
                                _4789 = mem[mem[(32 * uint8(idx)) + 128]]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                require ext_code.size(address(_4789))
                                staticcall address(_4789).allowance(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args msg.sender, this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4873 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4873] < _4746:
                                    revert with 0, 'createTrade: erc20 approval unset'
                            else:
                                if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 777:
                                    if uint8(idx) < mem[96]:
                                        if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 721:
                                            if uint8(idx) >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 1155:
                                                revert with 0, 'createTrade: unsupported erc type'
                                            if uint8(idx) >= mem[96]:
                                                revert with 0, 50
                                            _4982 = mem[mem[(32 * uint8(idx)) + 128]]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            require ext_code.size(address(_4982))
                                            staticcall address(_4982).isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5073 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5073] == bool(mem[_5073])
                                            if not mem[_5073]:
                                                revert with 0, 'createTrade: erc1155 approval unset'
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[96]:
                                            _4869 = mem[mem[(32 * uint8(idx)) + 128]]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            require ext_code.size(address(_4869))
                                            staticcall address(_4869).isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4985 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4985] == bool(mem[_4985])
                                            if mem[_4985]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[96]:
                                                if uint8(var96003) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[96]:
                                                    if uint8(idx) < mem[96]:
                                                        _6756 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                                                        _6757 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                                        s = var100004
                                                        while uint8(s) < _6757:
                                                            _6768 = mem[(32 * uint8(s)) + _6756 + 32]
                                                            mem[mem[64] + 4] = mem[(32 * uint8(s)) + _6756 + 32]
                                                            require ext_code.size(t)
                                                            staticcall t.getApproved(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _6768
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6781 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_6781] == mem[_6781 + 12 len 20]
                                                            if mem[_6781 + 12 len 20] != this.address:
                                                                revert with 0, 'createTrade: erc721 approval unset'
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[96]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[96]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[96]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[96]:
                                    revert with 0, 50
                                _4785 = mem[mem[(32 * uint8(idx)) + 128]]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_4785))
                                staticcall address(_4785).isOperatorFor(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args this.address, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4872 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4872] == bool(mem[_4872])
                                if not mem[_4872]:
                                    if uint8(idx) >= mem[96]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                        revert with 0, 50
                                    _5178 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                                    if uint8(idx) >= mem[96]:
                                        revert with 0, 50
                                    _5223 = mem[mem[(32 * uint8(idx)) + 128]]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    require ext_code.size(address(_5223))
                                    staticcall address(_5223).allowance(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args msg.sender, this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5297 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5297] < _5178:
                                        revert with 0, 'createTrade: erc777 operator and/or appproval unset'
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        stor8[stor6].field_512 = msg.sender or Mask(96, 160, stor8[stor6].field_512)
                        address(stor8[stor6].field_768) = address(cd[4])
                        stor8[stor6].field_1280 = cd[36]
                        mem[0] = msg.sender
                        mem[32] = 9
                        if userHistory[msg.sender].field_256 == -1:
                            revert with 0, 17
                        userHistory[msg.sender].field_256++
                        idx = 0
                        while uint8(idx) < mem[96]:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            stor8[stor6].field_0++
                            mem[0] = sha3(sub_e275c997, 8)
                            address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                            uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                            _5556 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                            if not _5556:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _6146 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _6146:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6146) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _5556) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6475 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _6475:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6475) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _6026 = mem[_1142]
                        idx = 0
                        while uint8(idx) < _6026:
                            if uint8(idx) >= mem[_1142]:
                                revert with 0, 50
                            stor8[stor6].field_256++
                            mem[0] = sha3(sub_e275c997, 8) + 1
                            address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 12 len 20]
                            uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 62 len 2]
                            _6092 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                            if not _6092:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _6473 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6473:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6473) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + (32 * _6092) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6664 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6664:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6664) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
            else:
                mem[_2323 + mem[_2323] + 32] = 0
                call stor4 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_2323] + _2323 + -mem[64] + 28]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if not mem[mem[128] + 12 len 20]:
                        stor8[stor6].field_512 = msg.sender or Mask(96, 160, stor8[stor6].field_512)
                        address(stor8[stor6].field_768) = address(cd[4])
                        stor8[stor6].field_1280 = cd[36]
                        mem[0] = msg.sender
                        mem[32] = 9
                        if userHistory[msg.sender].field_256 == -1:
                            revert with 0, 17
                        userHistory[msg.sender].field_256++
                        idx = 0
                        while uint8(idx) < mem[96]:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            stor8[stor6].field_0++
                            mem[0] = sha3(sub_e275c997, 8)
                            address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                            uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                            _4620 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                            if not _4620:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _5624 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _5624:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _5624) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _4620) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6153 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _6153:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6153) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _5472 = mem[_1142]
                        idx = 0
                        while uint8(idx) < _5472:
                            if uint8(idx) >= mem[_1142]:
                                revert with 0, 50
                            stor8[stor6].field_256++
                            mem[0] = sha3(sub_e275c997, 8) + 1
                            address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 12 len 20]
                            uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 62 len 2]
                            _5563 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                            if not _5563:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _6151 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6151:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6151) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + (32 * _5563) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6479 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6479:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6479) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                    else:
                        _4541 = mem[96]
                        idx = 0
                        while uint8(idx) < _4541:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]:
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                    revert with 0, 50
                                _4751 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                                if uint8(idx) >= mem[96]:
                                    revert with 0, 50
                                _4801 = mem[mem[(32 * uint8(idx)) + 128]]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                require ext_code.size(address(_4801))
                                staticcall address(_4801).allowance(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args msg.sender, this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4889 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4889] < _4751:
                                    revert with 0, 'createTrade: erc20 approval unset'
                            else:
                                if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 777:
                                    if uint8(idx) < mem[96]:
                                        if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 721:
                                            if uint8(idx) >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 1155:
                                                revert with 0, 'createTrade: unsupported erc type'
                                            if uint8(idx) >= mem[96]:
                                                revert with 0, 50
                                            _5000 = mem[mem[(32 * uint8(idx)) + 128]]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            require ext_code.size(address(_5000))
                                            staticcall address(_5000).isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5079 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5079] == bool(mem[_5079])
                                            if not mem[_5079]:
                                                revert with 0, 'createTrade: erc1155 approval unset'
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[96]:
                                            _4885 = mem[mem[(32 * uint8(idx)) + 128]]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            require ext_code.size(address(_4885))
                                            staticcall address(_4885).isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5003 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5003] == bool(mem[_5003])
                                            if mem[_5003]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[96]:
                                                if uint8(var97003) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[96]:
                                                    if uint8(idx) < mem[96]:
                                                        _6759 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                                                        _6760 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                                        s = var101004
                                                        while uint8(s) < _6760:
                                                            _6771 = mem[(32 * uint8(s)) + _6759 + 32]
                                                            mem[mem[64] + 4] = mem[(32 * uint8(s)) + _6759 + 32]
                                                            require ext_code.size(t)
                                                            staticcall t.getApproved(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _6771
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6782 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_6782] == mem[_6782 + 12 len 20]
                                                            if mem[_6782 + 12 len 20] != this.address:
                                                                revert with 0, 'createTrade: erc721 approval unset'
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[96]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[96]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[96]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[96]:
                                    revert with 0, 50
                                _4797 = mem[mem[(32 * uint8(idx)) + 128]]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_4797))
                                staticcall address(_4797).isOperatorFor(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args this.address, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4888 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4888] == bool(mem[_4888])
                                if not mem[_4888]:
                                    if uint8(idx) >= mem[96]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                        revert with 0, 50
                                    _5185 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                                    if uint8(idx) >= mem[96]:
                                        revert with 0, 50
                                    _5235 = mem[mem[(32 * uint8(idx)) + 128]]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    require ext_code.size(address(_5235))
                                    staticcall address(_5235).allowance(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args msg.sender, this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5302 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5302] < _5185:
                                        revert with 0, 'createTrade: erc777 operator and/or appproval unset'
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        stor8[stor6].field_512 = msg.sender or Mask(96, 160, stor8[stor6].field_512)
                        address(stor8[stor6].field_768) = address(cd[4])
                        stor8[stor6].field_1280 = cd[36]
                        mem[0] = msg.sender
                        mem[32] = 9
                        if userHistory[msg.sender].field_256 == -1:
                            revert with 0, 17
                        userHistory[msg.sender].field_256++
                        idx = 0
                        while uint8(idx) < mem[96]:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            stor8[stor6].field_0++
                            mem[0] = sha3(sub_e275c997, 8)
                            address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                            uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                            _5570 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                            if not _5570:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _6156 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _6156:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6156) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _5570) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6483 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _6483:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6483) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _6030 = mem[_1142]
                        idx = 0
                        while uint8(idx) < _6030:
                            if uint8(idx) >= mem[_1142]:
                                revert with 0, 50
                            stor8[stor6].field_256++
                            mem[0] = sha3(sub_e275c997, 8) + 1
                            address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 12 len 20]
                            uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 62 len 2]
                            _6101 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                            if not _6101:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _6481 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6481:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6481) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + (32 * _6101) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6667 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6667:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6667) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                else:
                    _3490 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3490] = return_data.size
                    mem[_3490 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if not mem[mem[128] + 12 len 20]:
                        stor8[stor6].field_512 = msg.sender or Mask(96, 160, stor8[stor6].field_512)
                        address(stor8[stor6].field_768) = address(cd[4])
                        stor8[stor6].field_1280 = cd[36]
                        mem[0] = msg.sender
                        mem[32] = 9
                        if userHistory[msg.sender].field_256 == -1:
                            revert with 0, 17
                        userHistory[msg.sender].field_256++
                        idx = 0
                        while uint8(idx) < mem[96]:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            stor8[stor6].field_0++
                            mem[0] = sha3(sub_e275c997, 8)
                            address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                            uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                            _4631 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                            if not _4631:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _5632 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _5632:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _5632) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _4631) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6163 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _6163:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6163) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _5475 = mem[_1142]
                        idx = 0
                        while uint8(idx) < _5475:
                            if uint8(idx) >= mem[_1142]:
                                revert with 0, 50
                            stor8[stor6].field_256++
                            mem[0] = sha3(sub_e275c997, 8) + 1
                            address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 12 len 20]
                            uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 62 len 2]
                            _5577 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                            if not _5577:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _6161 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6161:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6161) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + (32 * _5577) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6487 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6487:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6487) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                    else:
                        _4543 = mem[96]
                        idx = 0
                        while uint8(idx) < _4543:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]:
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                    revert with 0, 50
                                _4756 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                                if uint8(idx) >= mem[96]:
                                    revert with 0, 50
                                _4813 = mem[mem[(32 * uint8(idx)) + 128]]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                require ext_code.size(address(_4813))
                                staticcall address(_4813).allowance(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args msg.sender, this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4905 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4905] < _4756:
                                    revert with 0, 'createTrade: erc20 approval unset'
                            else:
                                if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 777:
                                    if uint8(idx) < mem[96]:
                                        if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 721:
                                            if uint8(idx) >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 1155:
                                                revert with 0, 'createTrade: unsupported erc type'
                                            if uint8(idx) >= mem[96]:
                                                revert with 0, 50
                                            _5018 = mem[mem[(32 * uint8(idx)) + 128]]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            require ext_code.size(address(_5018))
                                            staticcall address(_5018).isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5085 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5085] == bool(mem[_5085])
                                            if not mem[_5085]:
                                                revert with 0, 'createTrade: erc1155 approval unset'
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[96]:
                                            _4901 = mem[mem[(32 * uint8(idx)) + 128]]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            require ext_code.size(address(_4901))
                                            staticcall address(_4901).isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5021 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5021] == bool(mem[_5021])
                                            if mem[_5021]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[96]:
                                                if uint8(var97003) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[96]:
                                                    if uint8(idx) < mem[96]:
                                                        _6762 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                                                        _6763 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                                        s = var101004
                                                        while uint8(s) < _6763:
                                                            _6774 = mem[(32 * uint8(s)) + _6762 + 32]
                                                            mem[mem[64] + 4] = mem[(32 * uint8(s)) + _6762 + 32]
                                                            require ext_code.size(t)
                                                            staticcall t.getApproved(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _6774
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6783 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_6783] == mem[_6783 + 12 len 20]
                                                            if mem[_6783 + 12 len 20] != this.address:
                                                                revert with 0, 'createTrade: erc721 approval unset'
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[96]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[96]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[96]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[96]:
                                    revert with 0, 50
                                _4809 = mem[mem[(32 * uint8(idx)) + 128]]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_4809))
                                staticcall address(_4809).isOperatorFor(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args this.address, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4904 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4904] == bool(mem[_4904])
                                if not mem[_4904]:
                                    if uint8(idx) >= mem[96]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                        revert with 0, 50
                                    _5192 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                                    if uint8(idx) >= mem[96]:
                                        revert with 0, 50
                                    _5247 = mem[mem[(32 * uint8(idx)) + 128]]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    require ext_code.size(address(_5247))
                                    staticcall address(_5247).allowance(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args msg.sender, this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5307 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5307] < _5192:
                                        revert with 0, 'createTrade: erc777 operator and/or appproval unset'
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        stor8[stor6].field_512 = msg.sender or Mask(96, 160, stor8[stor6].field_512)
                        address(stor8[stor6].field_768) = address(cd[4])
                        stor8[stor6].field_1280 = cd[36]
                        mem[0] = msg.sender
                        mem[32] = 9
                        if userHistory[msg.sender].field_256 == -1:
                            revert with 0, 17
                        userHistory[msg.sender].field_256++
                        idx = 0
                        while uint8(idx) < mem[96]:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            stor8[stor6].field_0++
                            mem[0] = sha3(sub_e275c997, 8)
                            address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                            uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                            _5584 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                            mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                            if not _5584:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _6166 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _6166:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6166) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                                t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _5584) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6491 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                                if not _6491:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _6491) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _6034 = mem[_1142]
                        idx = 0
                        while uint8(idx) < _6034:
                            if uint8(idx) >= mem[_1142]:
                                revert with 0, 50
                            stor8[stor6].field_256++
                            mem[0] = sha3(sub_e275c997, 8) + 1
                            address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 12 len 20]
                            uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 62 len 2]
                            _6110 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64]]
                            mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                            if not _6110:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _6489 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6489:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6489) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            else:
                                s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                                t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + 32
                                while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 64] + (32 * _6110) + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                t = s
                                while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                                _6670 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96]]
                                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                                if not _6670:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                                    t = mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + 32
                                    while mem[mem[(32 * uint8(idx)) + _1142 + 32] + 96] + (32 * _6670) + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    t = s
                                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
    if sub_e275c997 == -1:
        revert with 0, 17
    sub_e275c997++
    if sub_e275c997 < 1:
        revert with 0, 17
    if address(cd[4]):
        userHistory[address(cd[4])][4][userHistory[address(cd[4])].field_512].field_0 = sub_e275c997 - 1
        if userHistory[address(cd[4])].field_512 == -1:
            revert with 0, 17
        userHistory[address(cd[4])].field_512++
        if sub_e275c997 < 1:
            revert with 0, 17
        userHistory[msg.sender][3][userHistory[msg.sender].field_256].field_0 = sub_e275c997 - 1
        if userHistory[address(cd[4])].field_256 == -1:
            revert with 0, 17
        userHistory[address(cd[4])].field_256++
    emit NewTrade(sub_e275c997 - 1, msg.sender, address(cd[4]));
    return (sub_e275c997 - 1)
}



}
