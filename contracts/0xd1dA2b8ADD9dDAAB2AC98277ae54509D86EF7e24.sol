contract main {




// =====================  Runtime code  =====================


#
#  - sub_ad77c86a(?)
#
address owner;
array of uint256 stor1;
uint256 roundCount;
array of uint256 activeRounds;
array of uint256 sub_fd9ba024;
mapping of struct stor5;
array of struct sub_5f378ce7;
array of uint256 votesForOption;
mapping of uint256 votesInRoundByUser;
array of uint256 votesForOptionByUser;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint256 sub_b91987b3;
mapping of uint256 sub_544e4b79;
mapping of uint8 stor14;

function userVotedForOption(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return bool(stor11[arg1][arg2][address(arg3)])
}

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
    return activeRounds.length
}

function activeRounds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < activeRounds.length
    return activeRounds[arg1]
}

function sub_2e79cc08(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor14[arg1]))
}

function votesInRoundByUser(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return votesInRoundByUser[arg1][address(arg2)]
}

function sub_544e4b79(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_544e4b79[arg1][arg2]
}

function sub_5f378ce7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < sub_5f378ce7[arg1].field_0:
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        s = s + 1
        continue 
    return sub_5f378ce7[arg1].field_0
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

function userVotedInRound(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor10[arg1][address(arg2)])
}

function sub_b91987b3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_b91987b3[arg1]
}

function sub_ec2f42f7(?) payable {
    return sub_fd9ba024.length
}

function balanceKeeper() payable {
    return address(stor1.length)
}

function sub_fd9ba024(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_fd9ba024.length
    return sub_fd9ba024[arg1]
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

function isActiveRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < activeRounds.length:
        mem[0] = 3
        if activeRounds[idx] == arg1:
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_59e99422(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor14[address(arg1)]) = not bool(uint8(stor14[address(arg1)])) or Mask(248, 8, uint256(stor14[address(arg1)]))
    emit 0x43cec74d: msg.sender, address(arg1), bool(uint8(stor14[address(arg1)]))
}

function finalizeRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if activeRounds.length < 1:
        revert with 'NH{q', 17
    if activeRounds.length - 1 > test266151307():
        revert with 'NH{q', 65
    if activeRounds.length - 1:
        mem[128 len 32 * activeRounds.length - 1] = call.data[calldata.size len 32 * activeRounds.length - 1]
    idx = 0
    while idx < activeRounds.length:
        mem[0] = 3
        if activeRounds[idx] != arg1:
            if idx >= activeRounds.length:
                revert with 'NH{q', 50
            mem[0] = 3
            if 0 >= activeRounds.length - 1:
                revert with 'NH{q', 50
            mem[128] = activeRounds[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    activeRounds.length--
    if not activeRounds.length - 1:
        idx = 0
        while activeRounds.length > idx:
            activeRounds[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * activeRounds.length - 1) + 128 > idx:
            activeRounds[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * activeRounds.length - 1) + 31) >> 5
        while activeRounds.length > idx:
            activeRounds[idx] = 0
            idx = idx + 1
            continue 
    sub_fd9ba024.length++
    sub_fd9ba024[sub_fd9ba024.length] = arg1
    emit 0x602fc81a: arg1, msg.sender
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
        mem[32] = 7
        idx = idx + 1
        s = s + votesForOption[arg1][idx]
        continue 
    return (s * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1] * votesForOption[arg1])
}

function sub_bc35784b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not uint8(stor14[address(msg.sender)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender is not allowed to check balances'
    idx = 0
    while idx < activeRounds.length:
        mem[0] = address(arg1)
        mem[32] = sha3(activeRounds[idx], 8)
        if arg2 <= votesInRoundByUser[stor3[idx]][address(arg1)]:
            mem[0] = address(arg1)
            mem[32] = sha3(activeRounds[idx], 8)
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
                    mem[32] = sha3(activeRounds[idx], 9)
                    if s >= votesForOptionByUser[stor3[idx]][address(arg1)]:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), sha3(activeRounds[idx], 9))
                    votesForOptionByUser[stor3[idx]][address(arg1)][s] = votesForOptionByUser[stor3[idx]][address(arg1)][s] * arg2 / votesInRoundByUser[stor3[idx]][address(arg1)]
                    if t > -(votesForOptionByUser[stor3[idx]][address(arg1)][s] * arg2 / votesInRoundByUser[stor3[idx]][address(arg1)]) - 1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + (votesForOptionByUser[stor3[idx]][address(arg1)][s] * arg2 / votesInRoundByUser[stor3[idx]][address(arg1)])
                    continue 
                mem[0] = address(arg1)
                mem[32] = sha3(activeRounds[idx], 8)
                votesInRoundByUser[stor3[idx]][address(arg1)] = t * votesForOptionByUser[stor3[idx]][address(arg1)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit 0xb2b53ad9: arg2, msg.sender, address(arg1)
}

