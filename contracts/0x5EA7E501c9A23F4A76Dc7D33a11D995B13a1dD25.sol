contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address owner;
uint256 managersCount;
mapping of address sub_3e866bc5;
mapping of uint256 sub_cda205ee;

function sub_3e866bc5(?) payable {
    require calldata.size - 4 >= 32
    return sub_3e866bc5[arg1]
}

function managersCount() payable {
    return managersCount
}

function owner() payable {
    return owner
}

function sub_cda205ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_cda205ee[arg1]
}

function isManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(sub_cda205ee[address(arg1)])
}

function _fallback() payable {
    revert
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_cda205ee[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementList: caller is not a manager'
    if sub_cda205ee[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementList: user is already a manager'
    if managersCount > -2:
        revert with 0, 17
    managersCount++
    sub_3e866bc5[stor2] = arg1
    sub_cda205ee[address(arg1)] = managersCount
}

function removeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_cda205ee[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementList: caller is not a manager'
    if not sub_cda205ee[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementList: non-managers cannot be removed'
    if owner == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagemenetList: owner cannot be removed'
    sub_3e866bc5[stor4[address(arg1)]] = 0
    sub_cda205ee[address(arg1)] = 0
    if managersCount < 1:
        revert with 0, 17
    managersCount--
}

function managersList() payable {
    if managersCount > test266151307():
        revert with 0, 65
    mem[96] = managersCount
    mem[64] = (32 * managersCount) + 128
    if managersCount:
        mem[128 len 32 * managersCount] = call.data[calldata.size len 32 * managersCount]
    idx = 0
    while idx < managersCount:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 3
        if idx >= managersCount:
            revert with 0, 50
        mem[(32 * idx) + 128] = sub_3e866bc5[idx + 1]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * managersCount) + 128] = 32
    mem[(32 * managersCount) + 160] = managersCount
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < managersCount:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * managersCount) + -mem[64] + 192
}

function resetManagers() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementList: caller is not the owner'
    idx = 0
    while idx < managersCount:
        if 2 > !idx:
            revert with 0, 17
        if not sub_cda205ee[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementList: caller is not a manager'
        if not sub_cda205ee[stor3[idx + 2]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementList: non-managers cannot be removed'
        if owner == sub_3e866bc5[idx + 2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagemenetList: owner cannot be removed'
        sub_3e866bc5[stor4[sub_3e866bc5[idx + 2]]] = 0
        mem[0] = sub_3e866bc5[idx + 2]
        mem[32] = 4
        sub_cda205ee[stor3[idx + 2]] = 0
        if managersCount < 1:
            revert with 0, 17
        managersCount--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}



}
