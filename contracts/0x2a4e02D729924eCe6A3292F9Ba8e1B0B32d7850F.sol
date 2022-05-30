contract main {




// =====================  Runtime code  =====================


#
#  - sub_5f9fe885(?)
#
mapping of struct stor0;
mapping of struct stor1;
mapping of struct stor2;
mapping of struct stor3;
array of address updates;

function sub_8d179b86(?) payable {
    return updates.length
}

function updates(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < updates.length
    return updates[arg1]
}

function _fallback() payable {
    revert
}

function getBio(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[address(arg1)].field_0:
        if stor3[address(arg1)].field_0 == uint255(stor3[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor3[address(arg1)].field_0:
            if stor3[address(arg1)].field_0 == uint255(stor3[address(arg1)].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3[address(arg1)].field_0):
                if 31 < uint255(stor3[address(arg1)].field_0) * 0.5:
                    mem[128] = stor3[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor3[address(arg1)].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)]), 
                mem[128] = 256 * stor3[address(arg1)].field_8
        else:
            if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor3[address(arg1)].field_1:
                if 31 < stor3[address(arg1)].field_1:
                    mem[128] = stor3[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor3[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)]), 
                mem[128] = 256 * stor3[address(arg1)].field_8
        mem[ceil32(uint255(stor3[address(arg1)].field_0) * 0.5) + 192 len ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)]
        if ceil32(uint255(stor3[address(arg1)].field_0) * 0.5) > uint255(stor3[address(arg1)].field_0) * 0.5:
            mem[ceil32(uint255(stor3[address(arg1)].field_0) * 0.5) + (uint255(stor3[address(arg1)].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)]), 
    if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
        revert with 0, 34
    if stor3[address(arg1)].field_0:
        if stor3[address(arg1)].field_0 == uint255(stor3[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3[address(arg1)].field_0):
            if 31 < uint255(stor3[address(arg1)].field_0) * 0.5:
                mem[128] = stor3[address(arg1)].field_0
                idx = 128
                s = 0
                while (uint255(stor3[address(arg1)].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[address(arg1)].field_0, data=mem[128 len ceil32(stor3[address(arg1)].field_1)])
            mem[128] = 256 * stor3[address(arg1)].field_8
    else:
        if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)].field_1:
            if 31 < stor3[address(arg1)].field_1:
                mem[128] = stor3[address(arg1)].field_0
                idx = 128
                s = 0
                while stor3[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[address(arg1)].field_0, data=mem[128 len ceil32(stor3[address(arg1)].field_1)])
            mem[128] = 256 * stor3[address(arg1)].field_8
    mem[ceil32(stor3[address(arg1)].field_1) + 192 len ceil32(stor3[address(arg1)].field_1)] = mem[128 len ceil32(stor3[address(arg1)].field_1)]
    if ceil32(stor3[address(arg1)].field_1) > stor3[address(arg1)].field_1:
        mem[ceil32(stor3[address(arg1)].field_1) + stor3[address(arg1)].field_1 + 192] = 0
    return Array(len=stor3[address(arg1)].field_0, data=mem[128 len ceil32(stor3[address(arg1)].field_1)], mem[(2 * ceil32(stor3[address(arg1)].field_1)) + 192 len 2 * ceil32(stor3[address(arg1)].field_1)]), 
}

