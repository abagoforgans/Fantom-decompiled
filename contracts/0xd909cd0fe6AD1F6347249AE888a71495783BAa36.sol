contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
uint256 roundCount;
array of uint256 stor3;
mapping of struct stor4;
array of struct stor5;
array of uint256 votesForOption;
mapping of uint256 votesInRoundByUser;
array of uint256 votesForOptionByUser;
mapping of uint8 stor9;

function votesForOptionByUser(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 >= votesForOptionByUser[arg1][address(arg2)]:
        revert with 'NH{q', 50
    return votesForOptionByUser[arg1][address(arg2)][arg3]
}

function roundCount() payable {
    return roundCount
}

function sub_200f0ecc(?) payable {
    return stor3.length
}

function sub_2e79cc08(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor9[arg1]))
}

function votesInRoundByUser(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return votesInRoundByUser[arg1][address(arg2)]
}

function votesForOption(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= votesForOption[arg1]:
        revert with 'NH{q', 50
    return votesForOption[arg1][arg2]
}

function owner() payable {
    return owner
}

function balanceKeeper() payable {
    return address(stor1.length)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function sub_59e99422(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor9[address(arg1)]) = not bool(uint8(stor9[address(arg1)])) or Mask(248, 8, uint256(stor9[address(arg1)]))
}

function finalizeRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if stor3.length < 1:
        revert with 'NH{q', 17
    if stor3.length - 1 > test266151307():
        revert with 'NH{q', 65
    if stor3.length - 1:
        mem[128 len 32 * stor3.length - 1] = call.data[calldata.size len 32 * stor3.length - 1]
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] != arg1:
            if idx >= stor3.length:
                revert with 'NH{q', 50
            mem[0] = 3
            if 0 >= stor3.length - 1:
                revert with 'NH{q', 50
            mem[128] = stor3[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor3.length--
    if not stor3.length - 1:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * stor3.length - 1) + 128 > idx:
            stor3[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor3.length - 1) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
}

function votesInRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < votesForOption[arg1]:
        if idx >= votesForOption[arg1]:
            revert with 'NH{q', 50
        if s > -votesForOption[arg1][idx] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        s = s + votesForOption[arg1][idx]
        continue 
    return (s * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1])
}

