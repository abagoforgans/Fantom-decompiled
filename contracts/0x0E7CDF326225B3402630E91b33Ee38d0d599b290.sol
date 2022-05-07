contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint16 arg1, address arg2, uint256 arg3, uint8 arg4)
#  - sub_f1a348fe(?)
#
address owner;
mapping of uint8 stor1;
uint256 stor2;
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
           tokens[arg1].field_1280
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
        stor8[stor7[stor7.length].field_0] = stor8[arg1]
        if not stor7.length:
            revert with 0, 49
        stor7[stor7.length].field_0 = 0
        stor7.length--
        stor8[arg1] = 0
}

function sub_caf84862(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokens[arg1 << 240].field_0 = address(arg2)
    tokens[arg1 << 240].field_160 = 0
    tokens[arg1 << 240].field_256 = 0
    tokens[arg1 << 240].field_256 = 0
    tokens[arg1 << 240].field_512 = address(arg3)
    tokens[arg1 << 240].field_768 = 1
    tokens[arg1 << 240].field_1024 = 1000000000000000000000 * 10^18
    tokens[arg1 << 240].field_1280 = 0
    if 1 > -uint16(arg1) + 65535:
        revert with 0, 17
    if uint16(uint16(arg1) + 1) > stor3:
        if 1 > -uint16(arg1) + 65535:
            revert with 0, 17
        stor3 = uint16(uint16(arg1) + 1)
}

function create(uint16 arg1, uint256 arg2, uint8 arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    require arg4 == arg4
    mem[100] = msg.sender
    require ext_code.size(tokens[arg1 << 240].field_0)
    staticcall tokens[arg1 << 240].field_0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = tokens[arg1 << 240].field_512
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokens[arg1 << 240].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, tokens[arg1 << 240].field_512, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call tokens[arg1 << 240].field_0 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, tokens[arg1 << 240].field_512, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, tokens[arg1 << 240].field_512, ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(tokens[arg1 << 240].field_0)
        staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[ceil32(return_data.size) + 452] = ext_call.return_data[31 len 1]
        orders[stor2].field_0 = stor2
        orders[stor2].field_256 = arg1
        orders[stor2].field_272 = msg.sender
        orders[stor2].field_512 = arg4
        orders[stor2].field_768 = arg2
        orders[stor2].field_1024 = mem[ceil32(return_data.size) + 483 len 1]
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(tokens[arg1 << 240].field_0)
        staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] = ext_call.return_data[31 len 1]
        orders[stor2].field_0 = stor2
        orders[stor2].field_256 = arg1
        orders[stor2].field_272 = msg.sender
        orders[stor2].field_512 = arg4
        orders[stor2].field_768 = arg2
        orders[stor2].field_1024 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 484 len 1]
    orders[stor2].field_1032 = arg3
    if not stor8[stor2]:
        stor7.length++
        stor7[stor7.length].field_0 = stor2
        stor8[stor2] = stor7.length
    emit 0xe0fc39a2: orders[stor2].field_0, orders[stor2].field_256, orders[stor2].field_256, orders[stor2].field_512, orders[stor2].field_768, orders[stor2].field_1024, orders[stor2].field_1024, ext_call.return_data[0], stor2
    if stor2 == -1:
        revert with 0, 17
    stor2++
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
                staticcall tokens[idx << 240].field_0.0x95d89b41 with:
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
                staticcall tokens[idx << 240].field_0.0x95d89b41 with:
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



}