function getName(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)].field_0:
        if stor2[address(arg1)].field_0 == uint255(stor2[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor2[address(arg1)].field_0:
            if stor2[address(arg1)].field_0 == uint255(stor2[address(arg1)].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2[address(arg1)].field_0):
                if 31 < uint255(stor2[address(arg1)].field_0) * 0.5:
                    mem[128] = stor2[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor2[address(arg1)].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_0) * 0.5)]), 
                mem[128] = 256 * stor2[address(arg1)].field_8
        else:
            if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor2[address(arg1)].field_1:
                if 31 < stor2[address(arg1)].field_1:
                    mem[128] = stor2[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_0) * 0.5)]), 
                mem[128] = 256 * stor2[address(arg1)].field_8
        mem[ceil32(uint255(stor2[address(arg1)].field_0) * 0.5) + 192 len ceil32(uint255(stor2[address(arg1)].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor2[address(arg1)].field_0) * 0.5)]
        if ceil32(uint255(stor2[address(arg1)].field_0) * 0.5) > uint255(stor2[address(arg1)].field_0) * 0.5:
            mem[ceil32(uint255(stor2[address(arg1)].field_0) * 0.5) + (uint255(stor2[address(arg1)].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor2[address(arg1)].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor2[address(arg1)].field_0) * 0.5)]), 
    if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
        revert with 0, 34
    if stor2[address(arg1)].field_0:
        if stor2[address(arg1)].field_0 == uint255(stor2[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2[address(arg1)].field_0):
            if 31 < uint255(stor2[address(arg1)].field_0) * 0.5:
                mem[128] = stor2[address(arg1)].field_0
                idx = 128
                s = 0
                while (uint255(stor2[address(arg1)].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[address(arg1)].field_0, data=mem[128 len ceil32(stor2[address(arg1)].field_1)])
            mem[128] = 256 * stor2[address(arg1)].field_8
    else:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor2[address(arg1)].field_1:
            if 31 < stor2[address(arg1)].field_1:
                mem[128] = stor2[address(arg1)].field_0
                idx = 128
                s = 0
                while stor2[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor2[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[address(arg1)].field_0, data=mem[128 len ceil32(stor2[address(arg1)].field_1)])
            mem[128] = 256 * stor2[address(arg1)].field_8
    mem[ceil32(stor2[address(arg1)].field_1) + 192 len ceil32(stor2[address(arg1)].field_1)] = mem[128 len ceil32(stor2[address(arg1)].field_1)]
    if ceil32(stor2[address(arg1)].field_1) > stor2[address(arg1)].field_1:
        mem[ceil32(stor2[address(arg1)].field_1) + stor2[address(arg1)].field_1 + 192] = 0
    return Array(len=stor2[address(arg1)].field_0, data=mem[128 len ceil32(stor2[address(arg1)].field_1)], mem[(2 * ceil32(stor2[address(arg1)].field_1)) + 192 len 2 * ceil32(stor2[address(arg1)].field_1)]), 
}

function sub_16356464(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1[address(arg1)].field_0:
        if stor1[address(arg1)].field_0 == uint255(stor1[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor1[address(arg1)].field_0:
            if stor1[address(arg1)].field_0 == uint255(stor1[address(arg1)].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1[address(arg1)].field_0):
                if 31 < uint255(stor1[address(arg1)].field_0) * 0.5:
                    mem[128] = stor1[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor1[address(arg1)].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor1[address(arg1)].field_0) * 0.5)]), 
                mem[128] = 256 * stor1[address(arg1)].field_8
        else:
            if stor1[address(arg1)].field_0 == stor1[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor1[address(arg1)].field_1:
                if 31 < stor1[address(arg1)].field_1:
                    mem[128] = stor1[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor1[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor1[address(arg1)].field_0) * 0.5)]), 
                mem[128] = 256 * stor1[address(arg1)].field_8
        mem[ceil32(uint255(stor1[address(arg1)].field_0) * 0.5) + 192 len ceil32(uint255(stor1[address(arg1)].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor1[address(arg1)].field_0) * 0.5)]
        if ceil32(uint255(stor1[address(arg1)].field_0) * 0.5) > uint255(stor1[address(arg1)].field_0) * 0.5:
            mem[ceil32(uint255(stor1[address(arg1)].field_0) * 0.5) + (uint255(stor1[address(arg1)].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor1[address(arg1)].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor1[address(arg1)].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor1[address(arg1)].field_0) * 0.5)]), 
    if stor1[address(arg1)].field_0 == stor1[address(arg1)].field_1 < 32:
        revert with 0, 34
    if stor1[address(arg1)].field_0:
        if stor1[address(arg1)].field_0 == uint255(stor1[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1[address(arg1)].field_0):
            if 31 < uint255(stor1[address(arg1)].field_0) * 0.5:
                mem[128] = stor1[address(arg1)].field_0
                idx = 128
                s = 0
                while (uint255(stor1[address(arg1)].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[address(arg1)].field_0, data=mem[128 len ceil32(stor1[address(arg1)].field_1)])
            mem[128] = 256 * stor1[address(arg1)].field_8
    else:
        if stor1[address(arg1)].field_0 == stor1[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor1[address(arg1)].field_1:
            if 31 < stor1[address(arg1)].field_1:
                mem[128] = stor1[address(arg1)].field_0
                idx = 128
                s = 0
                while stor1[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[address(arg1)].field_0, data=mem[128 len ceil32(stor1[address(arg1)].field_1)])
            mem[128] = 256 * stor1[address(arg1)].field_8
    mem[ceil32(stor1[address(arg1)].field_1) + 192 len ceil32(stor1[address(arg1)].field_1)] = mem[128 len ceil32(stor1[address(arg1)].field_1)]
    if ceil32(stor1[address(arg1)].field_1) > stor1[address(arg1)].field_1:
        mem[ceil32(stor1[address(arg1)].field_1) + stor1[address(arg1)].field_1 + 192] = 0
    return Array(len=stor1[address(arg1)].field_0, data=mem[128 len ceil32(stor1[address(arg1)].field_1)], mem[(2 * ceil32(stor1[address(arg1)].field_1)) + 192 len 2 * ceil32(stor1[address(arg1)].field_1)]), 
}

function getIPFSHash(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[address(arg1)].field_0:
        if stor0[address(arg1)].field_0 == uint255(stor0[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor0[address(arg1)].field_0:
            if stor0[address(arg1)].field_0 == uint255(stor0[address(arg1)].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0[address(arg1)].field_0):
                if 31 < uint255(stor0[address(arg1)].field_0) * 0.5:
                    mem[128] = stor0[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor0[address(arg1)].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor0[address(arg1)].field_0) * 0.5)]), 
                mem[128] = 256 * stor0[address(arg1)].field_8
        else:
            if stor0[address(arg1)].field_0 == stor0[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor0[address(arg1)].field_1:
                if 31 < stor0[address(arg1)].field_1:
                    mem[128] = stor0[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor0[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor0[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor0[address(arg1)].field_0) * 0.5)]), 
                mem[128] = 256 * stor0[address(arg1)].field_8
        mem[ceil32(uint255(stor0[address(arg1)].field_0) * 0.5) + 192 len ceil32(uint255(stor0[address(arg1)].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor0[address(arg1)].field_0) * 0.5)]
        if ceil32(uint255(stor0[address(arg1)].field_0) * 0.5) > uint255(stor0[address(arg1)].field_0) * 0.5:
            mem[ceil32(uint255(stor0[address(arg1)].field_0) * 0.5) + (uint255(stor0[address(arg1)].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor0[address(arg1)].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor0[address(arg1)].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor0[address(arg1)].field_0) * 0.5)]), 
    if stor0[address(arg1)].field_0 == stor0[address(arg1)].field_1 < 32:
        revert with 0, 34
    if stor0[address(arg1)].field_0:
        if stor0[address(arg1)].field_0 == uint255(stor0[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0[address(arg1)].field_0):
            if 31 < uint255(stor0[address(arg1)].field_0) * 0.5:
                mem[128] = stor0[address(arg1)].field_0
                idx = 128
                s = 0
                while (uint255(stor0[address(arg1)].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0[address(arg1)].field_0, data=mem[128 len ceil32(stor0[address(arg1)].field_1)])
            mem[128] = 256 * stor0[address(arg1)].field_8
    else:
        if stor0[address(arg1)].field_0 == stor0[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor0[address(arg1)].field_1:
            if 31 < stor0[address(arg1)].field_1:
                mem[128] = stor0[address(arg1)].field_0
                idx = 128
                s = 0
                while stor0[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor0[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0[address(arg1)].field_0, data=mem[128 len ceil32(stor0[address(arg1)].field_1)])
            mem[128] = 256 * stor0[address(arg1)].field_8
    mem[ceil32(stor0[address(arg1)].field_1) + 192 len ceil32(stor0[address(arg1)].field_1)] = mem[128 len ceil32(stor0[address(arg1)].field_1)]
    if ceil32(stor0[address(arg1)].field_1) > stor0[address(arg1)].field_1:
        mem[ceil32(stor0[address(arg1)].field_1) + stor0[address(arg1)].field_1 + 192] = 0
    return Array(len=stor0[address(arg1)].field_0, data=mem[128 len ceil32(stor0[address(arg1)].field_1)], mem[(2 * ceil32(stor0[address(arg1)].field_1)) + 192 len 2 * ceil32(stor0[address(arg1)].field_1)]), 
}



}
