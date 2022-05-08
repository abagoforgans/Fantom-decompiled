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
    require arg1 == arg1
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
    require arg1 == arg1
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
    require arg1 == arg1
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
    require arg2 == arg2
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
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'not trusted'
    if stor8[arg1]:
        if stor8[arg1] < 1:
            revert with 'NH{q', 17
        if stor7.length < 1:
            revert with 'NH{q', 17
        if stor7.length - 1 >= stor7.length:
            revert with 'NH{q', 50
        if stor8[arg1] - 1 >= stor7.length:
            revert with 'NH{q', 50
        stor7[stor8[arg1]].field_0 = stor7[stor7.length].field_0
        stor8[stor7[stor7.length].field_0] = stor8[arg1]
        if not stor7.length:
            revert with 'NH{q', 49
        stor7[stor7.length].field_0 = 0
        stor7.length--
        stor8[arg1] = 0
}

function listTokensNames() {
    if stor3 > test266151307():
        revert with 'NH{q', 65
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
                _41 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _48 = mem[_41]
                require mem[_41] <= test266151307()
                require _41 + mem[_41] + 31 < _41 + return_data.size
                _51 = mem[_41 + mem[_41]]
                if mem[_41 + mem[_41]] > test266151307():
                    revert with 'NH{q', 65
                if _41 + ceil32(return_data.size) + ceil32(mem[_41 + mem[_41]]) + 32 > test266151307() or ceil32(mem[_41 + mem[_41]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _41 + ceil32(return_data.size) + ceil32(mem[_41 + mem[_41]]) + 32
                mem[_41 + ceil32(return_data.size)] = _51
                require _48 + _51 + 32 <= return_data.size
                s = 0
                while s < _51:
                    mem[_41 + ceil32(return_data.size) + s + 32] = mem[_41 + _48 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_51) > _51:
                    mem[_41 + ceil32(return_data.size) + _51 + 32] = 0
                if uint16(idx) >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * uint16(idx)) + 128] = _41 + ceil32(return_data.size)
            if uint16(idx) == 65535:
                revert with 'NH{q', 17
            idx = uint16(idx) + 1
            continue 
        _37 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _43:
            mem[u] = t + -_37 - 64
            _70 = mem[s]
            _78 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _78:
                mem[t + v + 32] = mem[_70 + v + 32]
                v = v + 32
                continue 
            if ceil32(_78) > _78:
                mem[t + _78 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_78) + 32
            u = u + 32
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
                _79 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _82 = mem[_79]
                require mem[_79] <= test266151307()
                require _79 + mem[_79] + 31 < _79 + return_data.size
                _84 = mem[_79 + mem[_79]]
                if mem[_79 + mem[_79]] > test266151307():
                    revert with 'NH{q', 65
                if _79 + ceil32(return_data.size) + ceil32(mem[_79 + mem[_79]]) + 32 > test266151307() or ceil32(mem[_79 + mem[_79]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _79 + ceil32(return_data.size) + ceil32(mem[_79 + mem[_79]]) + 32
                mem[_79 + ceil32(return_data.size)] = _84
                require _82 + _84 + 32 <= return_data.size
                s = 0
                while s < _84:
                    mem[_79 + ceil32(return_data.size) + s + 32] = mem[_79 + _82 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_84) > _84:
                    mem[_79 + ceil32(return_data.size) + _84 + 32] = 0
                if uint16(idx) >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * uint16(idx)) + 128] = _79 + ceil32(return_data.size)
            if uint16(idx) == 65535:
                revert with 'NH{q', 17
            idx = uint16(idx) + 1
            continue 
        _73 = mem[64]
        mem[mem[64]] = 32
        _80 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _80:
            mem[u] = t + -_73 - 64
            _95 = mem[s]
            _98 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _98:
                mem[t + v + 32] = mem[_95 + v + 32]
                v = v + 32
                continue 
            if ceil32(_98) > _98:
                mem[t + _98 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_98) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function setFeeBase(uint16 arg1, uint256 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        require ext_code.size(tokens[arg1 << 240].field_0)
        staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg2 and 1 > -1 / arg2:
                revert with 'NH{q', 17
            tokens[arg1 << 240].field_256 = arg2
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                    revert with 'NH{q', 17
                tokens[arg1 << 240].field_256 = arg2 * 10^ext_call.return_data[31 len 1]
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if arg2 and t * s > -1 / arg2:
                    revert with 'NH{q', 17
                tokens[arg1 << 240].field_256 = arg2 * t * s
    else:
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if 10^arg3 > -1:
                revert with 'NH{q', 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 'NH{q', 17
                if not 10^arg3:
                    revert with 'NH{q', 18
                tokens[arg1 << 240].field_256 = arg2 / 10^arg3
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 'NH{q', 17
                    if not 10^arg3:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_256 = arg2 * 10^ext_call.return_data[31 len 1] / 10^arg3
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if arg2 and t * s > -1 / arg2:
                        revert with 'NH{q', 17
                    if not 10^arg3:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_256 = arg2 * t * s / 10^arg3
        else:
            s = 10
            t = 1
            idx = arg3
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                tokens[arg1 << 240].field_256 = arg2 / t * s
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_256 = arg2 * 10^ext_call.return_data[31 len 1] / t * s
                else:
                    u = 10
                    v = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = v * u
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 'NH{q', 17
                    if arg2 and v * u > -1 / arg2:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_256 = arg2 * v * u / t * s
}

function setMinAmount(uint16 arg1, uint256 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        require ext_code.size(tokens[arg1 << 240].field_0)
        staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg2 and 1 > -1 / arg2:
                revert with 'NH{q', 17
            tokens[arg1 << 240].field_768 = arg2
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                    revert with 'NH{q', 17
                tokens[arg1 << 240].field_768 = arg2 * 10^ext_call.return_data[31 len 1]
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if arg2 and t * s > -1 / arg2:
                    revert with 'NH{q', 17
                tokens[arg1 << 240].field_768 = arg2 * t * s
    else:
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if 10^arg3 > -1:
                revert with 'NH{q', 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 'NH{q', 17
                if not 10^arg3:
                    revert with 'NH{q', 18
                tokens[arg1 << 240].field_768 = arg2 / 10^arg3
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 'NH{q', 17
                    if not 10^arg3:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_768 = arg2 * 10^ext_call.return_data[31 len 1] / 10^arg3
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if arg2 and t * s > -1 / arg2:
                        revert with 'NH{q', 17
                    if not 10^arg3:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_768 = arg2 * t * s / 10^arg3
        else:
            s = 10
            t = 1
            idx = arg3
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                tokens[arg1 << 240].field_768 = arg2 / t * s
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_768 = arg2 * 10^ext_call.return_data[31 len 1] / t * s
                else:
                    u = 10
                    v = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = v * u
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 'NH{q', 17
                    if arg2 and v * u > -1 / arg2:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_768 = arg2 * v * u / t * s
}

function setMaxAmount(uint16 arg1, uint256 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        require ext_code.size(tokens[arg1 << 240].field_0)
        staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg2 and 1 > -1 / arg2:
                revert with 'NH{q', 17
            tokens[arg1 << 240].field_1024 = arg2
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                    revert with 'NH{q', 17
                tokens[arg1 << 240].field_1024 = arg2 * 10^ext_call.return_data[31 len 1]
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if arg2 and t * s > -1 / arg2:
                    revert with 'NH{q', 17
                tokens[arg1 << 240].field_1024 = arg2 * t * s
    else:
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if 10^arg3 > -1:
                revert with 'NH{q', 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 'NH{q', 17
                if not 10^arg3:
                    revert with 'NH{q', 18
                tokens[arg1 << 240].field_1024 = arg2 / 10^arg3
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 'NH{q', 17
                    if not 10^arg3:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_1024 = arg2 * 10^ext_call.return_data[31 len 1] / 10^arg3
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if arg2 and t * s > -1 / arg2:
                        revert with 'NH{q', 17
                    if not 10^arg3:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_1024 = arg2 * t * s / 10^arg3
        else:
            s = 10
            t = 1
            idx = arg3
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                tokens[arg1 << 240].field_1024 = arg2 / t * s
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_1024 = arg2 * 10^ext_call.return_data[31 len 1] / t * s
                else:
                    u = 10
                    v = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = v * u
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 'NH{q', 17
                    if arg2 and v * u > -1 / arg2:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_1024 = arg2 * v * u / t * s
}

function setDailyLimit(uint16 arg1, uint256 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        require ext_code.size(tokens[arg1 << 240].field_0)
        staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg2 and 1 > -1 / arg2:
                revert with 'NH{q', 17
            tokens[arg1 << 240].field_1280 = arg2
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                    revert with 'NH{q', 17
                tokens[arg1 << 240].field_1280 = arg2 * 10^ext_call.return_data[31 len 1]
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if arg2 and t * s > -1 / arg2:
                    revert with 'NH{q', 17
                tokens[arg1 << 240].field_1280 = arg2 * t * s
    else:
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if 10^arg3 > -1:
                revert with 'NH{q', 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 'NH{q', 17
                if not 10^arg3:
                    revert with 'NH{q', 18
                tokens[arg1 << 240].field_1280 = arg2 / 10^arg3
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 'NH{q', 17
                    if not 10^arg3:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_1280 = arg2 * 10^ext_call.return_data[31 len 1] / 10^arg3
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if arg2 and t * s > -1 / arg2:
                        revert with 'NH{q', 17
                    if not 10^arg3:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_1280 = arg2 * t * s / 10^arg3
        else:
            s = 10
            t = 1
            idx = arg3
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                tokens[arg1 << 240].field_1280 = arg2 / t * s
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_1280 = arg2 * 10^ext_call.return_data[31 len 1] / t * s
                else:
                    u = 10
                    v = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = v * u
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 'NH{q', 17
                    if arg2 and v * u > -1 / arg2:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    tokens[arg1 << 240].field_1280 = arg2 * v * u / t * s
}

function listOrders() {
    if stor7.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor7.length
    mem[64] = (32 * stor7.length) + 128
    if not stor7.length:
        if var36002 >= stor7.length:
            mem[(32 * stor7.length) + 128] = 32
            mem[(32 * stor7.length) + 160] = stor7.length
            idx = 0
            s = 128
            t = (32 * stor7.length) + 192
            while idx < mem[96]:
                _220 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_220 + 62 len 2]
                mem[t + 64] = mem[_220 + 76 len 20]
                mem[t + 96] = mem[_220 + 108 len 20]
                mem[t + 128] = mem[_220 + 128]
                mem[t + 160] = mem[_220 + 191 len 1]
                mem[t + 192] = mem[_220 + 223 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len (257 * stor7.length) + -mem[64] + 192
        if stor7.length <= var42001:
            revert with 0, 'EnumerableSet: index out of bounds'
        if var44002 < stor7.length:
            mem[0] = var48001
            mem[32] = 6
            mem[64] = (32 * stor7.length) + 352
            mem[(32 * stor7.length) + 128] = orders[var48001].field_0
            mem[(32 * stor7.length) + 160] = orders[var48001].field_256
            mem[(32 * stor7.length) + 192] = orders[var48001].field_272
            mem[(32 * stor7.length) + 224] = orders[var48001].field_512
            mem[(32 * stor7.length) + 256] = orders[var48001].field_768
            mem[(32 * stor7.length) + 288] = orders[var48001].field_1024
            mem[(32 * stor7.length) + 320] = orders[var48001].field_1032
            s = var48001
            idx = var48008
            while idx < stor7.length:
                mem[(32 * idx) + 128] = (32 * stor7.length) + 128
                if idx == -1:
                    revert with 'NH{q', 17
                if idx + 1 >= stor7.length:
                    _465 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor7.length
                    idx = 0
                    t = 128
                    u = mem[64] + 64
                    while idx < stor7.length:
                        _493 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_493 + 62 len 2]
                        mem[u + 64] = mem[_493 + 76 len 20]
                        mem[u + 96] = mem[_493 + 108 len 20]
                        mem[u + 128] = mem[_493 + 128]
                        mem[u + 160] = mem[_493 + 191 len 1]
                        mem[u + 192] = mem[_493 + 223 len 1]
                        mem[0] = s
                        mem[32] = 6
                        mem[64] = mem[64] + 224
                        mem[(32 * stor7.length) + 128] = orders[s].field_0
                        mem[(32 * stor7.length) + 160] = orders[var48001].field_256
                        mem[(32 * stor7.length) + 192] = orders[var48001].field_272
                        mem[(32 * stor7.length) + 224] = orders[var48001].field_512
                        mem[(32 * stor7.length) + 256] = orders[var48001].field_768
                        mem[(32 * stor7.length) + 288] = orders[var48001].field_1024
                        mem[(32 * stor7.length) + 320] = orders[var48001].field_1032
                        idx = idx + 1
                        t = t + 32
                        u = u + 224
                        continue 
                    return memory
                      from mem[64]
                       len _465 + (224 * stor7.length) + -mem[64] + 64
                if stor7.length <= idx + 1:
                    revert with 0, 'EnumerableSet: index out of bounds'
                if idx + 1 >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx].field_512
                mem[32] = 6
                mem[64] = mem[64] + 224
                mem[(32 * stor7.length) + 128] = orders[stor7[idx].field_512].field_0
                mem[(32 * stor7.length) + 160] = orders[var48001].field_256
                mem[(32 * stor7.length) + 192] = orders[var48001].field_272
                mem[(32 * stor7.length) + 224] = orders[var48001].field_512
                mem[(32 * stor7.length) + 256] = orders[var48001].field_768
                mem[(32 * stor7.length) + 288] = orders[var48001].field_1024
                mem[(32 * stor7.length) + 320] = orders[var48001].field_1032
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
        mem[var13001] = (32 * stor7.length) + 128
        s = var13001
        idx = var13002
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
        if var43002 >= stor7.length:
            _264 = mem[64]
            mem[mem[64]] = 32
            _270 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _270:
                _309 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_309 + 62 len 2]
                mem[t + 64] = mem[_309 + 76 len 20]
                mem[t + 96] = mem[_309 + 108 len 20]
                mem[t + 128] = mem[_309 + 128]
                mem[t + 160] = mem[_309 + 191 len 1]
                mem[t + 192] = mem[_309 + 223 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _264 + (224 * _270) + -mem[64] + 64
        if stor7.length <= var49001:
            revert with 0, 'EnumerableSet: index out of bounds'
        if var51002 < stor7.length:
            mem[0] = var55001
            mem[32] = 6
            _520 = mem[64]
            mem[64] = mem[64] + 224
            mem[_520] = orders[var55001].field_0
            mem[_520 + 32] = orders[var55001].field_256
            mem[_520 + 64] = orders[var55001].field_272
            mem[_520 + 96] = orders[var55001].field_512
            mem[_520 + 128] = orders[var55001].field_768
            mem[_520 + 160] = orders[var55001].field_1024
            mem[_520 + 192] = orders[var55001].field_1032
            _521 = mem[96]
            s = var55001
            idx = var55008
            while idx < _521:
                mem[(32 * idx) + 128] = _520
                if idx == -1:
                    revert with 'NH{q', 17
                if idx + 1 >= stor7.length:
                    _522 = mem[64]
                    mem[mem[64]] = 32
                    _524 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 64
                    while idx < _524:
                        _536 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_536 + 62 len 2]
                        mem[u + 64] = mem[_536 + 76 len 20]
                        mem[u + 96] = mem[_536 + 108 len 20]
                        mem[u + 128] = mem[_536 + 128]
                        mem[u + 160] = mem[_536 + 191 len 1]
                        mem[u + 192] = mem[_536 + 223 len 1]
                        mem[0] = s
                        mem[32] = 6
                        _520 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_520] = orders[s].field_0
                        mem[_520 + 32] = orders[var55001].field_256
                        mem[_520 + 64] = orders[var55001].field_272
                        mem[_520 + 96] = orders[var55001].field_512
                        mem[_520 + 128] = orders[var55001].field_768
                        mem[_520 + 160] = orders[var55001].field_1024
                        mem[_520 + 192] = orders[var55001].field_1032
                        idx = idx + 1
                        t = t + 32
                        u = u + 224
                        continue 
                    return memory
                      from mem[64]
                       len _522 + (224 * _524) + -mem[64] + 64
                if stor7.length <= idx + 1:
                    revert with 0, 'EnumerableSet: index out of bounds'
                if idx + 1 >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx].field_512
                mem[32] = 6
                _520 = mem[64]
                mem[64] = mem[64] + 224
                mem[_520] = orders[stor7[idx].field_512].field_0
                mem[_520 + 32] = orders[var55001].field_256
                mem[_520 + 64] = orders[var55001].field_272
                mem[_520 + 96] = orders[var55001].field_512
                mem[_520 + 128] = orders[var55001].field_768
                mem[_520 + 160] = orders[var55001].field_1024
                mem[_520 + 192] = orders[var55001].field_1032
                s = stor7[idx].field_256
                idx = idx + 1
                continue 
    revert with 'NH{q', 50
}

