contract main {




// =====================  Runtime code  =====================


#
#  - listOrders()
#  - withdraw(uint8 arg1, address arg2, uint256 arg3)
#  - sub_8fef9802(?)
#  - complete(uint256 arg1)
#  - orders(uint256 arg1)
#  - listUserOrders()
#
address owner;
mapping of uint8 stor1;
uint8 stor3;
address stor3; offset 8
mapping of address sub_8856c0d6;

function trusted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_8856c0d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_8856c0d6[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setBridge(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor3.field_8) = arg1
}

function setTrusted(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setToken(uint8 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8856c0d6[arg1 << 248] = arg2
    if 1 > -arg1 + 255:
        revert with 0, 17
    if uint8(arg1 + 1) > uint8(stor3.field_0):
        if 1 > -arg1 + 255:
            revert with 0, 17
        uint8(stor3.field_0) = uint8(arg1 + 1)
}

function listTokensNames() {
    if uint8(stor3.field_0) > test266151307():
        revert with 0, 65
    mem[96] = uint8(stor3.field_0)
    mem[64] = (32 * uint8(stor3.field_0)) + 128
    if not uint8(stor3.field_0):
        idx = 0
        while uint8(idx) < uint8(stor3.field_0):
            mem[0] = uint8(idx)
            mem[32] = 4
            if sub_8856c0d6[idx << 248]:
                mem[0] = uint8(idx)
                mem[32] = 4
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_8856c0d6[idx << 248])
                staticcall sub_8856c0d6[idx << 248].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _42 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _51 = mem[_42]
                require mem[_42] <= test266151307()
                require _42 + return_data.size > _42 + mem[_42] + 31
                _54 = mem[_42 + mem[_42]]
                if mem[_42 + mem[_42]] > test266151307():
                    revert with 0, 65
                if ceil32(mem[_42 + mem[_42]]) + 32 < 0 or _42 + ceil32(return_data.size) + ceil32(mem[_42 + mem[_42]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _42 + ceil32(return_data.size) + ceil32(mem[_42 + mem[_42]]) + 32
                mem[_42 + ceil32(return_data.size)] = _54
                require _51 + _54 + 32 <= return_data.size
                s = 0
                while s < _54:
                    mem[s + _42 + ceil32(return_data.size) + 32] = mem[s + _42 + _51 + 32]
                    s = s + 32
                    continue 
                if ceil32(_54) > _54:
                    mem[_54 + _42 + ceil32(return_data.size) + 32] = 0
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint8(idx)) + 128] = _42 + ceil32(return_data.size)
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
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
        idx = uint8(stor3.field_0)
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while uint8(idx) < uint8(stor3.field_0):
            mem[0] = uint8(idx)
            mem[32] = 4
            if sub_8856c0d6[idx << 248]:
                mem[0] = uint8(idx)
                mem[32] = 4
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_8856c0d6[idx << 248])
                staticcall sub_8856c0d6[idx << 248].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _82 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _87 = mem[_82]
                require mem[_82] <= test266151307()
                require _82 + return_data.size > _82 + mem[_82] + 31
                _88 = mem[_82 + mem[_82]]
                if mem[_82 + mem[_82]] > test266151307():
                    revert with 0, 65
                if ceil32(mem[_82 + mem[_82]]) + 32 < 0 or _82 + ceil32(return_data.size) + ceil32(mem[_82 + mem[_82]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _82 + ceil32(return_data.size) + ceil32(mem[_82 + mem[_82]]) + 32
                mem[_82 + ceil32(return_data.size)] = _88
                require _87 + _88 + 32 <= return_data.size
                s = 0
                while s < _88:
                    mem[s + _82 + ceil32(return_data.size) + 32] = mem[s + _82 + _87 + 32]
                    s = s + 32
                    continue 
                if ceil32(_88) > _88:
                    mem[_88 + _82 + ceil32(return_data.size) + 32] = 0
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint8(idx)) + 128] = _82 + ceil32(return_data.size)
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
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



}
