contract main {




// =====================  Runtime code  =====================


#
#  - sub_a0157005(?)
#
uint256 cost;
mapping of struct stor1;

function cost() payable {
    return cost
}

function _fallback() payable {
    revert
}

function sub_35a1223a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 3:
        return 'Noob', 0
    if arg1 <= 5:
        return 'Trainee', 0
    if arg1 <= 10:
        return 'Rookie', 0
    if arg1 <= 20:
        return 'Master', 0
    if arg1 <= 30:
        return 'Grandmaster', 0
    if arg1 > 40:
        return 'Hero', 0
    return 'Legend', 0
}

function sub_ff05b7bb(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Names: not owner'
    if stor1[cd[4]].field_0:
        if stor1[cd[4]].field_0 == stor1[cd[4]].field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 36).length:
            stor1[cd[4]].field_0 = 0
            idx = 0
            while stor1[cd[4]].field_1 + 31 / 32 > idx:
                stor1[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor1[cd[4]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor1[cd[4]].field_1 + 31 / 32 > idx:
                stor1[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[cd[4]].field_0 == stor1[cd[4]].field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 36).length:
            stor1[cd[4]].field_0 = 0
            idx = 0
            while stor1[cd[4]].field_1 + 31 / 32 > idx:
                stor1[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor1[cd[4]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor1[cd[4]].field_1 + 31 / 32 > idx:
                stor1[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_2495b5fc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[arg1].field_0:
            if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor1[arg1].field_1:
                if 31 < stor1[arg1].field_1:
                    mem[128] = stor1[arg1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[arg1].field_1), data=mem[128 len ceil32(stor1[arg1].field_1)])
                mem[128] = 256 * stor1[arg1].field_8
        else:
            if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor1[arg1].field_1:
                if 31 < stor1[arg1].field_1:
                    mem[128] = stor1[arg1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[arg1].field_1), data=mem[128 len ceil32(stor1[arg1].field_1)])
                mem[128] = 256 * stor1[arg1].field_8
        mem[ceil32(stor1[arg1].field_1) + 192 len ceil32(stor1[arg1].field_1)] = mem[128 len ceil32(stor1[arg1].field_1)]
        if ceil32(stor1[arg1].field_1) > stor1[arg1].field_1:
            mem[ceil32(stor1[arg1].field_1) + stor1[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1[arg1].field_1), data=mem[128 len ceil32(stor1[arg1].field_1)], mem[(2 * ceil32(stor1[arg1].field_1)) + 192 len 2 * ceil32(stor1[arg1].field_1)]), 
    if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[arg1].field_1:
            if 31 < stor1[arg1].field_1:
                mem[128] = stor1[arg1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)])
            mem[128] = 256 * stor1[arg1].field_8
    else:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[arg1].field_1:
            if 31 < stor1[arg1].field_1:
                mem[128] = stor1[arg1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)])
            mem[128] = 256 * stor1[arg1].field_8
    mem[ceil32(stor1[arg1].field_1) + 192 len ceil32(stor1[arg1].field_1)] = mem[128 len ceil32(stor1[arg1].field_1)]
    if ceil32(stor1[arg1].field_1) > stor1[arg1].field_1:
        mem[ceil32(stor1[arg1].field_1) + stor1[arg1].field_1 + 192] = 0
    return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)], mem[(2 * ceil32(stor1[arg1].field_1)) + 192 len 2 * ceil32(stor1[arg1].field_1)]), 
}

function summoner_name(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[arg1].field_0:
            if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor1[arg1].field_1:
                if 31 < stor1[arg1].field_1:
                    mem[128] = stor1[arg1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[arg1].field_1), data=mem[128 len ceil32(stor1[arg1].field_1)])
                mem[128] = 256 * stor1[arg1].field_8
        else:
            if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor1[arg1].field_1:
                if 31 < stor1[arg1].field_1:
                    mem[128] = stor1[arg1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[arg1].field_1), data=mem[128 len ceil32(stor1[arg1].field_1)])
                mem[128] = 256 * stor1[arg1].field_8
        mem[ceil32(stor1[arg1].field_1) + 192 len ceil32(stor1[arg1].field_1)] = mem[128 len ceil32(stor1[arg1].field_1)]
        if ceil32(stor1[arg1].field_1) > stor1[arg1].field_1:
            mem[ceil32(stor1[arg1].field_1) + stor1[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1[arg1].field_1), data=mem[128 len ceil32(stor1[arg1].field_1)], mem[(2 * ceil32(stor1[arg1].field_1)) + 192 len 2 * ceil32(stor1[arg1].field_1)]), 
    if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[arg1].field_1:
            if 31 < stor1[arg1].field_1:
                mem[128] = stor1[arg1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)])
            mem[128] = 256 * stor1[arg1].field_8
    else:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[arg1].field_1:
            if 31 < stor1[arg1].field_1:
                mem[128] = stor1[arg1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)])
            mem[128] = 256 * stor1[arg1].field_8
    mem[ceil32(stor1[arg1].field_1) + 192 len ceil32(stor1[arg1].field_1)] = mem[128 len ceil32(stor1[arg1].field_1)]
    if ceil32(stor1[arg1].field_1) > stor1[arg1].field_1:
        mem[ceil32(stor1[arg1].field_1) + stor1[arg1].field_1 + 192] = 0
    return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)], mem[(2 * ceil32(stor1[arg1].field_1)) + 192 len 2 * ceil32(stor1[arg1].field_1)]), 
}



}