function withdraw(uint16 arg1, address arg2, uint256 arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'not trusted'
    if not arg4:
        require ext_code.size(tokens[arg1 << 240].field_0)
        staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg3 and 1 > -1 / arg3:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 132] = arg2
            mem[ceil32(return_data.size) + 164] = arg3
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(tokens[arg1 << 240].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
            mem[ceil32(return_data.size) + 328] = 0
            call tokens[arg1 << 240].field_0 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                    revert with 'NH{q', 17
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokens[arg1 << 240].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1], 0
                mem[ceil32(return_data.size) + 328] = 0
                call tokens[arg1 << 240].field_0 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1], 0) << 288)
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if arg3 and t * s > -1 / arg3:
                    revert with 'NH{q', 17
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3 * t * s
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokens[arg1 << 240].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * t * s, 0
                mem[ceil32(return_data.size) + 328] = 0
                call tokens[arg1 << 240].field_0 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * t * s, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * t * s, 0) << 288)
    else:
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if 10^arg4 > -1:
                revert with 'NH{q', 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg3 and 1 > -1 / arg3:
                    revert with 'NH{q', 17
                if not 10^arg4:
                    revert with 'NH{q', 18
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3 / 10^arg4
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokens[arg1 << 240].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 / 10^arg4, 0
                mem[ceil32(return_data.size) + 328] = 0
                call tokens[arg1 << 240].field_0 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 / 10^arg4, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 / 10^arg4, 0) << 288)
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                        revert with 'NH{q', 17
                    if not 10^arg4:
                        revert with 'NH{q', 18
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(tokens[arg1 << 240].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call tokens[arg1 << 240].field_0 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^arg4, 0) << 288)
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if arg3 and t * s > -1 / arg3:
                        revert with 'NH{q', 17
                    if not 10^arg4:
                        revert with 'NH{q', 18
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 * t * s / 10^arg4
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(tokens[arg1 << 240].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * t * s / 10^arg4, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call tokens[arg1 << 240].field_0 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * t * s / 10^arg4, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * t * s / 10^arg4, 0) << 288)
        else:
            s = 10
            t = 1
            idx = arg4
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            require ext_code.size(tokens[arg1 << 240].field_0)
            staticcall tokens[arg1 << 240].field_0.0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg3 and 1 > -1 / arg3:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3 / t * s
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokens[arg1 << 240].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 / t * s, 0
                mem[ceil32(return_data.size) + 328] = 0
                call tokens[arg1 << 240].field_0 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 / t * s, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 / t * s, 0) << 288)
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1] / t * s
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(tokens[arg1 << 240].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / t * s, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call tokens[arg1 << 240].field_0 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / t * s, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / t * s, 0) << 288)
                else:
                    u = 10
                    v = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = v * u
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 'NH{q', 17
                    if arg3 and v * u > -1 / arg3:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 * v * u / t * s
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(tokens[arg1 << 240].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * v * u / t * s, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call tokens[arg1 << 240].field_0 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * v * u / t * s, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * v * u / t * s, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