function sub_bc35784b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not uint8(stor9[address(msg.sender)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender is not allowed to check balances'
    idx = 0
    while idx < stor3.length:
        mem[0] = address(arg1)
        mem[32] = sha3(stor3[idx], 7)
        if arg2 <= votesInRoundByUser[stor3[idx]][address(arg1)]:
            mem[0] = address(arg1)
            mem[32] = sha3(stor3[idx], 7)
            if votesInRoundByUser[stor3[idx]][address(arg1)]:
                s = 0
                t = 0
                while s < votesForOptionByUser[stor3[idx]][address(arg1)]:
                    if votesForOptionByUser[stor3[idx]][address(arg1)][s] and arg2 > -1 / votesForOptionByUser[stor3[idx]][address(arg1)][s]:
                        revert with 'NH{q', 17
                    if not votesInRoundByUser[stor3[idx]][address(arg1)]:
                        revert with 'NH{q', 18
                    if votesForOptionByUser[stor3[idx]][address(arg1)][s] < votesForOptionByUser[stor3[idx]][address(arg1)][s] * arg2 / votesInRoundByUser[stor3[idx]][address(arg1)]:
                        revert with 'NH{q', 17
                    if s >= votesForOption[stor3[idx]]:
                        revert with 'NH{q', 50
                    if votesForOption[stor3[idx]][s] < votesForOptionByUser[stor3[idx]][address(arg1)][s] - (votesForOptionByUser[stor3[idx]][address(arg1)][s] * arg2 / votesInRoundByUser[stor3[idx]][address(arg1)]):
                        revert with 'NH{q', 17
                    votesForOption[stor3[idx]][s] = votesForOption[stor3[idx]][s] - votesForOptionByUser[stor3[idx]][address(arg1)][s] + (votesForOptionByUser[stor3[idx]][address(arg1)][s] * arg2 / votesInRoundByUser[stor3[idx]][address(arg1)])
                    mem[32] = sha3(stor3[idx], 8)
                    if s >= votesForOptionByUser[stor3[idx]][address(arg1)]:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), sha3(stor3[idx], 8))
                    votesForOptionByUser[stor3[idx]][address(arg1)][s] = votesForOptionByUser[stor3[idx]][address(arg1)][s] * arg2 / votesInRoundByUser[stor3[idx]][address(arg1)]
                    if t > -(votesForOptionByUser[stor3[idx]][address(arg1)][s] * arg2 / votesInRoundByUser[stor3[idx]][address(arg1)]) - 1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + (votesForOptionByUser[stor3[idx]][address(arg1)][s] * arg2 / votesInRoundByUser[stor3[idx]][address(arg1)])
                    continue 
                mem[0] = address(arg1)
                mem[32] = sha3(stor3[idx], 7)
                votesInRoundByUser[stor3[idx]][address(arg1)] = t * votesForOptionByUser[stor3[idx]][address(arg1)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function roundName(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor4[arg1].field_0):
        if bool(stor4[arg1].field_0) == uint255(stor4[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor4[arg1].field_0):
            if bool(stor4[arg1].field_0) == uint255(stor4[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor4[arg1].field_1):
                if 31 < uint255(stor4[arg1].field_1):
                    mem[128] = uint256(stor4[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor4[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor4[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor4[arg1].field_1)), data=mem[128 len ceil32(uint255(stor4[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor4[arg1].field_8)
        else:
            if bool(stor4[arg1].field_0) == stor4[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_1 % 128:
                if 31 < stor4[arg1].field_1 % 128:
                    mem[128] = uint256(stor4[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor4[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor4[arg1].field_1)), data=mem[128 len ceil32(uint255(stor4[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor4[arg1].field_8)
        mem[ceil32(uint255(stor4[arg1].field_1)) + 192 len ceil32(uint255(stor4[arg1].field_1))] = mem[128 len ceil32(uint255(stor4[arg1].field_1))]
        if ceil32(uint255(stor4[arg1].field_1)) > uint255(stor4[arg1].field_1):
            mem[ceil32(uint255(stor4[arg1].field_1)) + uint255(stor4[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor4[arg1].field_1)), data=mem[128 len ceil32(uint255(stor4[arg1].field_1))], mem[(2 * ceil32(uint255(stor4[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor4[arg1].field_1))]), 
    if bool(stor4[arg1].field_0) == stor4[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor4[arg1].field_0):
        if bool(stor4[arg1].field_0) == uint255(stor4[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor4[arg1].field_1):
            if 31 < uint255(stor4[arg1].field_1):
                mem[128] = uint256(stor4[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor4[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor4[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0 % 128, data=mem[128 len ceil32(stor4[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4[arg1].field_8)
    else:
        if bool(stor4[arg1].field_0) == stor4[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_1 % 128:
            if 31 < stor4[arg1].field_1 % 128:
                mem[128] = uint256(stor4[arg1].field_0)
                idx = 128
                s = 0
                while stor4[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor4[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0 % 128, data=mem[128 len ceil32(stor4[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4[arg1].field_8)
    mem[ceil32(stor4[arg1].field_1 % 128) + 192 len ceil32(stor4[arg1].field_1 % 128)] = mem[128 len ceil32(stor4[arg1].field_1 % 128)]
    if ceil32(stor4[arg1].field_1 % 128) > stor4[arg1].field_1 % 128:
        mem[ceil32(stor4[arg1].field_1 % 128) + stor4[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor4[arg1].field_0 % 128, data=mem[128 len ceil32(stor4[arg1].field_1 % 128)], mem[(2 * ceil32(stor4[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor4[arg1].field_1 % 128)]), 
}

function roundOptions(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= uint256(stor5[arg1].field_0):
        revert with 'NH{q', 50
    if bool(stor5[arg1][arg2].field_0):
        if bool(stor5[arg1][arg2].field_0) == uint255(stor5[arg1][arg2].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor5[arg1][arg2].field_0):
            if bool(stor5[arg1][arg2].field_0) == uint255(stor5[arg1][arg2].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor5[arg1][arg2].field_1):
                if 31 < uint255(stor5[arg1][arg2].field_1):
                    mem[128] = uint256(stor5[arg1][arg2].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor5[arg1][arg2].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor5[arg1][arg2 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor5[arg1][arg2].field_1)), data=mem[128 len ceil32(uint255(stor5[arg1][arg2].field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor5[arg1][arg2].field_8)
        else:
            if bool(stor5[arg1][arg2].field_0) == stor5[arg1][arg2].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor5[arg1][arg2].field_1 % 128:
                if 31 < stor5[arg1][arg2].field_1 % 128:
                    mem[128] = uint256(stor5[arg1][arg2].field_0)
                    idx = 128
                    s = 0
                    while stor5[arg1][arg2].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor5[arg1][arg2 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor5[arg1][arg2].field_1)), data=mem[128 len ceil32(uint255(stor5[arg1][arg2].field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor5[arg1][arg2].field_8)
        mem[ceil32(uint255(stor5[arg1][arg2].field_1)) + 192 len ceil32(uint255(stor5[arg1][arg2].field_1))] = mem[128 len ceil32(uint255(stor5[arg1][arg2].field_1))]
        if ceil32(uint255(stor5[arg1][arg2].field_1)) > uint255(stor5[arg1][arg2].field_1):
            mem[ceil32(uint255(stor5[arg1][arg2].field_1)) + uint255(stor5[arg1][arg2].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor5[arg1][arg2].field_1)), data=mem[128 len ceil32(uint255(stor5[arg1][arg2].field_1))], mem[(2 * ceil32(uint255(stor5[arg1][arg2].field_1))) + 192 len 2 * ceil32(uint255(stor5[arg1][arg2].field_1))]), 
    if bool(stor5[arg1][arg2].field_0) == stor5[arg1][arg2].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor5[arg1][arg2].field_0):
        if bool(stor5[arg1][arg2].field_0) == uint255(stor5[arg1][arg2].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor5[arg1][arg2].field_1):
            if 31 < uint255(stor5[arg1][arg2].field_1):
                mem[128] = uint256(stor5[arg1][arg2].field_0)
                idx = 128
                s = 0
                while uint255(stor5[arg1][arg2].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor5[arg1][arg2 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(stor5[arg1][arg2].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5[arg1][arg2].field_8)
    else:
        if bool(stor5[arg1][arg2].field_0) == stor5[arg1][arg2].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor5[arg1][arg2].field_1 % 128:
            if 31 < stor5[arg1][arg2].field_1 % 128:
                mem[128] = uint256(stor5[arg1][arg2].field_0)
                idx = 128
                s = 0
                while stor5[arg1][arg2].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor5[arg1][arg2 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(stor5[arg1][arg2].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5[arg1][arg2].field_8)
    mem[ceil32(stor5[arg1][arg2].field_1 % 128) + 192 len ceil32(stor5[arg1][arg2].field_1 % 128)] = mem[128 len ceil32(stor5[arg1][arg2].field_1 % 128)]
    if ceil32(stor5[arg1][arg2].field_1 % 128) > stor5[arg1][arg2].field_1 % 128:
        mem[ceil32(stor5[arg1][arg2].field_1 % 128) + stor5[arg1][arg2].field_1 % 128 + 192] = 0
    return Array(len=stor5[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(stor5[arg1][arg2].field_1 % 128)], mem[(2 * ceil32(stor5[arg1][arg2].field_1 % 128)) + 192 len 2 * ceil32(stor5[arg1][arg2].field_1 % 128)]), 
}

function sub_44083843(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] != cd[4]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if ('cd', 36).length != uint256(stor5[cd[4]].field_0):
            revert with 0, 'number of votes doesn't match number of options'
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + 128] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + 128]
            continue 
        mem[floor32(('cd', 36).length) + 101] = msg.sender
        require ext_code.size(address(stor1.length))
        call address(stor1.length).userBalance(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
            revert with 0, 'balance is smaller than the sum of votes'
        if not votesInRoundByUser[cd[4]][address(msg.sender)]:
            votesForOptionByUser[cd[4]][address(msg.sender)] = ('cd', 36).length
            if not ('cd', 36).length:
                idx = sha3(sha3(address(msg.sender), sha3(cd[4], 8)))
                while sha3(sha3(address(msg.sender), sha3(cd[4], 8))) + votesForOptionByUser[cd[4]][address(msg.sender)] > idx:
                    uint256(stor[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                t = sha3(sha3(address(msg.sender), sha3(cd[4], 8)))
                idx = 128
                while (32 * ('cd', 36).length) + 128 > idx:
                    uint256(stor[t].field_0) = mem[idx]
                    t = t + 1
                    idx = idx + 32
                    continue 
                idx = sha3(sha3(address(msg.sender), sha3(cd[4], 8))) + (Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5)
                while sha3(sha3(address(msg.sender), sha3(cd[4], 8))) + votesForOptionByUser[cd[4]][address(msg.sender)] > idx:
                    uint256(stor[idx].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = votesForOptionByUser[cd[4]][address(msg.sender)]
            if votesForOptionByUser[cd[4]][address(msg.sender)]:
                mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 129] = votesForOptionByUser[cd[4]][address(msg.sender)]
                idx = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
                t = sha3(sha3(address(msg.sender), sha3(cd[4], 8)))
                while floor32(('cd', 36).length) + ceil32(return_data.size) + (32 * votesForOptionByUser[cd[4]][address(msg.sender)]) + 97 > idx:
                    mem[idx + 32] = uint256(stor1[t])
                    idx = idx + 32
                    t = t + 1
                    continue 
            idx = 0
            while idx < votesForOptionByUser[cd[4]][address(msg.sender)]:
                if idx >= votesForOptionByUser[cd[4]][address(msg.sender)]:
                    revert with 'NH{q', 50
                mem[32] = 6
                if idx >= votesForOption[cd[4]]:
                    revert with 'NH{q', 50
                mem[0] = sha3(cd[4], 6)
                if votesForOption[cd[4]][idx] < mem[(32 * idx) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129]:
                    revert with 'NH{q', 17
                votesForOption[cd[4]][idx] -= mem[(32 * idx) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            votesForOptionByUser[cd[4]][address(msg.sender)] = ('cd', 36).length
            if not ('cd', 36).length:
                idx = sha3(sha3(address(msg.sender), sha3(cd[4], 8)))
                while sha3(sha3(address(msg.sender), sha3(cd[4], 8))) + votesForOptionByUser[cd[4]][address(msg.sender)] > idx:
                    uint256(stor[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                t = sha3(sha3(address(msg.sender), sha3(cd[4], 8)))
                idx = 128
                while (32 * ('cd', 36).length) + 128 > idx:
                    uint256(stor[t].field_0) = mem[idx]
                    t = t + 1
                    idx = idx + 32
                    continue 
                idx = sha3(sha3(address(msg.sender), sha3(cd[4], 8))) + (Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5)
                while sha3(sha3(address(msg.sender), sha3(cd[4], 8))) + votesForOptionByUser[cd[4]][address(msg.sender)] > idx:
                    uint256(stor[idx].field_0) = 0
                    idx = idx + 1
                    continue 
        votesInRoundByUser[cd[4]][address(msg.sender)] = s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[32] = 6
            if idx >= votesForOption[cd[4]]:
                revert with 'NH{q', 50
            mem[0] = sha3(cd[4], 6)
            if votesForOption[cd[4]][idx] > -mem[(32 * idx) + 128] - 1:
                revert with 'NH{q', 17
            votesForOption[cd[4]][idx] += mem[(32 * idx) + 128]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        emit 0xe24472b4: msg.sender, cd[4]
    revert with 0, 'roundId is not an active vote'
}

function sub_ad77c86a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(('cd', 4).length)) + 97 > test266151307() or ceil32(ceil32(('cd', 4).length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(('cd', 4).length)) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(('cd', 4).length)) + floor32(('cd', 36).length) + 98
    mem[ceil32(ceil32(('cd', 4).length)) + 97] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(ceil32(('cd', 4).length)) + 129
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _362 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_362] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_362 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_362 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _362
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if bool(stor4[stor2].field_0):
        if bool(stor4[stor2].field_0) == uint255(stor4[stor2].field_1) < 32:
            revert with 'NH{q', 34
        if mem[96]:
            uint256(stor4[stor2][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
            mem[32] = 5
            uint256(stor5[stor2].field_0) = mem[ceil32(ceil32(('cd', 4).length)) + 97]
            mem[0] = sha3(roundCount, 5)
            if not mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                idx = 0
                while sha3(sha3(roundCount, 5)) + uint256(stor5[stor2].field_0) > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
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
                            revert with 'NH{q', 34
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
                _1416 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                if mem[ceil32(ceil32(('cd', 4).length)) + 97] > test266151307():
                    revert with 'NH{q', 65
                _1434 = mem[64]
                mem[mem[64]] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[64] = mem[64] + (32 * _1416) + 32
                if not _1416:
                    mem[0] = roundCount
                    mem[32] = 6
                    _1444 = mem[_1434]
                    votesForOption[stor2] = mem[_1434]
                    mem[0] = sha3(roundCount, 6)
                    if not _1444:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1434 + 32
                        while _1434 + (32 * _1444) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1444) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1434 + 32 len 32 * _1416] = call.data[calldata.size len 32 * _1416]
                    mem[0] = roundCount
                    mem[32] = 6
                    _1462 = mem[_1434]
                    votesForOption[stor2] = mem[_1434]
                    mem[0] = sha3(roundCount, 6)
                    if not _1462:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1434 + 32
                        while _1434 + (32 * _1462) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1462) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
            else:
                s = 0
                idx = ceil32(ceil32(('cd', 4).length)) + 129
                while ceil32(ceil32(('cd', 4).length)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + 97]) + 129 > idx:
                    _1389 = mem[idx]
                    _1390 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1390:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1390) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1389 + 32
                            while _1389 + _1390 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1390 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1390:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1390) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1389 + 32
                            while _1389 + _1390 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1390 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(roundCount, 5)) + uint256(stor5[stor2].field_0) > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                            revert with 'NH{q', 34
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
                            revert with 'NH{q', 34
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
                _1635 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                if mem[ceil32(ceil32(('cd', 4).length)) + 97] > test266151307():
                    revert with 'NH{q', 65
                _1659 = mem[64]
                mem[mem[64]] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[64] = mem[64] + (32 * _1635) + 32
                if not _1635:
                    mem[0] = roundCount
                    mem[32] = 6
                    _1662 = mem[_1659]
                    votesForOption[stor2] = mem[_1659]
                    mem[0] = sha3(roundCount, 6)
                    if not _1662:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1659 + 32
                        while _1659 + (32 * _1662) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1662) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1659 + 32 len 32 * _1635] = call.data[calldata.size len 32 * _1635]
                    mem[0] = roundCount
                    mem[32] = 6
                    _1667 = mem[_1659]
                    votesForOption[stor2] = mem[_1659]
                    mem[0] = sha3(roundCount, 6)
                    if not _1667:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1659 + 32
                        while _1659 + (32 * _1667) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1667) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
        else:
            uint256(stor4[stor2].field_0) = 0
            idx = 0
            while uint255(stor4[stor2].field_1) + 31 / 32 > idx:
                uint256(stor4[stor2][idx].field_0) = 0
                idx = idx + 1
                continue 
            mem[32] = 5
            uint256(stor5[stor2].field_0) = mem[ceil32(ceil32(('cd', 4).length)) + 97]
            mem[0] = sha3(roundCount, 5)
            if not mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                idx = 0
                while sha3(sha3(roundCount, 5)) + uint256(stor5[stor2].field_0) > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
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
                            revert with 'NH{q', 34
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
                _1075 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                if mem[ceil32(ceil32(('cd', 4).length)) + 97] > test266151307():
                    revert with 'NH{q', 65
                _1084 = mem[64]
                mem[mem[64]] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[64] = mem[64] + (32 * _1075) + 32
                if not _1075:
                    mem[0] = roundCount
                    mem[32] = 6
                    _1094 = mem[_1084]
                    votesForOption[stor2] = mem[_1084]
                    mem[0] = sha3(roundCount, 6)
                    if not _1094:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1084 + 32
                        while _1084 + (32 * _1094) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1094) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1084 + 32 len 32 * _1075] = call.data[calldata.size len 32 * _1075]
                    mem[0] = roundCount
                    mem[32] = 6
                    _1111 = mem[_1084]
                    votesForOption[stor2] = mem[_1084]
                    mem[0] = sha3(roundCount, 6)
                    if not _1111:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1084 + 32
                        while _1084 + (32 * _1111) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1111) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
            else:
                s = 0
                idx = ceil32(ceil32(('cd', 4).length)) + 129
                while ceil32(ceil32(('cd', 4).length)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + 97]) + 129 > idx:
                    _1063 = mem[idx]
                    _1064 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1064:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1064) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1063 + 32
                            while _1063 + _1064 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1064 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1064:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1064) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1063 + 32
                            while _1063 + _1064 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1064 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(roundCount, 5)) + uint256(stor5[stor2].field_0) > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                            revert with 'NH{q', 34
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
                            revert with 'NH{q', 34
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
                _1422 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                if mem[ceil32(ceil32(('cd', 4).length)) + 97] > test266151307():
                    revert with 'NH{q', 65
                _1436 = mem[64]
                mem[mem[64]] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[64] = mem[64] + (32 * _1422) + 32
                if not _1422:
                    mem[0] = roundCount
                    mem[32] = 6
                    _1448 = mem[_1436]
                    votesForOption[stor2] = mem[_1436]
                    mem[0] = sha3(roundCount, 6)
                    if not _1448:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1436 + 32
                        while _1436 + (32 * _1448) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1448) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1436 + 32 len 32 * _1422] = call.data[calldata.size len 32 * _1422]
                    mem[0] = roundCount
                    mem[32] = 6
                    _1469 = mem[_1436]
                    votesForOption[stor2] = mem[_1436]
                    mem[0] = sha3(roundCount, 6)
                    if not _1469:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1436 + 32
                        while _1436 + (32 * _1469) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1469) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor4[stor2].field_0) == stor4[stor2].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if mem[96]:
            uint256(stor4[stor2][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
            mem[32] = 5
            uint256(stor5[stor2].field_0) = mem[ceil32(ceil32(('cd', 4).length)) + 97]
            mem[0] = sha3(roundCount, 5)
            if not mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                idx = 0
                while sha3(sha3(roundCount, 5)) + uint256(stor5[stor2].field_0) > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
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
                            revert with 'NH{q', 34
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
                _1426 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                if mem[ceil32(ceil32(('cd', 4).length)) + 97] > test266151307():
                    revert with 'NH{q', 65
                _1438 = mem[64]
                mem[mem[64]] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[64] = mem[64] + (32 * _1426) + 32
                if not _1426:
                    mem[0] = roundCount
                    mem[32] = 6
                    _1452 = mem[_1438]
                    votesForOption[stor2] = mem[_1438]
                    mem[0] = sha3(roundCount, 6)
                    if not _1452:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1438 + 32
                        while _1438 + (32 * _1452) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1452) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1438 + 32 len 32 * _1426] = call.data[calldata.size len 32 * _1426]
                    mem[0] = roundCount
                    mem[32] = 6
                    _1475 = mem[_1438]
                    votesForOption[stor2] = mem[_1438]
                    mem[0] = sha3(roundCount, 6)
                    if not _1475:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1438 + 32
                        while _1438 + (32 * _1475) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1475) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
            else:
                s = 0
                idx = ceil32(ceil32(('cd', 4).length)) + 129
                while ceil32(ceil32(('cd', 4).length)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + 97]) + 129 > idx:
                    _1403 = mem[idx]
                    _1404 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1404:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1404) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1403 + 32
                            while _1403 + _1404 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1404 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1404:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1404) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1403 + 32
                            while _1403 + _1404 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1404 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(roundCount, 5)) + uint256(stor5[stor2].field_0) > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                            revert with 'NH{q', 34
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
                            revert with 'NH{q', 34
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
                _1650 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                if mem[ceil32(ceil32(('cd', 4).length)) + 97] > test266151307():
                    revert with 'NH{q', 65
                _1660 = mem[64]
                mem[mem[64]] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[64] = mem[64] + (32 * _1650) + 32
                if not _1650:
                    mem[0] = roundCount
                    mem[32] = 6
                    _1664 = mem[_1660]
                    votesForOption[stor2] = mem[_1660]
                    mem[0] = sha3(roundCount, 6)
                    if not _1664:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1660 + 32
                        while _1660 + (32 * _1664) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1664) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1660 + 32 len 32 * _1650] = call.data[calldata.size len 32 * _1650]
                    mem[0] = roundCount
                    mem[32] = 6
                    _1670 = mem[_1660]
                    votesForOption[stor2] = mem[_1660]
                    mem[0] = sha3(roundCount, 6)
                    if not _1670:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1660 + 32
                        while _1660 + (32 * _1670) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1670) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
        else:
            uint256(stor4[stor2].field_0) = 0
            idx = 0
            while stor4[stor2].field_1 % 128 + 31 / 32 > idx:
                uint256(stor4[stor2][idx].field_0) = 0
                idx = idx + 1
                continue 
            mem[32] = 5
            uint256(stor5[stor2].field_0) = mem[ceil32(ceil32(('cd', 4).length)) + 97]
            mem[0] = sha3(roundCount, 5)
            if not mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                idx = 0
                while sha3(sha3(roundCount, 5)) + uint256(stor5[stor2].field_0) > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
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
                            revert with 'NH{q', 34
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
                _1080 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                if mem[ceil32(ceil32(('cd', 4).length)) + 97] > test266151307():
                    revert with 'NH{q', 65
                _1088 = mem[64]
                mem[mem[64]] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[64] = mem[64] + (32 * _1080) + 32
                if not _1080:
                    mem[0] = roundCount
                    mem[32] = 6
                    _1100 = mem[_1088]
                    votesForOption[stor2] = mem[_1088]
                    mem[0] = sha3(roundCount, 6)
                    if not _1100:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1088 + 32
                        while _1088 + (32 * _1100) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1100) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1088 + 32 len 32 * _1080] = call.data[calldata.size len 32 * _1080]
                    mem[0] = roundCount
                    mem[32] = 6
                    _1123 = mem[_1088]
                    votesForOption[stor2] = mem[_1088]
                    mem[0] = sha3(roundCount, 6)
                    if not _1123:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1088 + 32
                        while _1088 + (32 * _1123) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1123) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
            else:
                s = 0
                idx = ceil32(ceil32(('cd', 4).length)) + 129
                while ceil32(ceil32(('cd', 4).length)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + 97]) + 129 > idx:
                    _1069 = mem[idx]
                    _1070 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1070:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1070) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1069 + 32
                            while _1069 + _1070 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1070 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1070:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1070) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1069 + 32
                            while _1069 + _1070 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1070 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(roundCount, 5)) + uint256(stor5[stor2].field_0) > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                            revert with 'NH{q', 34
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
                            revert with 'NH{q', 34
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
                _1432 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                if mem[ceil32(ceil32(('cd', 4).length)) + 97] > test266151307():
                    revert with 'NH{q', 65
                _1440 = mem[64]
                mem[mem[64]] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[64] = mem[64] + (32 * _1432) + 32
                if not _1432:
                    mem[0] = roundCount
                    mem[32] = 6
                    _1456 = mem[_1440]
                    votesForOption[stor2] = mem[_1440]
                    mem[0] = sha3(roundCount, 6)
                    if not _1456:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1440 + 32
                        while _1440 + (32 * _1456) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1456) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1440 + 32 len 32 * _1432] = call.data[calldata.size len 32 * _1432]
                    mem[0] = roundCount
                    mem[32] = 6
                    _1482 = mem[_1440]
                    votesForOption[stor2] = mem[_1440]
                    mem[0] = sha3(roundCount, 6)
                    if not _1482:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1440 + 32
                        while _1440 + (32 * _1482) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1482) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
    stor3.length++
    stor3[stor3.length] = roundCount
    if roundCount == -1:
        revert with 'NH{q', 17
    roundCount++
}



}
