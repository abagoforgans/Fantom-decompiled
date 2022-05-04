contract main {




// =====================  Runtime code  =====================


#
#  - create(uint16 arg1, uint256 arg2, uint8 arg3, address arg4)
#  - sub_db658749(?)
#  - sub_f1a348fe(?)
#
address owner;
mapping of uint8 stor1;
uint16 stor3;
mapping of struct tokens;
mapping of struct sub_b5caa2c0;
mapping of struct orders;
array of struct stor7;
mapping of uint256 stor8;
mapping of uint8 stor9;

function isCompleted(uint256 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(stor9[arg1][arg2])
}

function sub_3ffd402c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function orders(uint256 arg1) {
    require calldata.size - 4 >= 32
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_256,
           orders[arg1].field_512,
           orders[arg1].field_768,
           orders[arg1].field_1024,
           orders[arg1].field_1032
}

function sub_b5caa2c0(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    return sub_b5caa2c0[arg1][arg2].field_0, sub_b5caa2c0[arg1][arg2].field_256
}

function tokens(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokens[arg1].field_0, 
           tokens[arg1].field_0,
           tokens[arg1].field_256,
           tokens[arg1].field_512,
           tokens[arg1].field_768,
           tokens[arg1].field_1024,
           tokens[arg1].field_1280,
           tokens[arg1].field_1536
}

function completed(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
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

function addTrusted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeTrusted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function setBonus(uint16 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokens[arg1 << 240].field_1536 = arg2
}

function setFeeTarget(uint16 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokens[arg1 << 240].field_512 = arg2
}

function setFee(uint16 arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 10000:
        revert with 0, 'invalid fee'
    tokens[arg1 << 240].field_160 = arg2
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

function close(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not trusted'
    if stor8[arg1]:
        if stor8[arg1] < 1:
            revert with 0, 17
        if stor7.length < 1:
            revert with 0, 17
        if stor7.length - 1 >= stor7.length:
            revert with 0, 50
        if stor8[arg1] - 1 >= stor7.length:
            revert with 0, 50
        stor7[stor8[arg1]].field_0 = stor7[stor7.length].field_0
        if 1 > !(stor8[arg1] - 1):
            revert with 0, 17
        stor8[stor7[stor7.length].field_0] = stor8[arg1]
        if not stor7.length:
            revert with 0, 49
        stor7[stor7.length].field_0 = 0
        stor7.length--
        stor8[arg1] = 0
}

function listTokensNames() {
    if stor3 > test266151307():
        revert with 0, 65
    mem[96] = stor3
    mem[64] = (32 * stor3) + 128
    if not stor3:
        idx = 0
        while uint16(idx) < stor3:
            mem[0] = uint16(idx)
            mem[32] = 4
            if tokens[idx << 240].field_0:
                mem[0] = uint16(idx)
                mem[32] = 4
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(tokens[idx << 240].field_0)
                staticcall tokens[idx << 240].field_0.symbol() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _42 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _51 = mem[_42]
                require mem[_42] <= test266151307()
                require _42 + mem[_42] + 31 < _42 + return_data.size
                _54 = mem[_42 + mem[_42]]
                if mem[_42 + mem[_42]] > test266151307():
                    revert with 0, 65
                if ceil32(mem[_42 + mem[_42]]) + 32 < 0 or _42 + ceil32(return_data.size) + ceil32(mem[_42 + mem[_42]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _42 + ceil32(return_data.size) + ceil32(mem[_42 + mem[_42]]) + 32
                mem[_42 + ceil32(return_data.size)] = _54
                require return_data.size >= _54 + _51 + 32
                s = 0
                while s < _54:
                    mem[s + _42 + ceil32(return_data.size) + 32] = mem[s + _42 + _51 + 32]
                    s = s + 32
                    continue 
                if ceil32(_54) > _54:
                    mem[_54 + _42 + ceil32(return_data.size) + 32] = 0
                if uint16(idx) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint16(idx)) + 128] = _42 + ceil32(return_data.size)
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            continue 
        _37 = mem[64]
        mem[mem[64]] = 32
        _41 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _41:
            mem[t] = u + -_37 - 64
            _70 = mem[s]
            _74 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _74:
                mem[v + u + 32] = mem[v + _70 + 32]
                v = v + 32
                continue 
            if ceil32(_74) > _74:
                mem[_74 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_74) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = stor3
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while uint16(idx) < stor3:
            mem[0] = uint16(idx)
            mem[32] = 4
            if tokens[idx << 240].field_0:
                mem[0] = uint16(idx)
                mem[32] = 4
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(tokens[idx << 240].field_0)
                staticcall tokens[idx << 240].field_0.symbol() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _82 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _87 = mem[_82]
                require mem[_82] <= test266151307()
                require _82 + mem[_82] + 31 < _82 + return_data.size
                _88 = mem[_82 + mem[_82]]
                if mem[_82 + mem[_82]] > test266151307():
                    revert with 0, 65
                if ceil32(mem[_82 + mem[_82]]) + 32 < 0 or _82 + ceil32(return_data.size) + ceil32(mem[_82 + mem[_82]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _82 + ceil32(return_data.size) + ceil32(mem[_82 + mem[_82]]) + 32
                mem[_82 + ceil32(return_data.size)] = _88
                require return_data.size >= _88 + _87 + 32
                s = 0
                while s < _88:
                    mem[s + _82 + ceil32(return_data.size) + 32] = mem[s + _82 + _87 + 32]
                    s = s + 32
                    continue 
                if ceil32(_88) > _88:
                    mem[_88 + _82 + ceil32(return_data.size) + 32] = 0
                if uint16(idx) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint16(idx)) + 128] = _82 + ceil32(return_data.size)
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            continue 
        _75 = mem[64]
        mem[mem[64]] = 32
        _79 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _79:
            mem[t] = u + -_75 - 64
            _95 = mem[s]
            _98 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _98:
                mem[v + u + 32] = mem[v + _95 + 32]
                v = v + 32
                continue 
            if ceil32(_98) > _98:
                mem[_98 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_98) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function listOrders() {
    if stor7.length > test266151307():
        revert with 0, 65
    mem[96] = stor7.length
    mem[64] = (32 * stor7.length) + 128
    if not stor7.length:
        if var38002 >= stor7.length:
            mem[(32 * stor7.length) + 128] = 32
            mem[(32 * stor7.length) + 160] = stor7.length
            idx = 0
            s = 128
            t = (32 * stor7.length) + 192
            while idx < mem[96]:
                _226 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_226 + 62 len 2]
                mem[t + 64] = mem[_226 + 76 len 20]
                mem[t + 96] = mem[_226 + 108 len 20]
                mem[t + 128] = mem[_226 + 128]
                mem[t + 160] = mem[_226 + 191 len 1]
                mem[t + 192] = mem[_226 + 223 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len (257 * stor7.length) + -mem[64] + 192
        if var44001 >= stor7.length:
            revert with 0, 'EnumerableSet: index out of bounds'
        if var46002 < stor7.length:
            mem[0] = var50001
            mem[32] = 6
            mem[64] = (32 * stor7.length) + 352
            mem[(32 * stor7.length) + 128] = orders[var50001].field_0
            mem[(32 * stor7.length) + 160] = orders[var50001].field_256
            mem[(32 * stor7.length) + 192] = orders[var50001].field_272
            mem[(32 * stor7.length) + 224] = orders[var50001].field_512
            mem[(32 * stor7.length) + 256] = orders[var50001].field_768
            mem[(32 * stor7.length) + 288] = orders[var50001].field_1024
            mem[(32 * stor7.length) + 320] = orders[var50001].field_1032
            s = var50001
            idx = var50008
            while idx < stor7.length:
                mem[(32 * idx) + 128] = (32 * stor7.length) + 128
                if idx == -1:
                    revert with 0, 17
                if idx + 1 >= stor7.length:
                    _455 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor7.length
                    idx = 0
                    t = 128
                    u = mem[64] + 64
                    while idx < stor7.length:
                        _479 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_479 + 62 len 2]
                        mem[u + 64] = mem[_479 + 76 len 20]
                        mem[u + 96] = mem[_479 + 108 len 20]
                        mem[u + 128] = mem[_479 + 128]
                        mem[u + 160] = mem[_479 + 191 len 1]
                        mem[u + 192] = mem[_479 + 223 len 1]
                        mem[0] = s
                        mem[32] = 6
                        mem[64] = mem[64] + 224
                        mem[(32 * stor7.length) + 128] = orders[s].field_0
                        mem[(32 * stor7.length) + 160] = orders[var50001].field_256
                        mem[(32 * stor7.length) + 192] = orders[var50001].field_272
                        mem[(32 * stor7.length) + 224] = orders[var50001].field_512
                        mem[(32 * stor7.length) + 256] = orders[var50001].field_768
                        mem[(32 * stor7.length) + 288] = orders[var50001].field_1024
                        mem[(32 * stor7.length) + 320] = orders[var50001].field_1032
                        idx = idx + 1
                        t = t + 32
                        u = u + 224
                        continue 
                    return memory
                      from mem[64]
                       len _455 + (224 * stor7.length) + -mem[64] + 64
                mem[0] = stor7[idx].field_512
                mem[32] = 6
                mem[64] = mem[64] + 224
                mem[(32 * stor7.length) + 128] = orders[stor7[idx].field_512].field_0
                mem[(32 * stor7.length) + 160] = orders[var50001].field_256
                mem[(32 * stor7.length) + 192] = orders[var50001].field_272
                mem[(32 * stor7.length) + 224] = orders[var50001].field_512
                mem[(32 * stor7.length) + 256] = orders[var50001].field_768
                mem[(32 * stor7.length) + 288] = orders[var50001].field_1024
                mem[(32 * stor7.length) + 320] = orders[var50001].field_1032
                s = stor7[idx].field_256
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * stor7.length) + 352
        mem[(32 * stor7.length) + 128] = 0
        mem[(32 * stor7.length) + 160] = 0
        mem[(32 * stor7.length) + 192] = 0
        mem[(32 * stor7.length) + 224] = 0
        mem[(32 * stor7.length) + 256] = 0
        mem[(32 * stor7.length) + 288] = 0
        mem[(32 * stor7.length) + 320] = 0
        mem[var14001] = (32 * stor7.length) + 128
        s = var14001
        idx = var14002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[(32 * stor7.length) + 128] = 0
            mem[(32 * stor7.length) + 160] = 0
            mem[(32 * stor7.length) + 192] = 0
            mem[(32 * stor7.length) + 224] = 0
            mem[(32 * stor7.length) + 256] = 0
            mem[(32 * stor7.length) + 288] = 0
            mem[(32 * stor7.length) + 320] = 0
            mem[s + 32] = (32 * stor7.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if var45002 >= stor7.length:
            _268 = mem[64]
            mem[mem[64]] = 32
            _270 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _270:
                _311 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_311 + 62 len 2]
                mem[t + 64] = mem[_311 + 76 len 20]
                mem[t + 96] = mem[_311 + 108 len 20]
                mem[t + 128] = mem[_311 + 128]
                mem[t + 160] = mem[_311 + 191 len 1]
                mem[t + 192] = mem[_311 + 223 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _268 + (224 * _270) + -mem[64] + 64
        if var51001 >= stor7.length:
            revert with 0, 'EnumerableSet: index out of bounds'
        if var53002 < stor7.length:
            mem[0] = var57001
            mem[32] = 6
            _504 = mem[64]
            mem[64] = mem[64] + 224
            mem[_504] = orders[var57001].field_0
            mem[_504 + 32] = orders[var57001].field_256
            mem[_504 + 64] = orders[var57001].field_272
            mem[_504 + 96] = orders[var57001].field_512
            mem[_504 + 128] = orders[var57001].field_768
            mem[_504 + 160] = orders[var57001].field_1024
            mem[_504 + 192] = orders[var57001].field_1032
            _505 = mem[96]
            s = var57001
            idx = var57008
            while idx < _505:
                mem[(32 * idx) + 128] = _504
                if idx == -1:
                    revert with 0, 17
                if idx + 1 >= stor7.length:
                    _506 = mem[64]
                    mem[mem[64]] = 32
                    _507 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 64
                    while idx < _507:
                        _518 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_518 + 62 len 2]
                        mem[u + 64] = mem[_518 + 76 len 20]
                        mem[u + 96] = mem[_518 + 108 len 20]
                        mem[u + 128] = mem[_518 + 128]
                        mem[u + 160] = mem[_518 + 191 len 1]
                        mem[u + 192] = mem[_518 + 223 len 1]
                        mem[0] = s
                        mem[32] = 6
                        _504 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_504] = orders[s].field_0
                        mem[_504 + 32] = orders[var57001].field_256
                        mem[_504 + 64] = orders[var57001].field_272
                        mem[_504 + 96] = orders[var57001].field_512
                        mem[_504 + 128] = orders[var57001].field_768
                        mem[_504 + 160] = orders[var57001].field_1024
                        mem[_504 + 192] = orders[var57001].field_1032
                        idx = idx + 1
                        t = t + 32
                        u = u + 224
                        continue 
                    return memory
                      from mem[64]
                       len _506 + (224 * _507) + -mem[64] + 64
                mem[0] = stor7[idx].field_512
                mem[32] = 6
                _504 = mem[64]
                mem[64] = mem[64] + 224
                mem[_504] = orders[stor7[idx].field_512].field_0
                mem[_504 + 32] = orders[var57001].field_256
                mem[_504 + 64] = orders[var57001].field_272
                mem[_504 + 96] = orders[var57001].field_512
                mem[_504 + 128] = orders[var57001].field_768
                mem[_504 + 160] = orders[var57001].field_1024
                mem[_504 + 192] = orders[var57001].field_1032
                s = stor7[idx].field_256
                idx = idx + 1
                continue 
    revert with 0, 50
}

function setFeeBase(uint16 arg1, uint256 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        require ext_code.size(tokens[arg1 << 240].field_0)
        staticcall tokens[arg1 << 240].field_0.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg2 and 1 > -1 / arg2:
                revert with 0, 17
            tokens[arg1 << 240].field_256 = arg2
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 0, 17
                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                    revert with 0, 17
                tokens[arg1 << 240].field_256 = arg2 * 10^ext_call.return_data[31 len 1]
            else:
                if var52005 > 1:
                    s = var52001
                    t = var52002
                    u = var52005
                    while s <= -1 / s:
                        if not bool(u):
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = t
                                u = uint255(u) * 0.5
                                continue 
                            if t > -1 / s * s:
                                revert with 0, 17
                            if arg2 and s * s * t > -1 / arg2:
                                revert with 0, 17
                            tokens[arg1 << 240].field_256 = arg2 * s * s * t
                        else:
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = s * t
                                u = uint255(u) * 0.5
                                continue 
                            if s * t > -1 / s * s:
                                revert with 0, 17
                            if arg2 and s * s * s * t > -1 / arg2:
                                revert with 0, 17
                            tokens[arg1 << 240].field_256 = arg2 * s * s * s * t
                    revert with 0, 17
                if var52002 > -1 / var52001:
                    revert with 0, 17
                if arg2 and var52001 * var52002 > -1 / arg2:
                    revert with 0, 17
                tokens[arg1 << 240].field_256 = arg2 * var52001 * var52002
    else:
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if 10^arg3 > -1:
                revert with 0, 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if not 10^arg3:
                    revert with 0, 18
                tokens[arg1 << 240].field_256 = arg2 / 10^arg3
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 0, 17
                    if not 10^arg3:
                        revert with 0, 18
                    tokens[arg1 << 240].field_256 = arg2 * 10^ext_call.return_data[31 len 1] / 10^arg3
                else:
                    if var58005 > 1:
                        s = var58001
                        t = var58002
                        u = var58005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not 10^arg3:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_256 = arg2 * s * s * t / 10^arg3
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not 10^arg3:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_256 = arg2 * s * s * s * t / 10^arg3
                        revert with 0, 17
                    if var58002 > -1 / var58001:
                        revert with 0, 17
                    if arg2 and var58001 * var58002 > -1 / arg2:
                        revert with 0, 17
                    if not 10^arg3:
                        revert with 0, 18
                    tokens[arg1 << 240].field_256 = arg2 * var58001 * var58002 / 10^arg3
        else:
            if var38005 > 1:
                s = var38001
                t = var38002
                u = var38005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        require ext_code.size(tokens[arg1 << 240].field_0)
                        staticcall tokens[arg1 << 240].field_0.decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg2 and 1 > -1 / arg2:
                                revert with 0, 17
                            if not s * s * t:
                                revert with 0, 18
                            tokens[arg1 << 240].field_256 = arg2 / s * s * t
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_256 = arg2 * 10^ext_call.return_data[31 len 1] / s * s * t
                            else:
                                if var68005 > 1:
                                    u = var68001
                                    v = var68002
                                    w = var68005
                                    while u <= -1 / u:
                                        if not bool(w):
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_256 = arg2 * u * u * v / s * s * t
                                        else:
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = u * v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if u * v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_256 = arg2 * u * u * u * v / s * s * t
                                    revert with 0, 17
                                if var68002 > -1 / var68001:
                                    revert with 0, 17
                                if arg2 and var68001 * var68002 > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_256 = arg2 * var68001 * var68002 / s * s * t
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        require ext_code.size(tokens[arg1 << 240].field_0)
                        staticcall tokens[arg1 << 240].field_0.decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg2 and 1 > -1 / arg2:
                                revert with 0, 17
                            if not s * s * s * t:
                                revert with 0, 18
                            tokens[arg1 << 240].field_256 = arg2 / s * s * s * t
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_256 = arg2 * 10^ext_call.return_data[31 len 1] / s * s * s * t
                            else:
                                if var69005 > 1:
                                    u = var69001
                                    v = var69002
                                    w = var69005
                                    while u <= -1 / u:
                                        if not bool(w):
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_256 = arg2 * u * u * v / s * s * s * t
                                        else:
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = u * v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if u * v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_256 = arg2 * u * u * u * v / s * s * s * t
                                    revert with 0, 17
                                if var69002 > -1 / var69001:
                                    revert with 0, 17
                                if arg2 and var69001 * var69002 > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_256 = arg2 * var69001 * var69002 / s * s * s * t
                revert with 0, 17
            if var38002 > -1 / var38001:
                revert with 0, 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if not var38001 * var38002:
                    revert with 0, 18
                tokens[arg1 << 240].field_256 = arg2 / var38001 * var38002
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 0, 17
                    if not var38001 * var38002:
                        revert with 0, 18
                    tokens[arg1 << 240].field_256 = arg2 * 10^ext_call.return_data[31 len 1] / var38001 * var38002
                else:
                    if var63005 > 1:
                        s = var63001
                        t = var63002
                        u = var63005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not var38001 * var38002:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_256 = arg2 * s * s * t / var38001 * var38002
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not var38001 * var38002:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_256 = arg2 * s * s * s * t / var38001 * var38002
                        revert with 0, 17
                    if var63002 > -1 / var63001:
                        revert with 0, 17
                    if arg2 and var63001 * var63002 > -1 / arg2:
                        revert with 0, 17
                    if not var38001 * var38002:
                        revert with 0, 18
                    tokens[arg1 << 240].field_256 = arg2 * var63001 * var63002 / var38001 * var38002
}

function setMinAmount(uint16 arg1, uint256 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        require ext_code.size(tokens[arg1 << 240].field_0)
        staticcall tokens[arg1 << 240].field_0.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg2 and 1 > -1 / arg2:
                revert with 0, 17
            tokens[arg1 << 240].field_768 = arg2
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 0, 17
                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                    revert with 0, 17
                tokens[arg1 << 240].field_768 = arg2 * 10^ext_call.return_data[31 len 1]
            else:
                if var52005 > 1:
                    s = var52001
                    t = var52002
                    u = var52005
                    while s <= -1 / s:
                        if not bool(u):
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = t
                                u = uint255(u) * 0.5
                                continue 
                            if t > -1 / s * s:
                                revert with 0, 17
                            if arg2 and s * s * t > -1 / arg2:
                                revert with 0, 17
                            tokens[arg1 << 240].field_768 = arg2 * s * s * t
                        else:
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = s * t
                                u = uint255(u) * 0.5
                                continue 
                            if s * t > -1 / s * s:
                                revert with 0, 17
                            if arg2 and s * s * s * t > -1 / arg2:
                                revert with 0, 17
                            tokens[arg1 << 240].field_768 = arg2 * s * s * s * t
                    revert with 0, 17
                if var52002 > -1 / var52001:
                    revert with 0, 17
                if arg2 and var52001 * var52002 > -1 / arg2:
                    revert with 0, 17
                tokens[arg1 << 240].field_768 = arg2 * var52001 * var52002
    else:
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if 10^arg3 > -1:
                revert with 0, 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if not 10^arg3:
                    revert with 0, 18
                tokens[arg1 << 240].field_768 = arg2 / 10^arg3
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 0, 17
                    if not 10^arg3:
                        revert with 0, 18
                    tokens[arg1 << 240].field_768 = arg2 * 10^ext_call.return_data[31 len 1] / 10^arg3
                else:
                    if var58005 > 1:
                        s = var58001
                        t = var58002
                        u = var58005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not 10^arg3:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_768 = arg2 * s * s * t / 10^arg3
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not 10^arg3:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_768 = arg2 * s * s * s * t / 10^arg3
                        revert with 0, 17
                    if var58002 > -1 / var58001:
                        revert with 0, 17
                    if arg2 and var58001 * var58002 > -1 / arg2:
                        revert with 0, 17
                    if not 10^arg3:
                        revert with 0, 18
                    tokens[arg1 << 240].field_768 = arg2 * var58001 * var58002 / 10^arg3
        else:
            if var38005 > 1:
                s = var38001
                t = var38002
                u = var38005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        require ext_code.size(tokens[arg1 << 240].field_0)
                        staticcall tokens[arg1 << 240].field_0.decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg2 and 1 > -1 / arg2:
                                revert with 0, 17
                            if not s * s * t:
                                revert with 0, 18
                            tokens[arg1 << 240].field_768 = arg2 / s * s * t
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_768 = arg2 * 10^ext_call.return_data[31 len 1] / s * s * t
                            else:
                                if var68005 > 1:
                                    u = var68001
                                    v = var68002
                                    w = var68005
                                    while u <= -1 / u:
                                        if not bool(w):
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_768 = arg2 * u * u * v / s * s * t
                                        else:
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = u * v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if u * v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_768 = arg2 * u * u * u * v / s * s * t
                                    revert with 0, 17
                                if var68002 > -1 / var68001:
                                    revert with 0, 17
                                if arg2 and var68001 * var68002 > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_768 = arg2 * var68001 * var68002 / s * s * t
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        require ext_code.size(tokens[arg1 << 240].field_0)
                        staticcall tokens[arg1 << 240].field_0.decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg2 and 1 > -1 / arg2:
                                revert with 0, 17
                            if not s * s * s * t:
                                revert with 0, 18
                            tokens[arg1 << 240].field_768 = arg2 / s * s * s * t
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_768 = arg2 * 10^ext_call.return_data[31 len 1] / s * s * s * t
                            else:
                                if var69005 > 1:
                                    u = var69001
                                    v = var69002
                                    w = var69005
                                    while u <= -1 / u:
                                        if not bool(w):
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_768 = arg2 * u * u * v / s * s * s * t
                                        else:
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = u * v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if u * v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_768 = arg2 * u * u * u * v / s * s * s * t
                                    revert with 0, 17
                                if var69002 > -1 / var69001:
                                    revert with 0, 17
                                if arg2 and var69001 * var69002 > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_768 = arg2 * var69001 * var69002 / s * s * s * t
                revert with 0, 17
            if var38002 > -1 / var38001:
                revert with 0, 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if not var38001 * var38002:
                    revert with 0, 18
                tokens[arg1 << 240].field_768 = arg2 / var38001 * var38002
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 0, 17
                    if not var38001 * var38002:
                        revert with 0, 18
                    tokens[arg1 << 240].field_768 = arg2 * 10^ext_call.return_data[31 len 1] / var38001 * var38002
                else:
                    if var63005 > 1:
                        s = var63001
                        t = var63002
                        u = var63005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not var38001 * var38002:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_768 = arg2 * s * s * t / var38001 * var38002
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not var38001 * var38002:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_768 = arg2 * s * s * s * t / var38001 * var38002
                        revert with 0, 17
                    if var63002 > -1 / var63001:
                        revert with 0, 17
                    if arg2 and var63001 * var63002 > -1 / arg2:
                        revert with 0, 17
                    if not var38001 * var38002:
                        revert with 0, 18
                    tokens[arg1 << 240].field_768 = arg2 * var63001 * var63002 / var38001 * var38002
}

function setMaxAmount(uint16 arg1, uint256 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        require ext_code.size(tokens[arg1 << 240].field_0)
        staticcall tokens[arg1 << 240].field_0.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg2 and 1 > -1 / arg2:
                revert with 0, 17
            tokens[arg1 << 240].field_1024 = arg2
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 0, 17
                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                    revert with 0, 17
                tokens[arg1 << 240].field_1024 = arg2 * 10^ext_call.return_data[31 len 1]
            else:
                if var52005 > 1:
                    s = var52001
                    t = var52002
                    u = var52005
                    while s <= -1 / s:
                        if not bool(u):
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = t
                                u = uint255(u) * 0.5
                                continue 
                            if t > -1 / s * s:
                                revert with 0, 17
                            if arg2 and s * s * t > -1 / arg2:
                                revert with 0, 17
                            tokens[arg1 << 240].field_1024 = arg2 * s * s * t
                        else:
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = s * t
                                u = uint255(u) * 0.5
                                continue 
                            if s * t > -1 / s * s:
                                revert with 0, 17
                            if arg2 and s * s * s * t > -1 / arg2:
                                revert with 0, 17
                            tokens[arg1 << 240].field_1024 = arg2 * s * s * s * t
                    revert with 0, 17
                if var52002 > -1 / var52001:
                    revert with 0, 17
                if arg2 and var52001 * var52002 > -1 / arg2:
                    revert with 0, 17
                tokens[arg1 << 240].field_1024 = arg2 * var52001 * var52002
    else:
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if 10^arg3 > -1:
                revert with 0, 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if not 10^arg3:
                    revert with 0, 18
                tokens[arg1 << 240].field_1024 = arg2 / 10^arg3
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 0, 17
                    if not 10^arg3:
                        revert with 0, 18
                    tokens[arg1 << 240].field_1024 = arg2 * 10^ext_call.return_data[31 len 1] / 10^arg3
                else:
                    if var58005 > 1:
                        s = var58001
                        t = var58002
                        u = var58005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not 10^arg3:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1024 = arg2 * s * s * t / 10^arg3
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not 10^arg3:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1024 = arg2 * s * s * s * t / 10^arg3
                        revert with 0, 17
                    if var58002 > -1 / var58001:
                        revert with 0, 17
                    if arg2 and var58001 * var58002 > -1 / arg2:
                        revert with 0, 17
                    if not 10^arg3:
                        revert with 0, 18
                    tokens[arg1 << 240].field_1024 = arg2 * var58001 * var58002 / 10^arg3
        else:
            if var38005 > 1:
                s = var38001
                t = var38002
                u = var38005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        require ext_code.size(tokens[arg1 << 240].field_0)
                        staticcall tokens[arg1 << 240].field_0.decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg2 and 1 > -1 / arg2:
                                revert with 0, 17
                            if not s * s * t:
                                revert with 0, 18
                            tokens[arg1 << 240].field_1024 = arg2 / s * s * t
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1024 = arg2 * 10^ext_call.return_data[31 len 1] / s * s * t
                            else:
                                if var68005 > 1:
                                    u = var68001
                                    v = var68002
                                    w = var68005
                                    while u <= -1 / u:
                                        if not bool(w):
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_1024 = arg2 * u * u * v / s * s * t
                                        else:
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = u * v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if u * v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_1024 = arg2 * u * u * u * v / s * s * t
                                    revert with 0, 17
                                if var68002 > -1 / var68001:
                                    revert with 0, 17
                                if arg2 and var68001 * var68002 > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1024 = arg2 * var68001 * var68002 / s * s * t
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        require ext_code.size(tokens[arg1 << 240].field_0)
                        staticcall tokens[arg1 << 240].field_0.decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg2 and 1 > -1 / arg2:
                                revert with 0, 17
                            if not s * s * s * t:
                                revert with 0, 18
                            tokens[arg1 << 240].field_1024 = arg2 / s * s * s * t
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1024 = arg2 * 10^ext_call.return_data[31 len 1] / s * s * s * t
                            else:
                                if var69005 > 1:
                                    u = var69001
                                    v = var69002
                                    w = var69005
                                    while u <= -1 / u:
                                        if not bool(w):
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_1024 = arg2 * u * u * v / s * s * s * t
                                        else:
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = u * v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if u * v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_1024 = arg2 * u * u * u * v / s * s * s * t
                                    revert with 0, 17
                                if var69002 > -1 / var69001:
                                    revert with 0, 17
                                if arg2 and var69001 * var69002 > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1024 = arg2 * var69001 * var69002 / s * s * s * t
                revert with 0, 17
            if var38002 > -1 / var38001:
                revert with 0, 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if not var38001 * var38002:
                    revert with 0, 18
                tokens[arg1 << 240].field_1024 = arg2 / var38001 * var38002
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 0, 17
                    if not var38001 * var38002:
                        revert with 0, 18
                    tokens[arg1 << 240].field_1024 = arg2 * 10^ext_call.return_data[31 len 1] / var38001 * var38002
                else:
                    if var63005 > 1:
                        s = var63001
                        t = var63002
                        u = var63005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not var38001 * var38002:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1024 = arg2 * s * s * t / var38001 * var38002
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not var38001 * var38002:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1024 = arg2 * s * s * s * t / var38001 * var38002
                        revert with 0, 17
                    if var63002 > -1 / var63001:
                        revert with 0, 17
                    if arg2 and var63001 * var63002 > -1 / arg2:
                        revert with 0, 17
                    if not var38001 * var38002:
                        revert with 0, 18
                    tokens[arg1 << 240].field_1024 = arg2 * var63001 * var63002 / var38001 * var38002
}

function setDailyLimit(uint16 arg1, uint256 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        require ext_code.size(tokens[arg1 << 240].field_0)
        staticcall tokens[arg1 << 240].field_0.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg2 and 1 > -1 / arg2:
                revert with 0, 17
            tokens[arg1 << 240].field_1280 = arg2
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 0, 17
                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                    revert with 0, 17
                tokens[arg1 << 240].field_1280 = arg2 * 10^ext_call.return_data[31 len 1]
            else:
                if var52005 > 1:
                    s = var52001
                    t = var52002
                    u = var52005
                    while s <= -1 / s:
                        if not bool(u):
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = t
                                u = uint255(u) * 0.5
                                continue 
                            if t > -1 / s * s:
                                revert with 0, 17
                            if arg2 and s * s * t > -1 / arg2:
                                revert with 0, 17
                            tokens[arg1 << 240].field_1280 = arg2 * s * s * t
                        else:
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = s * t
                                u = uint255(u) * 0.5
                                continue 
                            if s * t > -1 / s * s:
                                revert with 0, 17
                            if arg2 and s * s * s * t > -1 / arg2:
                                revert with 0, 17
                            tokens[arg1 << 240].field_1280 = arg2 * s * s * s * t
                    revert with 0, 17
                if var52002 > -1 / var52001:
                    revert with 0, 17
                if arg2 and var52001 * var52002 > -1 / arg2:
                    revert with 0, 17
                tokens[arg1 << 240].field_1280 = arg2 * var52001 * var52002
    else:
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if 10^arg3 > -1:
                revert with 0, 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if not 10^arg3:
                    revert with 0, 18
                tokens[arg1 << 240].field_1280 = arg2 / 10^arg3
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 0, 17
                    if not 10^arg3:
                        revert with 0, 18
                    tokens[arg1 << 240].field_1280 = arg2 * 10^ext_call.return_data[31 len 1] / 10^arg3
                else:
                    if var58005 > 1:
                        s = var58001
                        t = var58002
                        u = var58005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not 10^arg3:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1280 = arg2 * s * s * t / 10^arg3
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not 10^arg3:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1280 = arg2 * s * s * s * t / 10^arg3
                        revert with 0, 17
                    if var58002 > -1 / var58001:
                        revert with 0, 17
                    if arg2 and var58001 * var58002 > -1 / arg2:
                        revert with 0, 17
                    if not 10^arg3:
                        revert with 0, 18
                    tokens[arg1 << 240].field_1280 = arg2 * var58001 * var58002 / 10^arg3
        else:
            if var38005 > 1:
                s = var38001
                t = var38002
                u = var38005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        require ext_code.size(tokens[arg1 << 240].field_0)
                        staticcall tokens[arg1 << 240].field_0.decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg2 and 1 > -1 / arg2:
                                revert with 0, 17
                            if not s * s * t:
                                revert with 0, 18
                            tokens[arg1 << 240].field_1280 = arg2 / s * s * t
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1280 = arg2 * 10^ext_call.return_data[31 len 1] / s * s * t
                            else:
                                if var68005 > 1:
                                    u = var68001
                                    v = var68002
                                    w = var68005
                                    while u <= -1 / u:
                                        if not bool(w):
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_1280 = arg2 * u * u * v / s * s * t
                                        else:
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = u * v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if u * v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_1280 = arg2 * u * u * u * v / s * s * t
                                    revert with 0, 17
                                if var68002 > -1 / var68001:
                                    revert with 0, 17
                                if arg2 and var68001 * var68002 > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1280 = arg2 * var68001 * var68002 / s * s * t
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        require ext_code.size(tokens[arg1 << 240].field_0)
                        staticcall tokens[arg1 << 240].field_0.decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg2 and 1 > -1 / arg2:
                                revert with 0, 17
                            if not s * s * s * t:
                                revert with 0, 18
                            tokens[arg1 << 240].field_1280 = arg2 / s * s * s * t
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1280 = arg2 * 10^ext_call.return_data[31 len 1] / s * s * s * t
                            else:
                                if var69005 > 1:
                                    u = var69001
                                    v = var69002
                                    w = var69005
                                    while u <= -1 / u:
                                        if not bool(w):
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_1280 = arg2 * u * u * v / s * s * s * t
                                        else:
                                            if uint255(w) * 0.5 > 1:
                                                u = u * u
                                                v = u * v
                                                w = uint255(w) * 0.5
                                                continue 
                                            if u * v > -1 / u * u:
                                                revert with 0, 17
                                            if arg2 and u * u * u * v > -1 / arg2:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            tokens[arg1 << 240].field_1280 = arg2 * u * u * u * v / s * s * s * t
                                    revert with 0, 17
                                if var69002 > -1 / var69001:
                                    revert with 0, 17
                                if arg2 and var69001 * var69002 > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1280 = arg2 * var69001 * var69002 / s * s * s * t
                revert with 0, 17
            if var38002 > -1 / var38001:
                revert with 0, 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if not var38001 * var38002:
                    revert with 0, 18
                tokens[arg1 << 240].field_1280 = arg2 / var38001 * var38002
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 0, 17
                    if not var38001 * var38002:
                        revert with 0, 18
                    tokens[arg1 << 240].field_1280 = arg2 * 10^ext_call.return_data[31 len 1] / var38001 * var38002
                else:
                    if var63005 > 1:
                        s = var63001
                        t = var63002
                        u = var63005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not var38001 * var38002:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1280 = arg2 * s * s * t / var38001 * var38002
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and s * s * s * t > -1 / arg2:
                                    revert with 0, 17
                                if not var38001 * var38002:
                                    revert with 0, 18
                                tokens[arg1 << 240].field_1280 = arg2 * s * s * s * t / var38001 * var38002
                        revert with 0, 17
                    if var63002 > -1 / var63001:
                        revert with 0, 17
                    if arg2 and var63001 * var63002 > -1 / arg2:
                        revert with 0, 17
                    if not var38001 * var38002:
                        revert with 0, 18
                    tokens[arg1 << 240].field_1280 = arg2 * var63001 * var63002 / var38001 * var38002
}

function withdraw(uint16 arg1, address arg2, uint256 arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    if stor1[msg.sender]:
        if not arg4:
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.decimals() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg3 and 1 > -1 / arg3:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(tokens[arg1 << 240].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0
                mem[ceil32(return_data.size) + 328] = 0
                call tokens[arg1 << 240].field_0 with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0) << 288)
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(tokens[arg1 << 240].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call tokens[arg1 << 240].field_0 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1], 0) << 288)
                else:
                    if var52005 > 1:
                        s = var52001
                        t = var52002
                        u = var52005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg3 and s * s * t > -1 / arg3:
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 132] = arg2
                                mem[ceil32(return_data.size) + 164] = arg3 * s * s * t
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg3 and s * s * s * t > -1 / arg3:
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 132] = arg2
                                mem[ceil32(return_data.size) + 164] = arg3 * s * s * s * t
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg2) << 64
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(tokens[arg1 << 240].field_0):
                                revert with 0, 'Address: call to non-contract'
                            idx = 0
                            while idx < 68:
                                mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            mem[ceil32(return_data.size) + 328] = 0
                            call tokens[arg1 << 240].field_0.mem[ceil32(return_data.size) + 260 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(return_data.size) + 264 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 264] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 260] = return_data.size
                                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                    if not mem[ceil32(return_data.size) + 292]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        revert with 0, 17
                    if var52002 > -1 / var52001:
                        revert with 0, 17
                    if arg3 and var52001 * var52002 > -1 / arg3:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 * var52001 * var52002
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(tokens[arg1 << 240].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var52001 * var52002, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call tokens[arg1 << 240].field_0 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var52001 * var52002, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var52001 * var52002, 0) << 288)
        else:
            if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
                if 10^arg4 > -1:
                    revert with 0, 17
                require ext_code.size(tokens[arg1 << 240].field_0)
                staticcall tokens[arg1 << 240].field_0.decimals() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg3 and 1 > -1 / arg3:
                        revert with 0, 17
                    if not 10^arg4:
                        revert with 0, 18
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 / 10^arg4
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(tokens[arg1 << 240].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 / 10^arg4, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call tokens[arg1 << 240].field_0 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 / 10^arg4, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 / 10^arg4, 0) << 288)
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 0, 17
                        if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                            revert with 0, 17
                        if not 10^arg4:
                            revert with 0, 18
                        mem[ceil32(return_data.size) + 132] = arg2
                        mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokens[arg1 << 240].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call tokens[arg1 << 240].field_0 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4, 0) << 288)
                    else:
                        if var58005 > 1:
                            s = var58001
                            t = var58002
                            u = var58005
                            while s <= -1 / s:
                                if not bool(u):
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if t > -1 / s * s:
                                        revert with 0, 17
                                    if arg3 and s * s * t > -1 / arg3:
                                        revert with 0, 17
                                    if not 10^arg4:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * s * s * t / 10^arg4
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if arg3 and s * s * s * t > -1 / arg3:
                                        revert with 0, 17
                                    if not 10^arg4:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * s * s * s * t / 10^arg4
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg2) << 64
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokens[arg1 << 240].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                idx = 0
                                while idx < 68:
                                    mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                                    idx = idx + 32
                                    continue 
                                mem[ceil32(return_data.size) + 328] = 0
                                call tokens[arg1 << 240].field_0.mem[ceil32(return_data.size) + 260 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(return_data.size) + 264 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 264] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(return_data.size) + 260] = return_data.size
                                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                        if not mem[ceil32(return_data.size) + 292]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            revert with 0, 17
                        if var58002 > -1 / var58001:
                            revert with 0, 17
                        if arg3 and var58001 * var58002 > -1 / arg3:
                            revert with 0, 17
                        if not 10^arg4:
                            revert with 0, 18
                        mem[ceil32(return_data.size) + 132] = arg2
                        mem[ceil32(return_data.size) + 164] = arg3 * var58001 * var58002 / 10^arg4
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokens[arg1 << 240].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var58001 * var58002 / 10^arg4, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call tokens[arg1 << 240].field_0 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var58001 * var58002 / 10^arg4, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var58001 * var58002 / 10^arg4, 0) << 288)
            else:
                if var38005 > 1:
                    s = var38001
                    t = var38002
                    u = var38005
                    while s <= -1 / s:
                        if not bool(u):
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = t
                                u = uint255(u) * 0.5
                                continue 
                            if t > -1 / s * s:
                                revert with 0, 17
                            require ext_code.size(tokens[arg1 << 240].field_0)
                            staticcall tokens[arg1 << 240].field_0.decimals() with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if not ext_call.return_data[31 len 1]:
                                if arg3 and 1 > -1 / arg3:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                mem[ceil32(return_data.size) + 132] = arg2
                                mem[ceil32(return_data.size) + 164] = arg3 / s * s * t
                            else:
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if 10^ext_call.return_data[31 len 1] > -1:
                                        revert with 0, 17
                                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1] / s * s * t
                                else:
                                    if var68005 > 1:
                                        u = var68001
                                        v = var68002
                                        w = var68005
                                        while u <= -1 / u:
                                            if not bool(w):
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if v > -1 / u * u:
                                                    revert with 0, 17
                                                if arg3 and u * u * v > -1 / arg3:
                                                    revert with 0, 17
                                                if not s * s * t:
                                                    revert with 0, 18
                                                mem[ceil32(return_data.size) + 132] = arg2
                                                mem[ceil32(return_data.size) + 164] = arg3 * u * u * v / s * s * t
                                            else:
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = u * v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if u * v > -1 / u * u:
                                                    revert with 0, 17
                                                if arg3 and u * u * u * v > -1 / arg3:
                                                    revert with 0, 17
                                                if not s * s * t:
                                                    revert with 0, 18
                                                mem[ceil32(return_data.size) + 132] = arg2
                                                mem[ceil32(return_data.size) + 164] = arg3 * u * u * u * v / s * s * t
                                            mem[ceil32(return_data.size) + 96] = 68
                                            mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg2) << 64
                                            mem[ceil32(return_data.size) + 196] = 32
                                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(tokens[arg1 << 240].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            idx = 0
                                            while idx < 68:
                                                mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                                                idx = idx + 32
                                                continue 
                                            mem[ceil32(return_data.size) + 328] = 0
                                            call tokens[arg1 << 240].field_0.mem[ceil32(return_data.size) + 260 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(return_data.size) + 264 len 64]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 264] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[ceil32(return_data.size) + 260] = return_data.size
                                                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                                    if not mem[ceil32(return_data.size) + 292]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        revert with 0, 17
                                    if var68002 > -1 / var68001:
                                        revert with 0, 17
                                    if arg3 and var68001 * var68002 > -1 / arg3:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * var68001 * var68002 / s * s * t
                        else:
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = s * t
                                u = uint255(u) * 0.5
                                continue 
                            if s * t > -1 / s * s:
                                revert with 0, 17
                            require ext_code.size(tokens[arg1 << 240].field_0)
                            staticcall tokens[arg1 << 240].field_0.decimals() with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if not ext_call.return_data[31 len 1]:
                                if arg3 and 1 > -1 / arg3:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                mem[ceil32(return_data.size) + 132] = arg2
                                mem[ceil32(return_data.size) + 164] = arg3 / s * s * s * t
                            else:
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if 10^ext_call.return_data[31 len 1] > -1:
                                        revert with 0, 17
                                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1] / s * s * s * t
                                else:
                                    if var69005 > 1:
                                        u = var69001
                                        v = var69002
                                        w = var69005
                                        while u <= -1 / u:
                                            if not bool(w):
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if v > -1 / u * u:
                                                    revert with 0, 17
                                                if arg3 and u * u * v > -1 / arg3:
                                                    revert with 0, 17
                                                if not s * s * s * t:
                                                    revert with 0, 18
                                                mem[ceil32(return_data.size) + 132] = arg2
                                                mem[ceil32(return_data.size) + 164] = arg3 * u * u * v / s * s * s * t
                                            else:
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = u * v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if u * v > -1 / u * u:
                                                    revert with 0, 17
                                                if arg3 and u * u * u * v > -1 / arg3:
                                                    revert with 0, 17
                                                if not s * s * s * t:
                                                    revert with 0, 18
                                                mem[ceil32(return_data.size) + 132] = arg2
                                                mem[ceil32(return_data.size) + 164] = arg3 * u * u * u * v / s * s * s * t
                                            mem[ceil32(return_data.size) + 96] = 68
                                            mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg2) << 64
                                            mem[ceil32(return_data.size) + 196] = 32
                                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(tokens[arg1 << 240].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            idx = 0
                                            while idx < 68:
                                                mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                                                idx = idx + 32
                                                continue 
                                            mem[ceil32(return_data.size) + 328] = 0
                                            call tokens[arg1 << 240].field_0.mem[ceil32(return_data.size) + 260 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(return_data.size) + 264 len 64]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 264] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[ceil32(return_data.size) + 260] = return_data.size
                                                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                                    if not mem[ceil32(return_data.size) + 292]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        revert with 0, 17
                                    if var69002 > -1 / var69001:
                                        revert with 0, 17
                                    if arg3 and var69001 * var69002 > -1 / arg3:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * var69001 * var69002 / s * s * s * t
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg2) << 64
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokens[arg1 << 240].field_0):
                            revert with 0, 'Address: call to non-contract'
                        idx = 0
                        while idx < 68:
                            mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                            idx = idx + 32
                            continue 
                        mem[ceil32(return_data.size) + 328] = 0
                        call tokens[arg1 << 240].field_0.mem[ceil32(return_data.size) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + 264 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 264] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 260] = return_data.size
                            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                if not mem[ceil32(return_data.size) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    revert with 0, 17
                if var38002 > -1 / var38001:
                    revert with 0, 17
                require ext_code.size(tokens[arg1 << 240].field_0)
                staticcall tokens[arg1 << 240].field_0.decimals() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg3 and 1 > -1 / arg3:
                        revert with 0, 17
                    if not var38001 * var38002:
                        revert with 0, 18
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 / var38001 * var38002
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(tokens[arg1 << 240].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 / var38001 * var38002, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call tokens[arg1 << 240].field_0 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 / var38001 * var38002, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 / var38001 * var38002, 0) << 288)
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 0, 17
                        if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                            revert with 0, 17
                        if not var38001 * var38002:
                            revert with 0, 18
                        mem[ceil32(return_data.size) + 132] = arg2
                        mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1] / var38001 * var38002
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokens[arg1 << 240].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / var38001 * var38002, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call tokens[arg1 << 240].field_0 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / var38001 * var38002, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / var38001 * var38002, 0) << 288)
                    else:
                        if var63005 > 1:
                            s = var63001
                            t = var63002
                            u = var63005
                            while s <= -1 / s:
                                if not bool(u):
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if t > -1 / s * s:
                                        revert with 0, 17
                                    if arg3 and s * s * t > -1 / arg3:
                                        revert with 0, 17
                                    if not var38001 * var38002:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * s * s * t / var38001 * var38002
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if arg3 and s * s * s * t > -1 / arg3:
                                        revert with 0, 17
                                    if not var38001 * var38002:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * s * s * s * t / var38001 * var38002
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg2) << 64
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokens[arg1 << 240].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                idx = 0
                                while idx < 68:
                                    mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                                    idx = idx + 32
                                    continue 
                                mem[ceil32(return_data.size) + 328] = 0
                                call tokens[arg1 << 240].field_0.mem[ceil32(return_data.size) + 260 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(return_data.size) + 264 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 264] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(return_data.size) + 260] = return_data.size
                                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                        if not mem[ceil32(return_data.size) + 292]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            revert with 0, 17
                        if var63002 > -1 / var63001:
                            revert with 0, 17
                        if arg3 and var63001 * var63002 > -1 / arg3:
                            revert with 0, 17
                        if not var38001 * var38002:
                            revert with 0, 18
                        mem[ceil32(return_data.size) + 132] = arg2
                        mem[ceil32(return_data.size) + 164] = arg3 * var63001 * var63002 / var38001 * var38002
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokens[arg1 << 240].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var63001 * var63002 / var38001 * var38002, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call tokens[arg1 << 240].field_0 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var63001 * var63002 / var38001 * var38002, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var63001 * var63002 / var38001 * var38002, 0) << 288)
    else:
        if owner != msg.sender:
            revert with 0, 'not trusted'
        if not arg4:
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.decimals() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg3 and 1 > -1 / arg3:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(tokens[arg1 << 240].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0
                mem[ceil32(return_data.size) + 328] = 0
                call tokens[arg1 << 240].field_0 with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0) << 288)
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(tokens[arg1 << 240].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call tokens[arg1 << 240].field_0 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1], 0) << 288)
                else:
                    if var55005 > 1:
                        s = var55001
                        t = var55002
                        u = var55005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg3 and s * s * t > -1 / arg3:
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 132] = arg2
                                mem[ceil32(return_data.size) + 164] = arg3 * s * s * t
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg3 and s * s * s * t > -1 / arg3:
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 132] = arg2
                                mem[ceil32(return_data.size) + 164] = arg3 * s * s * s * t
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg2) << 64
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(tokens[arg1 << 240].field_0):
                                revert with 0, 'Address: call to non-contract'
                            idx = 0
                            while idx < 68:
                                mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            mem[ceil32(return_data.size) + 328] = 0
                            call tokens[arg1 << 240].field_0.mem[ceil32(return_data.size) + 260 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(return_data.size) + 264 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 264] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 260] = return_data.size
                                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                    if not mem[ceil32(return_data.size) + 292]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        revert with 0, 17
                    if var55002 > -1 / var55001:
                        revert with 0, 17
                    if arg3 and var55001 * var55002 > -1 / arg3:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 * var55001 * var55002
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(tokens[arg1 << 240].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var55001 * var55002, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call tokens[arg1 << 240].field_0 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var55001 * var55002, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var55001 * var55002, 0) << 288)
        else:
            if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
                if 10^arg4 > -1:
                    revert with 0, 17
                require ext_code.size(tokens[arg1 << 240].field_0)
                staticcall tokens[arg1 << 240].field_0.decimals() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg3 and 1 > -1 / arg3:
                        revert with 0, 17
                    if not 10^arg4:
                        revert with 0, 18
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 / 10^arg4
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(tokens[arg1 << 240].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 / 10^arg4, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call tokens[arg1 << 240].field_0 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 / 10^arg4, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 / 10^arg4, 0) << 288)
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 0, 17
                        if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                            revert with 0, 17
                        if not 10^arg4:
                            revert with 0, 18
                        mem[ceil32(return_data.size) + 132] = arg2
                        mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokens[arg1 << 240].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call tokens[arg1 << 240].field_0 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4, 0) << 288)
                    else:
                        if var61005 > 1:
                            s = var61001
                            t = var61002
                            u = var61005
                            while s <= -1 / s:
                                if not bool(u):
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if t > -1 / s * s:
                                        revert with 0, 17
                                    if arg3 and s * s * t > -1 / arg3:
                                        revert with 0, 17
                                    if not 10^arg4:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * s * s * t / 10^arg4
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if arg3 and s * s * s * t > -1 / arg3:
                                        revert with 0, 17
                                    if not 10^arg4:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * s * s * s * t / 10^arg4
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg2) << 64
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokens[arg1 << 240].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                idx = 0
                                while idx < 68:
                                    mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                                    idx = idx + 32
                                    continue 
                                mem[ceil32(return_data.size) + 328] = 0
                                call tokens[arg1 << 240].field_0.mem[ceil32(return_data.size) + 260 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(return_data.size) + 264 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 264] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(return_data.size) + 260] = return_data.size
                                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                        if not mem[ceil32(return_data.size) + 292]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            revert with 0, 17
                        if var61002 > -1 / var61001:
                            revert with 0, 17
                        if arg3 and var61001 * var61002 > -1 / arg3:
                            revert with 0, 17
                        if not 10^arg4:
                            revert with 0, 18
                        mem[ceil32(return_data.size) + 132] = arg2
                        mem[ceil32(return_data.size) + 164] = arg3 * var61001 * var61002 / 10^arg4
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokens[arg1 << 240].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var61001 * var61002 / 10^arg4, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call tokens[arg1 << 240].field_0 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var61001 * var61002 / 10^arg4, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var61001 * var61002 / 10^arg4, 0) << 288)
            else:
                if var41005 > 1:
                    s = var41001
                    t = var41002
                    u = var41005
                    while s <= -1 / s:
                        if not bool(u):
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = t
                                u = uint255(u) * 0.5
                                continue 
                            if t > -1 / s * s:
                                revert with 0, 17
                            require ext_code.size(tokens[arg1 << 240].field_0)
                            staticcall tokens[arg1 << 240].field_0.decimals() with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if not ext_call.return_data[31 len 1]:
                                if arg3 and 1 > -1 / arg3:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                mem[ceil32(return_data.size) + 132] = arg2
                                mem[ceil32(return_data.size) + 164] = arg3 / s * s * t
                            else:
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if 10^ext_call.return_data[31 len 1] > -1:
                                        revert with 0, 17
                                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1] / s * s * t
                                else:
                                    if var71005 > 1:
                                        u = var71001
                                        v = var71002
                                        w = var71005
                                        while u <= -1 / u:
                                            if not bool(w):
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if v > -1 / u * u:
                                                    revert with 0, 17
                                                if arg3 and u * u * v > -1 / arg3:
                                                    revert with 0, 17
                                                if not s * s * t:
                                                    revert with 0, 18
                                                mem[ceil32(return_data.size) + 132] = arg2
                                                mem[ceil32(return_data.size) + 164] = arg3 * u * u * v / s * s * t
                                            else:
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = u * v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if u * v > -1 / u * u:
                                                    revert with 0, 17
                                                if arg3 and u * u * u * v > -1 / arg3:
                                                    revert with 0, 17
                                                if not s * s * t:
                                                    revert with 0, 18
                                                mem[ceil32(return_data.size) + 132] = arg2
                                                mem[ceil32(return_data.size) + 164] = arg3 * u * u * u * v / s * s * t
                                            mem[ceil32(return_data.size) + 96] = 68
                                            mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg2) << 64
                                            mem[ceil32(return_data.size) + 196] = 32
                                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(tokens[arg1 << 240].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            idx = 0
                                            while idx < 68:
                                                mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                                                idx = idx + 32
                                                continue 
                                            mem[ceil32(return_data.size) + 328] = 0
                                            call tokens[arg1 << 240].field_0.mem[ceil32(return_data.size) + 260 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(return_data.size) + 264 len 64]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 264] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[ceil32(return_data.size) + 260] = return_data.size
                                                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                                    if not mem[ceil32(return_data.size) + 292]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        revert with 0, 17
                                    if var71002 > -1 / var71001:
                                        revert with 0, 17
                                    if arg3 and var71001 * var71002 > -1 / arg3:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * var71001 * var71002 / s * s * t
                        else:
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = s * t
                                u = uint255(u) * 0.5
                                continue 
                            if s * t > -1 / s * s:
                                revert with 0, 17
                            require ext_code.size(tokens[arg1 << 240].field_0)
                            staticcall tokens[arg1 << 240].field_0.decimals() with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if not ext_call.return_data[31 len 1]:
                                if arg3 and 1 > -1 / arg3:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                mem[ceil32(return_data.size) + 132] = arg2
                                mem[ceil32(return_data.size) + 164] = arg3 / s * s * s * t
                            else:
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if 10^ext_call.return_data[31 len 1] > -1:
                                        revert with 0, 17
                                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1] / s * s * s * t
                                else:
                                    if var72005 > 1:
                                        u = var72001
                                        v = var72002
                                        w = var72005
                                        while u <= -1 / u:
                                            if not bool(w):
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if v > -1 / u * u:
                                                    revert with 0, 17
                                                if arg3 and u * u * v > -1 / arg3:
                                                    revert with 0, 17
                                                if not s * s * s * t:
                                                    revert with 0, 18
                                                mem[ceil32(return_data.size) + 132] = arg2
                                                mem[ceil32(return_data.size) + 164] = arg3 * u * u * v / s * s * s * t
                                            else:
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = u * v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if u * v > -1 / u * u:
                                                    revert with 0, 17
                                                if arg3 and u * u * u * v > -1 / arg3:
                                                    revert with 0, 17
                                                if not s * s * s * t:
                                                    revert with 0, 18
                                                mem[ceil32(return_data.size) + 132] = arg2
                                                mem[ceil32(return_data.size) + 164] = arg3 * u * u * u * v / s * s * s * t
                                            mem[ceil32(return_data.size) + 96] = 68
                                            mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg2) << 64
                                            mem[ceil32(return_data.size) + 196] = 32
                                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(tokens[arg1 << 240].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            idx = 0
                                            while idx < 68:
                                                mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                                                idx = idx + 32
                                                continue 
                                            mem[ceil32(return_data.size) + 328] = 0
                                            call tokens[arg1 << 240].field_0.mem[ceil32(return_data.size) + 260 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(return_data.size) + 264 len 64]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 264] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[ceil32(return_data.size) + 260] = return_data.size
                                                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                                    if not mem[ceil32(return_data.size) + 292]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        revert with 0, 17
                                    if var72002 > -1 / var72001:
                                        revert with 0, 17
                                    if arg3 and var72001 * var72002 > -1 / arg3:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * var72001 * var72002 / s * s * s * t
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg2) << 64
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokens[arg1 << 240].field_0):
                            revert with 0, 'Address: call to non-contract'
                        idx = 0
                        while idx < 68:
                            mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                            idx = idx + 32
                            continue 
                        mem[ceil32(return_data.size) + 328] = 0
                        call tokens[arg1 << 240].field_0.mem[ceil32(return_data.size) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + 264 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 264] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 260] = return_data.size
                            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                if not mem[ceil32(return_data.size) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    revert with 0, 17
                if var41002 > -1 / var41001:
                    revert with 0, 17
                require ext_code.size(tokens[arg1 << 240].field_0)
                staticcall tokens[arg1 << 240].field_0.decimals() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg3 and 1 > -1 / arg3:
                        revert with 0, 17
                    if not var41001 * var41002:
                        revert with 0, 18
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 / var41001 * var41002
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(tokens[arg1 << 240].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 / var41001 * var41002, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call tokens[arg1 << 240].field_0 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 / var41001 * var41002, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 / var41001 * var41002, 0) << 288)
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 0, 17
                        if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                            revert with 0, 17
                        if not var41001 * var41002:
                            revert with 0, 18
                        mem[ceil32(return_data.size) + 132] = arg2
                        mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1] / var41001 * var41002
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokens[arg1 << 240].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / var41001 * var41002, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call tokens[arg1 << 240].field_0 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / var41001 * var41002, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / var41001 * var41002, 0) << 288)
                    else:
                        if var66005 > 1:
                            s = var66001
                            t = var66002
                            u = var66005
                            while s <= -1 / s:
                                if not bool(u):
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if t > -1 / s * s:
                                        revert with 0, 17
                                    if arg3 and s * s * t > -1 / arg3:
                                        revert with 0, 17
                                    if not var41001 * var41002:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * s * s * t / var41001 * var41002
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if arg3 and s * s * s * t > -1 / arg3:
                                        revert with 0, 17
                                    if not var41001 * var41002:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 132] = arg2
                                    mem[ceil32(return_data.size) + 164] = arg3 * s * s * s * t / var41001 * var41002
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg2) << 64
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokens[arg1 << 240].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                idx = 0
                                while idx < 68:
                                    mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                                    idx = idx + 32
                                    continue 
                                mem[ceil32(return_data.size) + 328] = 0
                                call tokens[arg1 << 240].field_0.mem[ceil32(return_data.size) + 260 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(return_data.size) + 264 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 264] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(return_data.size) + 260] = return_data.size
                                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                        if not mem[ceil32(return_data.size) + 292]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            revert with 0, 17
                        if var66002 > -1 / var66001:
                            revert with 0, 17
                        if arg3 and var66001 * var66002 > -1 / arg3:
                            revert with 0, 17
                        if not var41001 * var41002:
                            revert with 0, 18
                        mem[ceil32(return_data.size) + 132] = arg2
                        mem[ceil32(return_data.size) + 164] = arg3 * var66001 * var66002 / var41001 * var41002
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokens[arg1 << 240].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var66001 * var66002 / var41001 * var41002, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call tokens[arg1 << 240].field_0 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var66001 * var66002 / var41001 * var41002, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3 * var66001 * var66002 / var41001 * var41002, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