function roundName(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor5[arg1].field_0):
        if bool(stor5[arg1].field_0) == uint255(stor5[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor5[arg1].field_0):
            if bool(stor5[arg1].field_0) == uint255(stor5[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor5[arg1].field_1):
                if 31 < uint255(stor5[arg1].field_1):
                    mem[128] = stor5[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor5[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor5[arg1].field_1)), data=mem[128 len ceil32(uint255(stor5[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor5[arg1].field_8)
        else:
            if bool(stor5[arg1].field_0) == stor5[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor5[arg1].field_1 % 128:
                if 31 < stor5[arg1].field_1 % 128:
                    mem[128] = stor5[arg1].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor5[arg1].field_1)), data=mem[128 len ceil32(uint255(stor5[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor5[arg1].field_8)
        mem[ceil32(uint255(stor5[arg1].field_1)) + 192 len ceil32(uint255(stor5[arg1].field_1))] = mem[128 len ceil32(uint255(stor5[arg1].field_1))]
        if ceil32(uint255(stor5[arg1].field_1)) > uint255(stor5[arg1].field_1):
            mem[ceil32(uint255(stor5[arg1].field_1)) + uint255(stor5[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor5[arg1].field_1)), data=mem[128 len ceil32(uint255(stor5[arg1].field_1))], mem[(2 * ceil32(uint255(stor5[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor5[arg1].field_1))]), 
    if bool(stor5[arg1].field_0) == stor5[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor5[arg1].field_0):
        if bool(stor5[arg1].field_0) == uint255(stor5[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor5[arg1].field_1):
            if 31 < uint255(stor5[arg1].field_1):
                mem[128] = stor5[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor5[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1].field_0 % 128, data=mem[128 len ceil32(stor5[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5[arg1].field_8)
    else:
        if bool(stor5[arg1].field_0) == stor5[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_1 % 128:
            if 31 < stor5[arg1].field_1 % 128:
                mem[128] = stor5[arg1].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1].field_0 % 128, data=mem[128 len ceil32(stor5[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5[arg1].field_8)
    mem[ceil32(stor5[arg1].field_1 % 128) + 192 len ceil32(stor5[arg1].field_1 % 128)] = mem[128 len ceil32(stor5[arg1].field_1 % 128)]
    if ceil32(stor5[arg1].field_1 % 128) > stor5[arg1].field_1 % 128:
        mem[ceil32(stor5[arg1].field_1 % 128) + stor5[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor5[arg1].field_0 % 128, data=mem[128 len ceil32(stor5[arg1].field_1 % 128)], mem[(2 * ceil32(stor5[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor5[arg1].field_1 % 128)]), 
}

function roundOptions(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= sub_5f378ce7[arg1].field_0:
        revert with 'NH{q', 50
    if bool(sub_5f378ce7[arg1][arg2].field_0):
        if bool(sub_5f378ce7[arg1][arg2].field_0) == uint255(sub_5f378ce7[arg1][arg2].field_1) < 32:
            revert with 'NH{q', 34
        if bool(sub_5f378ce7[arg1][arg2].field_0):
            if bool(sub_5f378ce7[arg1][arg2].field_0) == uint255(sub_5f378ce7[arg1][arg2].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(sub_5f378ce7[arg1][arg2].field_1):
                if 31 < uint255(sub_5f378ce7[arg1][arg2].field_1):
                    mem[128] = sub_5f378ce7[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while uint255(sub_5f378ce7[arg1][arg2].field_1) + 96 > idx:
                        mem[idx + 32] = sub_5f378ce7[arg1][arg2 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(sub_5f378ce7[arg1][arg2].field_1)), data=mem[128 len ceil32(uint255(sub_5f378ce7[arg1][arg2].field_1))]), 
                mem[128] = 256 * Mask(248, 0, sub_5f378ce7[arg1][arg2].field_8)
        else:
            if bool(sub_5f378ce7[arg1][arg2].field_0) == sub_5f378ce7[arg1][arg2].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if sub_5f378ce7[arg1][arg2].field_1 % 128:
                if 31 < sub_5f378ce7[arg1][arg2].field_1 % 128:
                    mem[128] = sub_5f378ce7[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while sub_5f378ce7[arg1][arg2].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = sub_5f378ce7[arg1][arg2 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(sub_5f378ce7[arg1][arg2].field_1)), data=mem[128 len ceil32(uint255(sub_5f378ce7[arg1][arg2].field_1))]), 
                mem[128] = 256 * Mask(248, 0, sub_5f378ce7[arg1][arg2].field_8)
        mem[ceil32(uint255(sub_5f378ce7[arg1][arg2].field_1)) + 192 len ceil32(uint255(sub_5f378ce7[arg1][arg2].field_1))] = mem[128 len ceil32(uint255(sub_5f378ce7[arg1][arg2].field_1))]
        if ceil32(uint255(sub_5f378ce7[arg1][arg2].field_1)) > uint255(sub_5f378ce7[arg1][arg2].field_1):
            mem[ceil32(uint255(sub_5f378ce7[arg1][arg2].field_1)) + uint255(sub_5f378ce7[arg1][arg2].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(sub_5f378ce7[arg1][arg2].field_1)), data=mem[128 len ceil32(uint255(sub_5f378ce7[arg1][arg2].field_1))], mem[(2 * ceil32(uint255(sub_5f378ce7[arg1][arg2].field_1))) + 192 len 2 * ceil32(uint255(sub_5f378ce7[arg1][arg2].field_1))]), 
    if bool(sub_5f378ce7[arg1][arg2].field_0) == sub_5f378ce7[arg1][arg2].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(sub_5f378ce7[arg1][arg2].field_0):
        if bool(sub_5f378ce7[arg1][arg2].field_0) == uint255(sub_5f378ce7[arg1][arg2].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(sub_5f378ce7[arg1][arg2].field_1):
            if 31 < uint255(sub_5f378ce7[arg1][arg2].field_1):
                mem[128] = sub_5f378ce7[arg1][arg2].field_0
                idx = 128
                s = 0
                while uint255(sub_5f378ce7[arg1][arg2].field_1) + 96 > idx:
                    mem[idx + 32] = sub_5f378ce7[arg1][arg2 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_5f378ce7[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(sub_5f378ce7[arg1][arg2].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, sub_5f378ce7[arg1][arg2].field_8)
    else:
        if bool(sub_5f378ce7[arg1][arg2].field_0) == sub_5f378ce7[arg1][arg2].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if sub_5f378ce7[arg1][arg2].field_1 % 128:
            if 31 < sub_5f378ce7[arg1][arg2].field_1 % 128:
                mem[128] = sub_5f378ce7[arg1][arg2].field_0
                idx = 128
                s = 0
                while sub_5f378ce7[arg1][arg2].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = sub_5f378ce7[arg1][arg2 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_5f378ce7[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(sub_5f378ce7[arg1][arg2].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, sub_5f378ce7[arg1][arg2].field_8)
    mem[ceil32(sub_5f378ce7[arg1][arg2].field_1 % 128) + 192 len ceil32(sub_5f378ce7[arg1][arg2].field_1 % 128)] = mem[128 len ceil32(sub_5f378ce7[arg1][arg2].field_1 % 128)]
    if ceil32(sub_5f378ce7[arg1][arg2].field_1 % 128) > sub_5f378ce7[arg1][arg2].field_1 % 128:
        mem[ceil32(sub_5f378ce7[arg1][arg2].field_1 % 128) + sub_5f378ce7[arg1][arg2].field_1 % 128 + 192] = 0
    return Array(len=sub_5f378ce7[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(sub_5f378ce7[arg1][arg2].field_1 % 128)], mem[(2 * ceil32(sub_5f378ce7[arg1][arg2].field_1 % 128)) + 192 len 2 * ceil32(sub_5f378ce7[arg1][arg2].field_1 % 128)]), 
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
    while idx < activeRounds.length:
        mem[0] = 3
        if activeRounds[idx] != cd[4]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if ('cd', 36).length != sub_5f378ce7[cd[4]].field_0:
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
        call address(stor1.length).userBalance(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
            revert with 0, 'balance is smaller than the sum of votes'
        if votesInRoundByUser[cd[4]][address(msg.sender)]:
            mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = votesForOptionByUser[cd[4]][address(msg.sender)]
            if votesForOptionByUser[cd[4]][address(msg.sender)]:
                mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 129] = votesForOptionByUser[cd[4]][address(msg.sender)]
                idx = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
                t = sha3(sha3(address(msg.sender), sha3(cd[4], 9)))
                while floor32(('cd', 36).length) + ceil32(return_data.size) + (32 * votesForOptionByUser[cd[4]][address(msg.sender)]) + 97 > idx:
                    mem[idx + 32] = uint256(stor1[t])
                    idx = idx + 32
                    t = t + 1
                    continue 
            idx = 0
            while idx < votesForOptionByUser[cd[4]][address(msg.sender)]:
                if idx >= votesForOptionByUser[cd[4]][address(msg.sender)]:
                    revert with 'NH{q', 50
                mem[32] = 7
                if idx >= votesForOption[cd[4]]:
                    revert with 'NH{q', 50
                mem[0] = sha3(cd[4], 7)
                if votesForOption[cd[4]][idx] < mem[(32 * idx) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129]:
                    revert with 'NH{q', 17
                votesForOption[cd[4]][idx] -= mem[(32 * idx) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        votesForOptionByUser[cd[4]][address(msg.sender)] = ('cd', 36).length
        if not ('cd', 36).length:
            idx = sha3(sha3(address(msg.sender), sha3(cd[4], 9)))
            while sha3(sha3(address(msg.sender), sha3(cd[4], 9))) + votesForOptionByUser[cd[4]][address(msg.sender)] > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            t = sha3(sha3(address(msg.sender), sha3(cd[4], 9)))
            idx = 128
            while (32 * ('cd', 36).length) + 128 > idx:
                stor[t] = mem[idx]
                t = t + 1
                idx = idx + 32
                continue 
            idx = sha3(sha3(address(msg.sender), sha3(cd[4], 9))) + (Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5)
            while sha3(sha3(address(msg.sender), sha3(cd[4], 9))) + votesForOptionByUser[cd[4]][address(msg.sender)] > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            if not stor11[cd[4]][idx][address(msg.sender)]:
                if mem[(32 * idx) + 128]:
                    stor11[cd[4]][idx][address(msg.sender)] = 1
                    if sub_544e4b79[cd[4]][idx] == -1:
                        revert with 'NH{q', 17
                    sub_544e4b79[cd[4]][idx]++
            if stor11[cd[4]][idx][address(msg.sender)]:
                if not mem[(32 * idx) + 128]:
                    stor11[cd[4]][idx][address(msg.sender)] = 0
                    if not sub_544e4b79[cd[4]][idx]:
                        revert with 'NH{q', 17
                    sub_544e4b79[cd[4]][idx]--
            mem[32] = 7
            if idx >= votesForOption[cd[4]]:
                revert with 'NH{q', 50
            mem[0] = sha3(cd[4], 7)
            if votesForOption[cd[4]][idx] > -mem[(32 * idx) + 128] - 1:
                revert with 'NH{q', 17
            votesForOption[cd[4]][idx] += mem[(32 * idx) + 128]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        votesInRoundByUser[cd[4]][address(msg.sender)] = s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length
        if not stor10[cd[4]][address(msg.sender)]:
            if s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
                stor10[cd[4]][address(msg.sender)] = 1
                if sub_b91987b3[cd[4]] == -1:
                    revert with 'NH{q', 17
                sub_b91987b3[cd[4]]++
        if stor10[cd[4]][address(msg.sender)]:
            if not s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
                stor10[cd[4]][address(msg.sender)] = 0
                if not sub_b91987b3[cd[4]]:
                    revert with 'NH{q', 17
                sub_b91987b3[cd[4]]--
        emit 0xe49bd36b: msg.sender, cd[4]
    revert with 0, 'roundId is not an active vote'
}



}
