contract main {




// =====================  Runtime code  =====================


#
#  - userChainAddressById(uint256 arg1)
#
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of struct stor4;
mapping of struct stor5;
mapping of uint256 sub_3ed084c4;
mapping of uint8 stor7;
uint256 totalUsers;
uint256 totalBalance;
mapping of uint256 balance;

function shareById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balance[arg1]
}

function canAdd(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function totalShares() payable {
    return totalBalance
}

function sub_3ed084c4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor7[arg1[all]][arg2[all]]:
        revert with 0, 'user is not known'
    return sub_3ed084c4[arg1[all]][arg2[all]]
}

function balance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balance[arg1]
}

function canSubtract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function owner() payable {
    return owner
}

function canOpen(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function totalBalance() payable {
    return totalBalance
}

function totalUsers() payable {
    return totalUsers
}

function sub_f91c1e50(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    return bool(stor7[arg1[all]][arg2[all]])
}

function _fallback() payable {
    revert
}

function isKnownUser(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 < totalUsers)
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setCanAdd(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor1[address(arg1)] = uint8(arg2)
    emit SetCanAdd(msg.sender, arg1, bool(stor1[address(arg1)]));
}

function setCanOpen(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor3[address(arg1)] = uint8(arg2)
    emit SetCanOpen(msg.sender, arg1, bool(stor3[address(arg1)]));
}

function setCanSubtract(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2[address(arg1)] = uint8(arg2)
    emit SetCanSubtract(msg.sender, arg1, bool(stor2[address(arg1)]));
}

function add(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, 'not allowed to add'
    if arg1 >= totalUsers:
        revert with 0, 'user is not known'
    if balance[arg1] > -arg2 - 1:
        revert with 'NH{q', 17
    balance[arg1] += arg2
    if totalBalance > -arg2 - 1:
        revert with 'NH{q', 17
    totalBalance += arg2
    emit Add(arg2, msg.sender, arg1);
}

function subtract(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor2[address(msg.sender)]:
        revert with 0, 'not allowed to subtract'
    if arg1 >= totalUsers:
        revert with 0, 'user is not known'
    if balance[arg1] < arg2:
        revert with 'NH{q', 17
    balance[arg1] -= arg2
    if totalBalance < arg2:
        revert with 'NH{q', 17
    totalBalance -= arg2
    emit Subtract(arg2, msg.sender, arg1);
}

function sub_3777d65a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor7[arg1[all]][arg2[all]]:
        return balance[stor6[arg1[all]][arg2[all]]]
    else:
        return 0
}

function sub_22bde2bb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if not stor2[address(msg.sender)]:
        revert with 0, 'not allowed to subtract'
    if not stor7[arg1[all]][arg2[all]]:
        revert with 0, 'user is not known'
    if balance[stor6[arg1[all]][arg2[all]]] < arg3:
        revert with 'NH{q', 17
    balance[stor6[arg1[all]][arg2[all]]] -= arg3
    if totalBalance < arg3:
        revert with 'NH{q', 17
    totalBalance -= arg3
    emit Subtract(arg3, msg.sender, sub_3ed084c4[arg1[all]][arg2[all]]);
}

function sub_7ec8269e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, 'not allowed to add'
    if not stor7[arg1[all]][arg2[all]]:
        revert with 0, 'user is not known'
    if balance[stor6[arg1[all]][arg2[all]]] > -arg3 - 1:
        revert with 'NH{q', 17
    balance[stor6[arg1[all]][arg2[all]]] += arg3
    if totalBalance > -arg3 - 1:
        revert with 'NH{q', 17
    totalBalance += arg3
    emit Add(arg3, msg.sender, sub_3ed084c4[arg1[all]][arg2[all]]);
}

function userChainById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= totalUsers:
        revert with 0, 'user is not known'
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_0:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_1:
                if 31 < stor4[arg1].field_1:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)])
                mem[128] = 256 * stor4[arg1].field_8
        else:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_1:
                if 31 < stor4[arg1].field_1:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)])
                mem[128] = 256 * stor4[arg1].field_8
        mem[ceil32(stor4[arg1].field_1) + 192 len ceil32(stor4[arg1].field_1)] = mem[128 len ceil32(stor4[arg1].field_1)]
        if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
            mem[ceil32(stor4[arg1].field_1) + stor4[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)], mem[(2 * ceil32(stor4[arg1].field_1)) + 192 len 2 * ceil32(stor4[arg1].field_1)]), 
    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_1:
            if 31 < stor4[arg1].field_1:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    else:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_1:
            if 31 < stor4[arg1].field_1:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    mem[ceil32(stor4[arg1].field_1) + 192 len ceil32(stor4[arg1].field_1)] = mem[128 len ceil32(stor4[arg1].field_1)]
    if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
        mem[ceil32(stor4[arg1].field_1) + stor4[arg1].field_1 + 192] = 0
    return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)], mem[(2 * ceil32(stor4[arg1].field_1)) + 192 len 2 * ceil32(stor4[arg1].field_1)]), 
}

