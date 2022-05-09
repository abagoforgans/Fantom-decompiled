contract main {




// =====================  Runtime code  =====================


#
#  - attachValue(bytes arg1)
#
address owner;
address nebulaAddress;
address oracleRouterAddress;
mapping of uint8 stor3;
array of struct stor4;

function uuidIsProcessed(bytes16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(128, 128, arg1)
    return bool(stor3[arg1])
}

function nebula() payable {
    return nebulaAddress
}

function oracleRouter() payable {
    return oracleRouterAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setNebula(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    nebulaAddress = arg1
    emit SetNebula(nebulaAddress, arg1);
}

function sub_4d69ee0e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'ACW'
    oracleRouterAddress = address(arg1)
    emit 0x79862892: oracleRouterAddress, address(arg1)
}

function bytesToBytes32(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < 32:
        if idx > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if arg2 > !idx:
            revert with 0, 17
        if arg2 + idx >= arg1.length:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = Mask(-(8 * idx) + 8, 248, mem[arg2 + idx + 128]) >> 8 * idx or s
        continue 
    mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function bytesToBytes16(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < 16:
        if idx > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if arg2 > !idx:
            revert with 0, 17
        if arg2 + idx >= arg1.length:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = Mask(-(8 * idx) + 8, 248, mem[arg2 + idx + 128]) >> 8 * idx or s
        continue 
    mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function deserializeAddress(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if arg2 > -21:
        revert with 0, 17
    if var37002 >= arg2 + 20:
        mem[ceil32(arg1.length) + 128] = address(var37003)
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    if var39001 >= arg1.length:
        revert with 0, 50
    if var43002 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if var49001 > !var49002:
        revert with 0, 17
    if var55001 == -1:
        revert with 0, 17
    if arg2 > -21:
        revert with 0, 17
    if var67002 < arg2 + 20:
        # nil
    else:
        mem[ceil32(arg1.length) + 128] = address(var67003)
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function deserializeUint(bytes arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if arg2 > !arg3:
        revert with 0, 17
    if var36002 >= arg2 + arg3:
        mem[ceil32(arg1.length) + 128] = var36003
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    if var38001 >= arg1.length:
        revert with 0, 50
    if var42002 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if var48001 > !var48002:
        revert with 0, 17
    if var54001 == -1:
        revert with 0, 17
    if arg2 > !arg3:
        revert with 0, 17
    if var66002 < arg2 + arg3:
        # nil
    else:
        mem[ceil32(arg1.length) + 128] = var66003
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function equal(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 0, 65
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg2.length
    return (sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256) == sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]))
}

function sub_8229c365(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor4.length
    if bool(stor4[arg1].field_0):
        if bool(stor4[arg1].field_0) == uint255(stor4[arg1].field_1) < 32:
            revert with 0, 34
        if bool(stor4[arg1].field_0):
            if bool(stor4[arg1].field_0) == uint255(stor4[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor4[arg1].field_1):
                if 31 < uint255(stor4[arg1].field_1):
                    mem[128] = uint256(stor4[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor4[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor4[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor4[arg1].field_1)), data=mem[128 len ceil32(uint255(stor4[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor4[arg1].field_8)
        else:
            if bool(stor4[arg1].field_0) == stor4[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[arg1].field_1 % 128:
                if 31 < stor4[arg1].field_1 % 128:
                    mem[128] = uint256(stor4[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor4[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor4[arg1].field_1)), data=mem[128 len ceil32(uint255(stor4[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor4[arg1].field_8)
        mem[ceil32(uint255(stor4[arg1].field_1)) + 192 len ceil32(uint255(stor4[arg1].field_1))] = mem[128 len ceil32(uint255(stor4[arg1].field_1))]
        if ceil32(uint255(stor4[arg1].field_1)) > uint255(stor4[arg1].field_1):
            mem[uint255(stor4[arg1].field_1) + ceil32(uint255(stor4[arg1].field_1)) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor4[arg1].field_1)), data=mem[128 len ceil32(uint255(stor4[arg1].field_1))], mem[(2 * ceil32(uint255(stor4[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor4[arg1].field_1))]), 
    if bool(stor4[arg1].field_0) == stor4[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor4[arg1].field_0):
        if bool(stor4[arg1].field_0) == uint255(stor4[arg1].field_1) < 32:
            revert with 0, 34
        if uint255(stor4[arg1].field_1):
            if 31 < uint255(stor4[arg1].field_1):
                mem[128] = uint256(stor4[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor4[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor4[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0 % 128, data=mem[128 len ceil32(stor4[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4[arg1].field_8)
    else:
        if bool(stor4[arg1].field_0) == stor4[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor4[arg1].field_1 % 128:
            if 31 < stor4[arg1].field_1 % 128:
                mem[128] = uint256(stor4[arg1].field_0)
                idx = 128
                s = 0
                while stor4[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor4[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0 % 128, data=mem[128 len ceil32(stor4[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4[arg1].field_8)
    mem[ceil32(stor4[arg1].field_1 % 128) + 192 len ceil32(stor4[arg1].field_1 % 128)] = mem[128 len ceil32(stor4[arg1].field_1 % 128)]
    if ceil32(stor4[arg1].field_1 % 128) > stor4[arg1].field_1 % 128:
        mem[stor4[arg1].field_1 % 128 + ceil32(stor4[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor4[arg1].field_0 % 128, data=mem[128 len ceil32(stor4[arg1].field_1 % 128)], mem[(2 * ceil32(stor4[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor4[arg1].field_1 % 128)]), 
}

function sub_0de84136(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _32 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_32] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_32 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_32 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _32
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor4.length = mem[96]
    mem[0] = 4
    if not mem[96]:
        idx = 0
        while sha3(4) + stor4.length > idx + sha3(mem[0]):
            if bool(stor[idx + sha3(mem[0])].field_0):
                if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                    revert with 0, 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        _58 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor4.length
        mem[0] = 4
        idx = 0
        s = 0
        t = mem[64] + 64
        u = mem[64] + (32 * stor4.length) + 64
        while idx < stor4.length:
            mem[t] = u + -_58 - 64
            if bool(stor[s + sha3(mem[0])].field_0):
                if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                    revert with 0, 34
                mem[u] = uint255(stor[s + sha3(mem[0])].field_1)
                if not bool(stor[s + sha3(mem[0])].field_0):
                    mem[u + 32] = Mask(248, 8, uint256(stor[s + sha3(mem[0])].field_0))
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    u = u + 64
                    continue 
                if bool(stor[s + sha3(mem[0])].field_0) != 1:
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    u = 0
                    continue 
                mem[0] = s + sha3(mem[0])
                v = 0
                w = sha3(s + sha3(mem[0]))
                while v < uint255(stor[s + sha3(mem[0])].field_1):
                    mem[v + u + 32] = uint256(stor[w].field_0)
                    v = v + 32
                    w = w + 1
                    continue 
            else:
                if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 0, 34
                mem[u] = stor[s + sha3(mem[0])].field_1 % 128
                if not bool(stor[s + sha3(mem[0])].field_0):
                    mem[u + 32] = Mask(248, 8, uint256(stor[s + sha3(mem[0])].field_0))
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    u = u + 64
                    continue 
                if bool(stor[s + sha3(mem[0])].field_0) != 1:
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    u = 0
                    continue 
                mem[0] = s + sha3(mem[0])
                v = 0
                w = sha3(s + sha3(mem[0]))
                while v < stor[s + sha3(mem[0])].field_1 % 128:
                    mem[v + u + 32] = uint256(stor[w].field_0)
                    v = v + 32
                    w = w + 1
                    continue 
            idx = idx + 1
            s = s + 1
            t = t + 32
            u = u + v + 32
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            _56 = mem[idx]
            _57 = mem[mem[idx]]
            if bool(stor[s + sha3(mem[0])].field_0):
                if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                    revert with 0, 34
                mem[0] = s + sha3(mem[0])
                if not _57:
                    uint256(stor[s + sha3(mem[0])].field_0) = 0
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _57) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _56 + 32
                    while _56 + _57 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _57 + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            else:
                if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = s + sha3(mem[0])
                if not _57:
                    uint256(stor[s + sha3(mem[0])].field_0) = 0
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _57) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _56 + 32
                    while _56 + _57 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _57 + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            s = s + 1
            idx = idx + 32
            continue 
        idx = s
        while sha3(4) + stor4.length > idx:
            if bool(stor[idx].field_0):
                if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                    revert with 0, 34
                uint256(stor[idx].field_0) = 0
                if 31 < uint255(stor[idx].field_1):
                    mem[0] = idx
                    s = sha3(idx)
                    while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor[idx].field_0) = 0
                if 31 < stor[idx].field_1 % 128:
                    mem[0] = idx
                    s = sha3(idx)
                    while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        _81 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor4.length
        mem[0] = 4
        idx = 0
        s = 0
        t = mem[64] + 64
        u = mem[64] + (32 * stor4.length) + 64
        while idx < stor4.length:
            mem[t] = u + -_81 - 64
            if bool(stor[s + sha3(mem[0])].field_0):
                if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                    revert with 0, 34
                mem[u] = uint255(stor[s + sha3(mem[0])].field_1)
                if not bool(stor[s + sha3(mem[0])].field_0):
                    mem[u + 32] = Mask(248, 8, uint256(stor[s + sha3(mem[0])].field_0))
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    u = u + 64
                    continue 
                if bool(stor[s + sha3(mem[0])].field_0) != 1:
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    u = 0
                    continue 
                mem[0] = s + sha3(mem[0])
                v = 0
                w = sha3(s + sha3(mem[0]))
                while v < uint255(stor[s + sha3(mem[0])].field_1):
                    mem[v + u + 32] = uint256(stor[w].field_0)
                    v = v + 32
                    w = w + 1
                    continue 
            else:
                if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 0, 34
                mem[u] = stor[s + sha3(mem[0])].field_1 % 128
                if not bool(stor[s + sha3(mem[0])].field_0):
                    mem[u + 32] = Mask(248, 8, uint256(stor[s + sha3(mem[0])].field_0))
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    u = u + 64
                    continue 
                if bool(stor[s + sha3(mem[0])].field_0) != 1:
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    u = 0
                    continue 
                mem[0] = s + sha3(mem[0])
                v = 0
                w = sha3(s + sha3(mem[0]))
                while v < stor[s + sha3(mem[0])].field_1 % 128:
                    mem[v + u + 32] = uint256(stor[w].field_0)
                    v = v + 32
                    w = w + 1
                    continue 
            idx = idx + 1
            s = s + 1
            t = t + 32
            u = u + v + 32
            continue 
    emit 0x3fca7b68: mem[mem[64] len u - mem[64]]
}



}