function userAddressById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= totalUsers:
        revert with 0, 'user is not known'
    if stor5[arg1].field_0:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_0:
            if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor5[arg1].field_1:
                if 31 < stor5[arg1].field_1:
                    mem[128] = stor5[arg1].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5[arg1].field_1), data=mem[128 len ceil32(stor5[arg1].field_1)])
                mem[128] = 256 * stor5[arg1].field_8
        else:
            if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor5[arg1].field_1:
                if 31 < stor5[arg1].field_1:
                    mem[128] = stor5[arg1].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5[arg1].field_1), data=mem[128 len ceil32(stor5[arg1].field_1)])
                mem[128] = 256 * stor5[arg1].field_8
        mem[ceil32(stor5[arg1].field_1) + 192 len ceil32(stor5[arg1].field_1)] = mem[128 len ceil32(stor5[arg1].field_1)]
        if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
            mem[ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5[arg1].field_1), data=mem[128 len ceil32(stor5[arg1].field_1)], mem[(2 * ceil32(stor5[arg1].field_1)) + 192 len 2 * ceil32(stor5[arg1].field_1)]), 
    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor5[arg1].field_0:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_1:
            if 31 < stor5[arg1].field_1:
                mem[128] = stor5[arg1].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1].field_0, data=mem[128 len ceil32(stor5[arg1].field_1)])
            mem[128] = 256 * stor5[arg1].field_8
    else:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_1:
            if 31 < stor5[arg1].field_1:
                mem[128] = stor5[arg1].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1].field_0, data=mem[128 len ceil32(stor5[arg1].field_1)])
            mem[128] = 256 * stor5[arg1].field_8
    mem[ceil32(stor5[arg1].field_1) + 192 len ceil32(stor5[arg1].field_1)] = mem[128 len ceil32(stor5[arg1].field_1)]
    if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
        mem[ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 192] = 0
    return Array(len=stor5[arg1].field_0, data=mem[128 len ceil32(stor5[arg1].field_1)], mem[(2 * ceil32(stor5[arg1].field_1)) + 192 len 2 * ceil32(stor5[arg1].field_1)]), 
}

function sub_d41ebce1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if not stor3[address(msg.sender)]:
        revert with 0, 'not allowed to open'
    if not stor7[call.data[cd[4] + 36 len ('cd', 4).length]][call.data[cd[36] + 36 len ('cd', 36).length]]:
        if stor4[stor8].field_0:
            if stor4[stor8].field_0 == stor4[stor8].field_1 < 32:
                revert with 'NH{q', 34
            if not ('cd', 4).length:
                stor4[stor8].field_0 = 0
                idx = 0
                while stor4[stor8].field_1 + 31 / 32 > idx:
                    stor4[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor4[stor8].field_0 = (2 * ('cd', 4).length) + 1
                s = 0
                idx = cd[4] + 36
                while cd[4] + ('cd', 4).length + 36 > idx:
                    stor4[stor8][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
                while stor4[stor8].field_1 + 31 / 32 > idx:
                    stor4[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor4[stor8].field_0 == stor4[stor8].field_1 < 32:
                revert with 'NH{q', 34
            if not ('cd', 4).length:
                stor4[stor8].field_0 = 0
                idx = 0
                while stor4[stor8].field_1 + 31 / 32 > idx:
                    stor4[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor4[stor8].field_0 = (2 * ('cd', 4).length) + 1
                s = 0
                idx = cd[4] + 36
                while cd[4] + ('cd', 4).length + 36 > idx:
                    stor4[stor8][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
                while stor4[stor8].field_1 + 31 / 32 > idx:
                    stor4[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        if stor5[stor8].field_0:
            if stor5[stor8].field_0 == stor5[stor8].field_1 < 32:
                revert with 'NH{q', 34
            if not ('cd', 36).length:
                stor5[stor8].field_0 = 0
                idx = 0
                while stor5[stor8].field_1 + 31 / 32 > idx:
                    stor5[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor5[stor8].field_0 = (2 * ('cd', 36).length) + 1
                s = 0
                idx = cd[36] + 36
                while cd[36] + ('cd', 36).length + 36 > idx:
                    stor5[stor8][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                while stor5[stor8].field_1 + 31 / 32 > idx:
                    stor5[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor5[stor8].field_0 == stor5[stor8].field_1 < 32:
                revert with 'NH{q', 34
            if not ('cd', 36).length:
                stor5[stor8].field_0 = 0
                idx = 0
                while stor5[stor8].field_1 + 31 / 32 > idx:
                    stor5[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor5[stor8].field_0 = (2 * ('cd', 36).length) + 1
                s = 0
                idx = cd[36] + 36
                while cd[36] + ('cd', 36).length + 36 > idx:
                    stor5[stor8][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                while stor5[stor8].field_1 + 31 / 32 > idx:
                    stor5[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        sub_3ed084c4[call.data[cd[4] + 36 len ('cd', 4).length]][call.data[cd[36] + 36 len ('cd', 36).length]] = totalUsers
        stor7[call.data[cd[4] + 36 len ('cd', 4).length]][call.data[cd[36] + 36 len ('cd', 36).length]] = 1
        if totalUsers == -1:
            revert with 'NH{q', 17
        totalUsers++
}



}
