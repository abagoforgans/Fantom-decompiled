contract main {




// =====================  Runtime code  =====================


#
#  - sub_44083843(?)
#
address owner;
address balanceKeeperAddress;
uint256 totalRounds;
array of uint256 activeRounds;
array of uint256 sub_fd9ba024;
mapping of struct stor5;
array of struct totalRoundOptions;
array of uint256 votesForOption;
mapping of uint256 votesInRoundByUser;
array of uint256 votesForOptionByUser;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint256 totalUsersInRound;
mapping of uint256 totalUsersForOption;
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

function activeRounds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < activeRounds.length
    return activeRounds[arg1]
}

function votesInRoundByUser(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return votesInRoundByUser[arg1][address(arg2)]
}

function totalUsersForOption(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return totalUsersForOption[arg1][arg2]
}

function totalRoundOptions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < uint256(totalRoundOptions[arg1].field_0):
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        s = s + 1
        continue 
    return uint256(totalRoundOptions[arg1].field_0)
}

function votesForOption(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= votesForOption[arg1]:
        revert with 'NH{q', 50
    return votesForOption[arg1][arg2]
}

function canCheck(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function totalRounds() payable {
    return totalRounds
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

function sub_e5b29a46(?) payable {
    return sub_fd9ba024.length
}

function totalActiveRounds() payable {
    return activeRounds.length
}

function totalUsersInRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalUsersInRound[arg1]
}

function balanceKeeper() payable {
    return balanceKeeperAddress
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

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setCanCheck(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor14[address(arg1)] = uint8(arg2)
    emit SetCanCheck(msg.sender, arg1, bool(stor14[address(arg1)]));
}

function sub_8dd98d72(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < sub_fd9ba024.length:
        mem[0] = 4
        if sub_fd9ba024[idx] == arg1:
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
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
    emit FinalizeRound(arg1, msg.sender);
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

function checkVoteBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor14[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender is not allowed to check balances'
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3777d65a with:
            gas gas_remaining wei
           args 64, 128, 3, 'EVM', 20, Mask(160, 96, msg.sender, 0, 0) >> 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < activeRounds.length:
        mem[0] = arg1
        mem[32] = sha3(activeRounds[idx], 8)
        if ext_call.return_data[0] <= votesInRoundByUser[stor3[idx]][address(arg1)]:
            mem[0] = arg1
            mem[32] = sha3(activeRounds[idx], 8)
            if votesInRoundByUser[stor3[idx]][address(arg1)]:
                s = 0
                t = 0
                while s < votesForOptionByUser[stor3[idx]][address(arg1)]:
                    if votesForOptionByUser[stor3[idx]][address(arg1)][s] and ext_call.return_data[0] > -1 / votesForOptionByUser[stor3[idx]][address(arg1)][s]:
                        revert with 'NH{q', 17
                    if not votesInRoundByUser[stor3[idx]][address(arg1)]:
                        revert with 'NH{q', 18
                    if votesForOptionByUser[stor3[idx]][address(arg1)][s] < votesForOptionByUser[stor3[idx]][address(arg1)][s] * ext_call.return_data[0] / votesInRoundByUser[stor3[idx]][address(arg1)]:
                        revert with 'NH{q', 17
                    if s >= votesForOption[stor3[idx]]:
                        revert with 'NH{q', 50
                    if votesForOption[stor3[idx]][s] < votesForOptionByUser[stor3[idx]][address(arg1)][s] - (votesForOptionByUser[stor3[idx]][address(arg1)][s] * ext_call.return_data[0] / votesInRoundByUser[stor3[idx]][address(arg1)]):
                        revert with 'NH{q', 17
                    votesForOption[stor3[idx]][s] = votesForOption[stor3[idx]][s] - votesForOptionByUser[stor3[idx]][address(arg1)][s] + (votesForOptionByUser[stor3[idx]][address(arg1)][s] * ext_call.return_data[0] / votesInRoundByUser[stor3[idx]][address(arg1)])
                    mem[32] = sha3(activeRounds[idx], 9)
                    if s >= votesForOptionByUser[stor3[idx]][address(arg1)]:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), sha3(activeRounds[idx], 9))
                    votesForOptionByUser[stor3[idx]][address(arg1)][s] = votesForOptionByUser[stor3[idx]][address(arg1)][s] * ext_call.return_data[0] / votesInRoundByUser[stor3[idx]][address(arg1)]
                    if t > -(votesForOptionByUser[stor3[idx]][address(arg1)][s] * ext_call.return_data[0] / votesInRoundByUser[stor3[idx]][address(arg1)]) - 1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + (votesForOptionByUser[stor3[idx]][address(arg1)][s] * ext_call.return_data[0] / votesInRoundByUser[stor3[idx]][address(arg1)])
                    continue 
                mem[0] = arg1
                mem[32] = sha3(activeRounds[idx], 8)
                votesInRoundByUser[stor3[idx]][address(arg1)] = t * votesForOptionByUser[stor3[idx]][address(arg1)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit CheckVoteBalances(ext_call.return_data[0], msg.sender, arg1);
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
                    mem[128] = uint256(stor5[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor5[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor5[arg1][s].field_256)
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
                    mem[128] = uint256(stor5[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor5[arg1][s].field_256)
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
                mem[128] = uint256(stor5[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor5[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor5[arg1][s].field_256)
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
                mem[128] = uint256(stor5[arg1].field_0)
                idx = 128
                s = 0
                while stor5[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor5[arg1][s].field_256)
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
    if arg2 >= uint256(totalRoundOptions[arg1].field_0):
        revert with 'NH{q', 50
    if bool(totalRoundOptions[arg1][arg2].field_0):
        if bool(totalRoundOptions[arg1][arg2].field_0) == uint255(totalRoundOptions[arg1][arg2].field_1) < 32:
            revert with 'NH{q', 34
        if bool(totalRoundOptions[arg1][arg2].field_0):
            if bool(totalRoundOptions[arg1][arg2].field_0) == uint255(totalRoundOptions[arg1][arg2].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(totalRoundOptions[arg1][arg2].field_1):
                if 31 < uint255(totalRoundOptions[arg1][arg2].field_1):
                    mem[128] = uint256(totalRoundOptions[arg1][arg2].field_0)
                    idx = 128
                    s = 0
                    while uint255(totalRoundOptions[arg1][arg2].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(totalRoundOptions[arg1][arg2 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(totalRoundOptions[arg1][arg2].field_1)), data=mem[128 len ceil32(uint255(totalRoundOptions[arg1][arg2].field_1))]), 
                mem[128] = 256 * Mask(248, 0, totalRoundOptions[arg1][arg2].field_8)
        else:
            if bool(totalRoundOptions[arg1][arg2].field_0) == totalRoundOptions[arg1][arg2].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if totalRoundOptions[arg1][arg2].field_1 % 128:
                if 31 < totalRoundOptions[arg1][arg2].field_1 % 128:
                    mem[128] = uint256(totalRoundOptions[arg1][arg2].field_0)
                    idx = 128
                    s = 0
                    while totalRoundOptions[arg1][arg2].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(totalRoundOptions[arg1][arg2 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(totalRoundOptions[arg1][arg2].field_1)), data=mem[128 len ceil32(uint255(totalRoundOptions[arg1][arg2].field_1))]), 
                mem[128] = 256 * Mask(248, 0, totalRoundOptions[arg1][arg2].field_8)
        mem[ceil32(uint255(totalRoundOptions[arg1][arg2].field_1)) + 192 len ceil32(uint255(totalRoundOptions[arg1][arg2].field_1))] = mem[128 len ceil32(uint255(totalRoundOptions[arg1][arg2].field_1))]
        if ceil32(uint255(totalRoundOptions[arg1][arg2].field_1)) > uint255(totalRoundOptions[arg1][arg2].field_1):
            mem[ceil32(uint255(totalRoundOptions[arg1][arg2].field_1)) + uint255(totalRoundOptions[arg1][arg2].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(totalRoundOptions[arg1][arg2].field_1)), data=mem[128 len ceil32(uint255(totalRoundOptions[arg1][arg2].field_1))], mem[(2 * ceil32(uint255(totalRoundOptions[arg1][arg2].field_1))) + 192 len 2 * ceil32(uint255(totalRoundOptions[arg1][arg2].field_1))]), 
    if bool(totalRoundOptions[arg1][arg2].field_0) == totalRoundOptions[arg1][arg2].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(totalRoundOptions[arg1][arg2].field_0):
        if bool(totalRoundOptions[arg1][arg2].field_0) == uint255(totalRoundOptions[arg1][arg2].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(totalRoundOptions[arg1][arg2].field_1):
            if 31 < uint255(totalRoundOptions[arg1][arg2].field_1):
                mem[128] = uint256(totalRoundOptions[arg1][arg2].field_0)
                idx = 128
                s = 0
                while uint255(totalRoundOptions[arg1][arg2].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(totalRoundOptions[arg1][arg2 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=totalRoundOptions[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(totalRoundOptions[arg1][arg2].field_1 % 128)]), 
            mem[128] = 256 * Mask(248, 0, totalRoundOptions[arg1][arg2].field_8)
    else:
        if bool(totalRoundOptions[arg1][arg2].field_0) == totalRoundOptions[arg1][arg2].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if totalRoundOptions[arg1][arg2].field_1 % 128:
            if 31 < totalRoundOptions[arg1][arg2].field_1 % 128:
                mem[128] = uint256(totalRoundOptions[arg1][arg2].field_0)
                idx = 128
                s = 0
                while totalRoundOptions[arg1][arg2].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(totalRoundOptions[arg1][arg2 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=totalRoundOptions[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(totalRoundOptions[arg1][arg2].field_1 % 128)]), 
            mem[128] = 256 * Mask(248, 0, totalRoundOptions[arg1][arg2].field_8)
    mem[ceil32(totalRoundOptions[arg1][arg2].field_1 % 128) + 192 len ceil32(totalRoundOptions[arg1][arg2].field_1 % 128)] = mem[128 len ceil32(totalRoundOptions[arg1][arg2].field_1 % 128)]
    if ceil32(totalRoundOptions[arg1][arg2].field_1 % 128) > totalRoundOptions[arg1][arg2].field_1 % 128:
        mem[ceil32(totalRoundOptions[arg1][arg2].field_1 % 128) + totalRoundOptions[arg1][arg2].field_1 % 128 + 192] = 0
    return Array(len=totalRoundOptions[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(totalRoundOptions[arg1][arg2].field_1 % 128)], mem[(2 * ceil32(totalRoundOptions[arg1][arg2].field_1 % 128)) + 192 len 2 * ceil32(totalRoundOptions[arg1][arg2].field_1 % 128)]), 
}

function sub_ad77c86a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(('cd', 4).length) + 128 > test266151307() or ceil32(('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307() or (32 * ('cd', 36).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[64] = ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[ceil32(('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1193 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_1193] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_1193 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_1193 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _1193
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if bool(stor5[stor2].field_0):
        if bool(stor5[stor2].field_0) == uint255(stor5[stor2].field_1) < 32:
            revert with 'NH{q', 34
        if mem[96]:
            uint256(stor5[stor2][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
            mem[32] = 6
            uint256(totalRoundOptions[stor2].field_0) = mem[ceil32(('cd', 4).length) + 128]
            mem[0] = sha3(totalRounds, 6)
            if not mem[ceil32(('cd', 4).length) + 128]:
                idx = 0
                while sha3(sha3(totalRounds, 6)) + uint256(totalRoundOptions[stor2].field_0) > idx + sha3(mem[0]):
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
                _4744 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _4762 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _4744) + 32
                if not _4744:
                    mem[0] = totalRounds
                    mem[32] = 7
                    _4772 = mem[_4762]
                    votesForOption[stor2] = mem[_4762]
                    mem[0] = sha3(totalRounds, 7)
                    if not _4772:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4762 + (32 * _4744) + 32] = totalRounds
                        mem[_4762 + (32 * _4744) + 64] = 96
                        _5947 = mem[96]
                        mem[_4762 + (32 * _4744) + 128] = mem[96]
                        mem[_4762 + (32 * _4744) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4762 + (32 * _4744) + 96] = ceil32(mem[96]) + 128
                            _6807 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4762 + (32 * _4744) + ceil32(_5947) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4762 + (32 * _4744) + ceil32(_5947) + (32 * _6807) + 192
                            u = _4762 + (32 * _4744) + ceil32(_5947) + 192
                            while idx < _6807:
                                mem[u] = t + -_4762 + -(32 * _4744) + -ceil32(_5947) - 192
                                _7431 = mem[s]
                                _7585 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7585:
                                    mem[t + v + 32] = mem[_7431 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7585) > _7585:
                                    mem[t + _7585 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7585) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4762 + (32 * _4744) + mem[96] + 160] = 0
                            mem[_4762 + (32 * _4744) + 96] = ceil32(mem[96]) + 128
                            _6853 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4762 + (32 * _4744) + ceil32(_5947) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4762 + (32 * _4744) + ceil32(_5947) + (32 * _6853) + 192
                            u = _4762 + (32 * _4744) + ceil32(_5947) + 192
                            while idx < _6853:
                                mem[u] = t + -_4762 + -(32 * _4744) + -ceil32(_5947) - 192
                                _7432 = mem[s]
                                _7586 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7586:
                                    mem[t + v + 32] = mem[_7432 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7586) > _7586:
                                    mem[t + _7586 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7586) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _4762 + 32
                        while _4762 + (32 * _4772) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _4772) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4762 + (32 * _4744) + 32] = totalRounds
                        mem[_4762 + (32 * _4744) + 64] = 96
                        _6912 = mem[96]
                        mem[_4762 + (32 * _4744) + 128] = mem[96]
                        mem[_4762 + (32 * _4744) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4762 + (32 * _4744) + 96] = ceil32(mem[96]) + 128
                            _7635 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4762 + (32 * _4744) + ceil32(_6912) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4762 + (32 * _4744) + ceil32(_6912) + (32 * _7635) + 192
                            u = _4762 + (32 * _4744) + ceil32(_6912) + 192
                            while idx < _7635:
                                mem[u] = t + -_4762 + -(32 * _4744) + -ceil32(_6912) - 192
                                _7955 = mem[s]
                                _8085 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8085:
                                    mem[t + v + 32] = mem[_7955 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8085) > _8085:
                                    mem[t + _8085 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8085) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4762 + (32 * _4744) + mem[96] + 160] = 0
                            mem[_4762 + (32 * _4744) + 96] = ceil32(mem[96]) + 128
                            _7659 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4762 + (32 * _4744) + ceil32(_6912) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4762 + (32 * _4744) + ceil32(_6912) + (32 * _7659) + 192
                            u = _4762 + (32 * _4744) + ceil32(_6912) + 192
                            while idx < _7659:
                                mem[u] = t + -_4762 + -(32 * _4744) + -ceil32(_6912) - 192
                                _7956 = mem[s]
                                _8086 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8086:
                                    mem[t + v + 32] = mem[_7956 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8086) > _8086:
                                    mem[t + _8086 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8086) + 32
                                u = u + 32
                                continue 
                else:
                    mem[_4762 + 32 len 32 * _4744] = call.data[calldata.size len 32 * _4744]
                    mem[0] = totalRounds
                    mem[32] = 7
                    _4790 = mem[_4762]
                    votesForOption[stor2] = mem[_4762]
                    mem[0] = sha3(totalRounds, 7)
                    if not _4790:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4762 + (32 * _4744) + 32] = totalRounds
                        mem[_4762 + (32 * _4744) + 64] = 96
                        _5948 = mem[96]
                        mem[_4762 + (32 * _4744) + 128] = mem[96]
                        mem[_4762 + (32 * _4744) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4762 + (32 * _4744) + 96] = ceil32(mem[96]) + 128
                            _6809 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4762 + (32 * _4744) + ceil32(_5948) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4762 + (32 * _4744) + ceil32(_5948) + (32 * _6809) + 192
                            u = _4762 + (32 * _4744) + ceil32(_5948) + 192
                            while idx < _6809:
                                mem[u] = t + -_4762 + -(32 * _4744) + -ceil32(_5948) - 192
                                _7434 = mem[s]
                                _7587 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7587:
                                    mem[t + v + 32] = mem[_7434 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7587) > _7587:
                                    mem[t + _7587 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7587) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4762 + (32 * _4744) + mem[96] + 160] = 0
                            mem[_4762 + (32 * _4744) + 96] = ceil32(mem[96]) + 128
                            _6854 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4762 + (32 * _4744) + ceil32(_5948) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4762 + (32 * _4744) + ceil32(_5948) + (32 * _6854) + 192
                            u = _4762 + (32 * _4744) + ceil32(_5948) + 192
                            while idx < _6854:
                                mem[u] = t + -_4762 + -(32 * _4744) + -ceil32(_5948) - 192
                                _7435 = mem[s]
                                _7588 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7588:
                                    mem[t + v + 32] = mem[_7435 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7588) > _7588:
                                    mem[t + _7588 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7588) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _4762 + 32
                        while _4762 + (32 * _4790) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _4790) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4762 + (32 * _4744) + 32] = totalRounds
                        mem[_4762 + (32 * _4744) + 64] = 96
                        _6914 = mem[96]
                        mem[_4762 + (32 * _4744) + 128] = mem[96]
                        mem[_4762 + (32 * _4744) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4762 + (32 * _4744) + 96] = ceil32(mem[96]) + 128
                            _7636 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4762 + (32 * _4744) + ceil32(_6914) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4762 + (32 * _4744) + ceil32(_6914) + (32 * _7636) + 192
                            u = _4762 + (32 * _4744) + ceil32(_6914) + 192
                            while idx < _7636:
                                mem[u] = t + -_4762 + -(32 * _4744) + -ceil32(_6914) - 192
                                _7959 = mem[s]
                                _8087 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8087:
                                    mem[t + v + 32] = mem[_7959 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8087) > _8087:
                                    mem[t + _8087 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8087) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4762 + (32 * _4744) + mem[96] + 160] = 0
                            mem[_4762 + (32 * _4744) + 96] = ceil32(mem[96]) + 128
                            _7660 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4762 + (32 * _4744) + ceil32(_6914) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4762 + (32 * _4744) + ceil32(_6914) + (32 * _7660) + 192
                            u = _4762 + (32 * _4744) + ceil32(_6914) + 192
                            while idx < _7660:
                                mem[u] = t + -_4762 + -(32 * _4744) + -ceil32(_6914) - 192
                                _7960 = mem[s]
                                _8088 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8088:
                                    mem[t + v + 32] = mem[_7960 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8088) > _8088:
                                    mem[t + _8088 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8088) + 32
                                u = u + 32
                                continue 
            else:
                s = 0
                idx = ceil32(('cd', 4).length) + 160
                while ceil32(('cd', 4).length) + (32 * mem[ceil32(('cd', 4).length) + 128]) + 160 > idx:
                    _4717 = mem[idx]
                    _4718 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _4718:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _4718) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _4717 + 32
                            while _4717 + _4718 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _4718 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _4718:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _4718) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _4717 + 32
                            while _4717 + _4718 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _4718 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(totalRounds, 6)) + uint256(totalRoundOptions[stor2].field_0) > idx:
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
                _5807 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _5831 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _5807) + 32
                if not _5807:
                    mem[0] = totalRounds
                    mem[32] = 7
                    _5834 = mem[_5831]
                    votesForOption[stor2] = mem[_5831]
                    mem[0] = sha3(totalRounds, 7)
                    if not _5834:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_5831 + (32 * _5807) + 32] = totalRounds
                        mem[_5831 + (32 * _5807) + 64] = 96
                        _6915 = mem[96]
                        mem[_5831 + (32 * _5807) + 128] = mem[96]
                        mem[_5831 + (32 * _5807) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_5831 + (32 * _5807) + 96] = ceil32(mem[96]) + 128
                            _7637 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5831 + (32 * _5807) + ceil32(_6915) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5831 + (32 * _5807) + ceil32(_6915) + (32 * _7637) + 192
                            u = _5831 + (32 * _5807) + ceil32(_6915) + 192
                            while idx < _7637:
                                mem[u] = t + -_5831 + -(32 * _5807) + -ceil32(_6915) - 192
                                _7961 = mem[s]
                                _8089 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8089:
                                    mem[t + v + 32] = mem[_7961 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8089) > _8089:
                                    mem[t + _8089 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8089) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_5831 + (32 * _5807) + mem[96] + 160] = 0
                            mem[_5831 + (32 * _5807) + 96] = ceil32(mem[96]) + 128
                            _7661 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5831 + (32 * _5807) + ceil32(_6915) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5831 + (32 * _5807) + ceil32(_6915) + (32 * _7661) + 192
                            u = _5831 + (32 * _5807) + ceil32(_6915) + 192
                            while idx < _7661:
                                mem[u] = t + -_5831 + -(32 * _5807) + -ceil32(_6915) - 192
                                _7962 = mem[s]
                                _8090 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8090:
                                    mem[t + v + 32] = mem[_7962 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8090) > _8090:
                                    mem[t + _8090 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8090) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _5831 + 32
                        while _5831 + (32 * _5834) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _5834) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_5831 + (32 * _5807) + 32] = totalRounds
                        mem[_5831 + (32 * _5807) + 64] = 96
                        _7738 = mem[96]
                        mem[_5831 + (32 * _5807) + 128] = mem[96]
                        mem[_5831 + (32 * _5807) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_5831 + (32 * _5807) + 96] = ceil32(mem[96]) + 128
                            _8121 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5831 + (32 * _5807) + ceil32(_7738) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5831 + (32 * _5807) + ceil32(_7738) + (32 * _8121) + 192
                            u = _5831 + (32 * _5807) + ceil32(_7738) + 192
                            while idx < _8121:
                                mem[u] = t + -_5831 + -(32 * _5807) + -ceil32(_7738) - 192
                                _8211 = mem[s]
                                _8257 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8257:
                                    mem[t + v + 32] = mem[_8211 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8257) > _8257:
                                    mem[t + _8257 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8257) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_5831 + (32 * _5807) + mem[96] + 160] = 0
                            mem[_5831 + (32 * _5807) + 96] = ceil32(mem[96]) + 128
                            _8125 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5831 + (32 * _5807) + ceil32(_7738) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5831 + (32 * _5807) + ceil32(_7738) + (32 * _8125) + 192
                            u = _5831 + (32 * _5807) + ceil32(_7738) + 192
                            while idx < _8125:
                                mem[u] = t + -_5831 + -(32 * _5807) + -ceil32(_7738) - 192
                                _8212 = mem[s]
                                _8258 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8258:
                                    mem[t + v + 32] = mem[_8212 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8258) > _8258:
                                    mem[t + _8258 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8258) + 32
                                u = u + 32
                                continue 
                else:
                    mem[_5831 + 32 len 32 * _5807] = call.data[calldata.size len 32 * _5807]
                    mem[0] = totalRounds
                    mem[32] = 7
                    _5839 = mem[_5831]
                    votesForOption[stor2] = mem[_5831]
                    mem[0] = sha3(totalRounds, 7)
                    if not _5839:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_5831 + (32 * _5807) + 32] = totalRounds
                        mem[_5831 + (32 * _5807) + 64] = 96
                        _6916 = mem[96]
                        mem[_5831 + (32 * _5807) + 128] = mem[96]
                        mem[_5831 + (32 * _5807) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_5831 + (32 * _5807) + 96] = ceil32(mem[96]) + 128
                            _7639 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5831 + (32 * _5807) + ceil32(_6916) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5831 + (32 * _5807) + ceil32(_6916) + (32 * _7639) + 192
                            u = _5831 + (32 * _5807) + ceil32(_6916) + 192
                            while idx < _7639:
                                mem[u] = t + -_5831 + -(32 * _5807) + -ceil32(_6916) - 192
                                _7964 = mem[s]
                                _8091 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8091:
                                    mem[t + v + 32] = mem[_7964 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8091) > _8091:
                                    mem[t + _8091 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8091) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_5831 + (32 * _5807) + mem[96] + 160] = 0
                            mem[_5831 + (32 * _5807) + 96] = ceil32(mem[96]) + 128
                            _7662 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5831 + (32 * _5807) + ceil32(_6916) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5831 + (32 * _5807) + ceil32(_6916) + (32 * _7662) + 192
                            u = _5831 + (32 * _5807) + ceil32(_6916) + 192
                            while idx < _7662:
                                mem[u] = t + -_5831 + -(32 * _5807) + -ceil32(_6916) - 192
                                _7965 = mem[s]
                                _8092 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8092:
                                    mem[t + v + 32] = mem[_7965 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8092) > _8092:
                                    mem[t + _8092 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8092) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _5831 + 32
                        while _5831 + (32 * _5839) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _5839) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_5831 + (32 * _5807) + 32] = totalRounds
                        mem[_5831 + (32 * _5807) + 64] = 96
                        _7740 = mem[96]
                        mem[_5831 + (32 * _5807) + 128] = mem[96]
                        mem[_5831 + (32 * _5807) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_5831 + (32 * _5807) + 96] = ceil32(mem[96]) + 128
                            _8122 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5831 + (32 * _5807) + ceil32(_7740) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5831 + (32 * _5807) + ceil32(_7740) + (32 * _8122) + 192
                            u = _5831 + (32 * _5807) + ceil32(_7740) + 192
                            while idx < _8122:
                                mem[u] = t + -_5831 + -(32 * _5807) + -ceil32(_7740) - 192
                                _8215 = mem[s]
                                _8259 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8259:
                                    mem[t + v + 32] = mem[_8215 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8259) > _8259:
                                    mem[t + _8259 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8259) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_5831 + (32 * _5807) + mem[96] + 160] = 0
                            mem[_5831 + (32 * _5807) + 96] = ceil32(mem[96]) + 128
                            _8126 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5831 + (32 * _5807) + ceil32(_7740) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5831 + (32 * _5807) + ceil32(_7740) + (32 * _8126) + 192
                            u = _5831 + (32 * _5807) + ceil32(_7740) + 192
                            while idx < _8126:
                                mem[u] = t + -_5831 + -(32 * _5807) + -ceil32(_7740) - 192
                                _8216 = mem[s]
                                _8260 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8260:
                                    mem[t + v + 32] = mem[_8216 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8260) > _8260:
                                    mem[t + _8260 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8260) + 32
                                u = u + 32
                                continue 
        else:
            uint256(stor5[stor2].field_0) = 0
            idx = 0
            while uint255(stor5[stor2].field_1) + 31 / 32 > idx:
                uint256(stor5[stor2][idx].field_0) = 0
                idx = idx + 1
                continue 
            mem[32] = 6
            uint256(totalRoundOptions[stor2].field_0) = mem[ceil32(('cd', 4).length) + 128]
            mem[0] = sha3(totalRounds, 6)
            if not mem[ceil32(('cd', 4).length) + 128]:
                idx = 0
                while sha3(sha3(totalRounds, 6)) + uint256(totalRoundOptions[stor2].field_0) > idx + sha3(mem[0]):
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
                _3571 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _3580 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _3571) + 32
                if not _3571:
                    mem[0] = totalRounds
                    mem[32] = 7
                    _3590 = mem[_3580]
                    votesForOption[stor2] = mem[_3580]
                    mem[0] = sha3(totalRounds, 7)
                    if not _3590:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_3580 + (32 * _3571) + 32] = totalRounds
                        mem[_3580 + (32 * _3571) + 64] = 96
                        _4944 = mem[96]
                        mem[_3580 + (32 * _3571) + 128] = mem[96]
                        mem[_3580 + (32 * _3571) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_3580 + (32 * _3571) + 96] = ceil32(mem[96]) + 128
                            _5878 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3580 + (32 * _3571) + ceil32(_4944) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3580 + (32 * _3571) + ceil32(_4944) + (32 * _5878) + 192
                            u = _3580 + (32 * _3571) + ceil32(_4944) + 192
                            while idx < _5878:
                                mem[u] = t + -_3580 + -(32 * _3571) + -ceil32(_4944) - 192
                                _6693 = mem[s]
                                _6781 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _6781:
                                    mem[t + v + 32] = mem[_6693 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_6781) > _6781:
                                    mem[t + _6781 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_6781) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_3580 + (32 * _3571) + mem[96] + 160] = 0
                            mem[_3580 + (32 * _3571) + 96] = ceil32(mem[96]) + 128
                            _5910 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3580 + (32 * _3571) + ceil32(_4944) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3580 + (32 * _3571) + ceil32(_4944) + (32 * _5910) + 192
                            u = _3580 + (32 * _3571) + ceil32(_4944) + 192
                            while idx < _5910:
                                mem[u] = t + -_3580 + -(32 * _3571) + -ceil32(_4944) - 192
                                _6694 = mem[s]
                                _6782 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _6782:
                                    mem[t + v + 32] = mem[_6694 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_6782) > _6782:
                                    mem[t + _6782 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_6782) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _3580 + 32
                        while _3580 + (32 * _3590) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _3590) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_3580 + (32 * _3571) + 32] = totalRounds
                        mem[_3580 + (32 * _3571) + 64] = 96
                        _5957 = mem[96]
                        mem[_3580 + (32 * _3571) + 128] = mem[96]
                        mem[_3580 + (32 * _3571) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_3580 + (32 * _3571) + 96] = ceil32(mem[96]) + 128
                            _6819 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3580 + (32 * _3571) + ceil32(_5957) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3580 + (32 * _3571) + ceil32(_5957) + (32 * _6819) + 192
                            u = _3580 + (32 * _3571) + ceil32(_5957) + 192
                            while idx < _6819:
                                mem[u] = t + -_3580 + -(32 * _3571) + -ceil32(_5957) - 192
                                _7455 = mem[s]
                                _7597 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7597:
                                    mem[t + v + 32] = mem[_7455 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7597) > _7597:
                                    mem[t + _7597 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7597) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_3580 + (32 * _3571) + mem[96] + 160] = 0
                            mem[_3580 + (32 * _3571) + 96] = ceil32(mem[96]) + 128
                            _6859 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3580 + (32 * _3571) + ceil32(_5957) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3580 + (32 * _3571) + ceil32(_5957) + (32 * _6859) + 192
                            u = _3580 + (32 * _3571) + ceil32(_5957) + 192
                            while idx < _6859:
                                mem[u] = t + -_3580 + -(32 * _3571) + -ceil32(_5957) - 192
                                _7456 = mem[s]
                                _7598 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7598:
                                    mem[t + v + 32] = mem[_7456 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7598) > _7598:
                                    mem[t + _7598 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7598) + 32
                                u = u + 32
                                continue 
                else:
                    mem[_3580 + 32 len 32 * _3571] = call.data[calldata.size len 32 * _3571]
                    mem[0] = totalRounds
                    mem[32] = 7
                    _3607 = mem[_3580]
                    votesForOption[stor2] = mem[_3580]
                    mem[0] = sha3(totalRounds, 7)
                    if not _3607:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_3580 + (32 * _3571) + 32] = totalRounds
                        mem[_3580 + (32 * _3571) + 64] = 96
                        _4945 = mem[96]
                        mem[_3580 + (32 * _3571) + 128] = mem[96]
                        mem[_3580 + (32 * _3571) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_3580 + (32 * _3571) + 96] = ceil32(mem[96]) + 128
                            _5880 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3580 + (32 * _3571) + ceil32(_4945) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3580 + (32 * _3571) + ceil32(_4945) + (32 * _5880) + 192
                            u = _3580 + (32 * _3571) + ceil32(_4945) + 192
                            while idx < _5880:
                                mem[u] = t + -_3580 + -(32 * _3571) + -ceil32(_4945) - 192
                                _6696 = mem[s]
                                _6783 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _6783:
                                    mem[t + v + 32] = mem[_6696 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_6783) > _6783:
                                    mem[t + _6783 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_6783) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_3580 + (32 * _3571) + mem[96] + 160] = 0
                            mem[_3580 + (32 * _3571) + 96] = ceil32(mem[96]) + 128
                            _5911 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3580 + (32 * _3571) + ceil32(_4945) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3580 + (32 * _3571) + ceil32(_4945) + (32 * _5911) + 192
                            u = _3580 + (32 * _3571) + ceil32(_4945) + 192
                            while idx < _5911:
                                mem[u] = t + -_3580 + -(32 * _3571) + -ceil32(_4945) - 192
                                _6697 = mem[s]
                                _6784 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _6784:
                                    mem[t + v + 32] = mem[_6697 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_6784) > _6784:
                                    mem[t + _6784 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_6784) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _3580 + 32
                        while _3580 + (32 * _3607) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _3607) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_3580 + (32 * _3571) + 32] = totalRounds
                        mem[_3580 + (32 * _3571) + 64] = 96
                        _5959 = mem[96]
                        mem[_3580 + (32 * _3571) + 128] = mem[96]
                        mem[_3580 + (32 * _3571) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_3580 + (32 * _3571) + 96] = ceil32(mem[96]) + 128
                            _6820 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3580 + (32 * _3571) + ceil32(_5959) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3580 + (32 * _3571) + ceil32(_5959) + (32 * _6820) + 192
                            u = _3580 + (32 * _3571) + ceil32(_5959) + 192
                            while idx < _6820:
                                mem[u] = t + -_3580 + -(32 * _3571) + -ceil32(_5959) - 192
                                _7459 = mem[s]
                                _7599 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7599:
                                    mem[t + v + 32] = mem[_7459 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7599) > _7599:
                                    mem[t + _7599 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7599) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_3580 + (32 * _3571) + mem[96] + 160] = 0
                            mem[_3580 + (32 * _3571) + 96] = ceil32(mem[96]) + 128
                            _6860 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3580 + (32 * _3571) + ceil32(_5959) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3580 + (32 * _3571) + ceil32(_5959) + (32 * _6860) + 192
                            u = _3580 + (32 * _3571) + ceil32(_5959) + 192
                            while idx < _6860:
                                mem[u] = t + -_3580 + -(32 * _3571) + -ceil32(_5959) - 192
                                _7460 = mem[s]
                                _7600 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7600:
                                    mem[t + v + 32] = mem[_7460 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7600) > _7600:
                                    mem[t + _7600 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7600) + 32
                                u = u + 32
                                continue 
            else:
                s = 0
                idx = ceil32(('cd', 4).length) + 160
                while ceil32(('cd', 4).length) + (32 * mem[ceil32(('cd', 4).length) + 128]) + 160 > idx:
                    _3559 = mem[idx]
                    _3560 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _3560:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _3560) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _3559 + 32
                            while _3559 + _3560 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _3560 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _3560:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _3560) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _3559 + 32
                            while _3559 + _3560 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _3560 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(totalRounds, 6)) + uint256(totalRoundOptions[stor2].field_0) > idx:
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
                _4750 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _4764 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _4750) + 32
                if not _4750:
                    mem[0] = totalRounds
                    mem[32] = 7
                    _4776 = mem[_4764]
                    votesForOption[stor2] = mem[_4764]
                    mem[0] = sha3(totalRounds, 7)
                    if not _4776:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4764 + (32 * _4750) + 32] = totalRounds
                        mem[_4764 + (32 * _4750) + 64] = 96
                        _5960 = mem[96]
                        mem[_4764 + (32 * _4750) + 128] = mem[96]
                        mem[_4764 + (32 * _4750) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4764 + (32 * _4750) + 96] = ceil32(mem[96]) + 128
                            _6821 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4764 + (32 * _4750) + ceil32(_5960) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4764 + (32 * _4750) + ceil32(_5960) + (32 * _6821) + 192
                            u = _4764 + (32 * _4750) + ceil32(_5960) + 192
                            while idx < _6821:
                                mem[u] = t + -_4764 + -(32 * _4750) + -ceil32(_5960) - 192
                                _7461 = mem[s]
                                _7601 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7601:
                                    mem[t + v + 32] = mem[_7461 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7601) > _7601:
                                    mem[t + _7601 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7601) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4764 + (32 * _4750) + mem[96] + 160] = 0
                            mem[_4764 + (32 * _4750) + 96] = ceil32(mem[96]) + 128
                            _6861 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4764 + (32 * _4750) + ceil32(_5960) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4764 + (32 * _4750) + ceil32(_5960) + (32 * _6861) + 192
                            u = _4764 + (32 * _4750) + ceil32(_5960) + 192
                            while idx < _6861:
                                mem[u] = t + -_4764 + -(32 * _4750) + -ceil32(_5960) - 192
                                _7462 = mem[s]
                                _7602 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7602:
                                    mem[t + v + 32] = mem[_7462 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7602) > _7602:
                                    mem[t + _7602 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7602) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _4764 + 32
                        while _4764 + (32 * _4776) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _4776) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4764 + (32 * _4750) + 32] = totalRounds
                        mem[_4764 + (32 * _4750) + 64] = 96
                        _6926 = mem[96]
                        mem[_4764 + (32 * _4750) + 128] = mem[96]
                        mem[_4764 + (32 * _4750) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4764 + (32 * _4750) + 96] = ceil32(mem[96]) + 128
                            _7643 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4764 + (32 * _4750) + ceil32(_6926) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4764 + (32 * _4750) + ceil32(_6926) + (32 * _7643) + 192
                            u = _4764 + (32 * _4750) + ceil32(_6926) + 192
                            while idx < _7643:
                                mem[u] = t + -_4764 + -(32 * _4750) + -ceil32(_6926) - 192
                                _7985 = mem[s]
                                _8097 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8097:
                                    mem[t + v + 32] = mem[_7985 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8097) > _8097:
                                    mem[t + _8097 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8097) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4764 + (32 * _4750) + mem[96] + 160] = 0
                            mem[_4764 + (32 * _4750) + 96] = ceil32(mem[96]) + 128
                            _7665 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4764 + (32 * _4750) + ceil32(_6926) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4764 + (32 * _4750) + ceil32(_6926) + (32 * _7665) + 192
                            u = _4764 + (32 * _4750) + ceil32(_6926) + 192
                            while idx < _7665:
                                mem[u] = t + -_4764 + -(32 * _4750) + -ceil32(_6926) - 192
                                _7986 = mem[s]
                                _8098 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8098:
                                    mem[t + v + 32] = mem[_7986 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8098) > _8098:
                                    mem[t + _8098 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8098) + 32
                                u = u + 32
                                continue 
                else:
                    mem[_4764 + 32 len 32 * _4750] = call.data[calldata.size len 32 * _4750]
                    mem[0] = totalRounds
                    mem[32] = 7
                    _4797 = mem[_4764]
                    votesForOption[stor2] = mem[_4764]
                    mem[0] = sha3(totalRounds, 7)
                    if not _4797:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4764 + (32 * _4750) + 32] = totalRounds
                        mem[_4764 + (32 * _4750) + 64] = 96
                        _5961 = mem[96]
                        mem[_4764 + (32 * _4750) + 128] = mem[96]
                        mem[_4764 + (32 * _4750) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4764 + (32 * _4750) + 96] = ceil32(mem[96]) + 128
                            _6823 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4764 + (32 * _4750) + ceil32(_5961) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4764 + (32 * _4750) + ceil32(_5961) + (32 * _6823) + 192
                            u = _4764 + (32 * _4750) + ceil32(_5961) + 192
                            while idx < _6823:
                                mem[u] = t + -_4764 + -(32 * _4750) + -ceil32(_5961) - 192
                                _7464 = mem[s]
                                _7603 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7603:
                                    mem[t + v + 32] = mem[_7464 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7603) > _7603:
                                    mem[t + _7603 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7603) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4764 + (32 * _4750) + mem[96] + 160] = 0
                            mem[_4764 + (32 * _4750) + 96] = ceil32(mem[96]) + 128
                            _6862 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4764 + (32 * _4750) + ceil32(_5961) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4764 + (32 * _4750) + ceil32(_5961) + (32 * _6862) + 192
                            u = _4764 + (32 * _4750) + ceil32(_5961) + 192
                            while idx < _6862:
                                mem[u] = t + -_4764 + -(32 * _4750) + -ceil32(_5961) - 192
                                _7465 = mem[s]
                                _7604 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7604:
                                    mem[t + v + 32] = mem[_7465 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7604) > _7604:
                                    mem[t + _7604 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7604) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _4764 + 32
                        while _4764 + (32 * _4797) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _4797) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4764 + (32 * _4750) + 32] = totalRounds
                        mem[_4764 + (32 * _4750) + 64] = 96
                        _6928 = mem[96]
                        mem[_4764 + (32 * _4750) + 128] = mem[96]
                        mem[_4764 + (32 * _4750) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4764 + (32 * _4750) + 96] = ceil32(mem[96]) + 128
                            _7644 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4764 + (32 * _4750) + ceil32(_6928) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4764 + (32 * _4750) + ceil32(_6928) + (32 * _7644) + 192
                            u = _4764 + (32 * _4750) + ceil32(_6928) + 192
                            while idx < _7644:
                                mem[u] = t + -_4764 + -(32 * _4750) + -ceil32(_6928) - 192
                                _7989 = mem[s]
                                _8099 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8099:
                                    mem[t + v + 32] = mem[_7989 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8099) > _8099:
                                    mem[t + _8099 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8099) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4764 + (32 * _4750) + mem[96] + 160] = 0
                            mem[_4764 + (32 * _4750) + 96] = ceil32(mem[96]) + 128
                            _7666 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4764 + (32 * _4750) + ceil32(_6928) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4764 + (32 * _4750) + ceil32(_6928) + (32 * _7666) + 192
                            u = _4764 + (32 * _4750) + ceil32(_6928) + 192
                            while idx < _7666:
                                mem[u] = t + -_4764 + -(32 * _4750) + -ceil32(_6928) - 192
                                _7990 = mem[s]
                                _8100 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8100:
                                    mem[t + v + 32] = mem[_7990 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8100) > _8100:
                                    mem[t + _8100 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8100) + 32
                                u = u + 32
                                continue 
    else:
        if bool(stor5[stor2].field_0) == stor5[stor2].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if mem[96]:
            uint256(stor5[stor2][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
            mem[32] = 6
            uint256(totalRoundOptions[stor2].field_0) = mem[ceil32(('cd', 4).length) + 128]
            mem[0] = sha3(totalRounds, 6)
            if not mem[ceil32(('cd', 4).length) + 128]:
                idx = 0
                while sha3(sha3(totalRounds, 6)) + uint256(totalRoundOptions[stor2].field_0) > idx + sha3(mem[0]):
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
                _4754 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _4766 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _4754) + 32
                if not _4754:
                    mem[0] = totalRounds
                    mem[32] = 7
                    _4780 = mem[_4766]
                    votesForOption[stor2] = mem[_4766]
                    mem[0] = sha3(totalRounds, 7)
                    if not _4780:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4766 + (32 * _4754) + 32] = totalRounds
                        mem[_4766 + (32 * _4754) + 64] = 96
                        _5968 = mem[96]
                        mem[_4766 + (32 * _4754) + 128] = mem[96]
                        mem[_4766 + (32 * _4754) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4766 + (32 * _4754) + 96] = ceil32(mem[96]) + 128
                            _6831 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4766 + (32 * _4754) + ceil32(_5968) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4766 + (32 * _4754) + ceil32(_5968) + (32 * _6831) + 192
                            u = _4766 + (32 * _4754) + ceil32(_5968) + 192
                            while idx < _6831:
                                mem[u] = t + -_4766 + -(32 * _4754) + -ceil32(_5968) - 192
                                _7481 = mem[s]
                                _7613 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7613:
                                    mem[t + v + 32] = mem[_7481 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7613) > _7613:
                                    mem[t + _7613 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7613) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4766 + (32 * _4754) + mem[96] + 160] = 0
                            mem[_4766 + (32 * _4754) + 96] = ceil32(mem[96]) + 128
                            _6867 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4766 + (32 * _4754) + ceil32(_5968) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4766 + (32 * _4754) + ceil32(_5968) + (32 * _6867) + 192
                            u = _4766 + (32 * _4754) + ceil32(_5968) + 192
                            while idx < _6867:
                                mem[u] = t + -_4766 + -(32 * _4754) + -ceil32(_5968) - 192
                                _7482 = mem[s]
                                _7614 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7614:
                                    mem[t + v + 32] = mem[_7482 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7614) > _7614:
                                    mem[t + _7614 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7614) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _4766 + 32
                        while _4766 + (32 * _4780) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _4780) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4766 + (32 * _4754) + 32] = totalRounds
                        mem[_4766 + (32 * _4754) + 64] = 96
                        _6936 = mem[96]
                        mem[_4766 + (32 * _4754) + 128] = mem[96]
                        mem[_4766 + (32 * _4754) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4766 + (32 * _4754) + 96] = ceil32(mem[96]) + 128
                            _7647 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4766 + (32 * _4754) + ceil32(_6936) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4766 + (32 * _4754) + ceil32(_6936) + (32 * _7647) + 192
                            u = _4766 + (32 * _4754) + ceil32(_6936) + 192
                            while idx < _7647:
                                mem[u] = t + -_4766 + -(32 * _4754) + -ceil32(_6936) - 192
                                _8005 = mem[s]
                                _8105 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8105:
                                    mem[t + v + 32] = mem[_8005 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8105) > _8105:
                                    mem[t + _8105 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8105) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4766 + (32 * _4754) + mem[96] + 160] = 0
                            mem[_4766 + (32 * _4754) + 96] = ceil32(mem[96]) + 128
                            _7669 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4766 + (32 * _4754) + ceil32(_6936) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4766 + (32 * _4754) + ceil32(_6936) + (32 * _7669) + 192
                            u = _4766 + (32 * _4754) + ceil32(_6936) + 192
                            while idx < _7669:
                                mem[u] = t + -_4766 + -(32 * _4754) + -ceil32(_6936) - 192
                                _8006 = mem[s]
                                _8106 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8106:
                                    mem[t + v + 32] = mem[_8006 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8106) > _8106:
                                    mem[t + _8106 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8106) + 32
                                u = u + 32
                                continue 
                else:
                    mem[_4766 + 32 len 32 * _4754] = call.data[calldata.size len 32 * _4754]
                    mem[0] = totalRounds
                    mem[32] = 7
                    _4803 = mem[_4766]
                    votesForOption[stor2] = mem[_4766]
                    mem[0] = sha3(totalRounds, 7)
                    if not _4803:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4766 + (32 * _4754) + 32] = totalRounds
                        mem[_4766 + (32 * _4754) + 64] = 96
                        _5969 = mem[96]
                        mem[_4766 + (32 * _4754) + 128] = mem[96]
                        mem[_4766 + (32 * _4754) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4766 + (32 * _4754) + 96] = ceil32(mem[96]) + 128
                            _6833 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4766 + (32 * _4754) + ceil32(_5969) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4766 + (32 * _4754) + ceil32(_5969) + (32 * _6833) + 192
                            u = _4766 + (32 * _4754) + ceil32(_5969) + 192
                            while idx < _6833:
                                mem[u] = t + -_4766 + -(32 * _4754) + -ceil32(_5969) - 192
                                _7484 = mem[s]
                                _7615 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7615:
                                    mem[t + v + 32] = mem[_7484 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7615) > _7615:
                                    mem[t + _7615 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7615) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4766 + (32 * _4754) + mem[96] + 160] = 0
                            mem[_4766 + (32 * _4754) + 96] = ceil32(mem[96]) + 128
                            _6868 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4766 + (32 * _4754) + ceil32(_5969) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4766 + (32 * _4754) + ceil32(_5969) + (32 * _6868) + 192
                            u = _4766 + (32 * _4754) + ceil32(_5969) + 192
                            while idx < _6868:
                                mem[u] = t + -_4766 + -(32 * _4754) + -ceil32(_5969) - 192
                                _7485 = mem[s]
                                _7616 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7616:
                                    mem[t + v + 32] = mem[_7485 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7616) > _7616:
                                    mem[t + _7616 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7616) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _4766 + 32
                        while _4766 + (32 * _4803) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _4803) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4766 + (32 * _4754) + 32] = totalRounds
                        mem[_4766 + (32 * _4754) + 64] = 96
                        _6938 = mem[96]
                        mem[_4766 + (32 * _4754) + 128] = mem[96]
                        mem[_4766 + (32 * _4754) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4766 + (32 * _4754) + 96] = ceil32(mem[96]) + 128
                            _7648 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4766 + (32 * _4754) + ceil32(_6938) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4766 + (32 * _4754) + ceil32(_6938) + (32 * _7648) + 192
                            u = _4766 + (32 * _4754) + ceil32(_6938) + 192
                            while idx < _7648:
                                mem[u] = t + -_4766 + -(32 * _4754) + -ceil32(_6938) - 192
                                _8009 = mem[s]
                                _8107 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8107:
                                    mem[t + v + 32] = mem[_8009 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8107) > _8107:
                                    mem[t + _8107 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8107) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4766 + (32 * _4754) + mem[96] + 160] = 0
                            mem[_4766 + (32 * _4754) + 96] = ceil32(mem[96]) + 128
                            _7670 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4766 + (32 * _4754) + ceil32(_6938) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4766 + (32 * _4754) + ceil32(_6938) + (32 * _7670) + 192
                            u = _4766 + (32 * _4754) + ceil32(_6938) + 192
                            while idx < _7670:
                                mem[u] = t + -_4766 + -(32 * _4754) + -ceil32(_6938) - 192
                                _8010 = mem[s]
                                _8108 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8108:
                                    mem[t + v + 32] = mem[_8010 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8108) > _8108:
                                    mem[t + _8108 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8108) + 32
                                u = u + 32
                                continue 
            else:
                s = 0
                idx = ceil32(('cd', 4).length) + 160
                while ceil32(('cd', 4).length) + (32 * mem[ceil32(('cd', 4).length) + 128]) + 160 > idx:
                    _4731 = mem[idx]
                    _4732 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _4732:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _4732) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _4731 + 32
                            while _4731 + _4732 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _4732 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _4732:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _4732) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _4731 + 32
                            while _4731 + _4732 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _4732 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(totalRounds, 6)) + uint256(totalRoundOptions[stor2].field_0) > idx:
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
                _5822 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _5832 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _5822) + 32
                if not _5822:
                    mem[0] = totalRounds
                    mem[32] = 7
                    _5836 = mem[_5832]
                    votesForOption[stor2] = mem[_5832]
                    mem[0] = sha3(totalRounds, 7)
                    if not _5836:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_5832 + (32 * _5822) + 32] = totalRounds
                        mem[_5832 + (32 * _5822) + 64] = 96
                        _6939 = mem[96]
                        mem[_5832 + (32 * _5822) + 128] = mem[96]
                        mem[_5832 + (32 * _5822) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_5832 + (32 * _5822) + 96] = ceil32(mem[96]) + 128
                            _7649 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5832 + (32 * _5822) + ceil32(_6939) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5832 + (32 * _5822) + ceil32(_6939) + (32 * _7649) + 192
                            u = _5832 + (32 * _5822) + ceil32(_6939) + 192
                            while idx < _7649:
                                mem[u] = t + -_5832 + -(32 * _5822) + -ceil32(_6939) - 192
                                _8011 = mem[s]
                                _8109 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8109:
                                    mem[t + v + 32] = mem[_8011 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8109) > _8109:
                                    mem[t + _8109 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8109) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_5832 + (32 * _5822) + mem[96] + 160] = 0
                            mem[_5832 + (32 * _5822) + 96] = ceil32(mem[96]) + 128
                            _7671 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5832 + (32 * _5822) + ceil32(_6939) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5832 + (32 * _5822) + ceil32(_6939) + (32 * _7671) + 192
                            u = _5832 + (32 * _5822) + ceil32(_6939) + 192
                            while idx < _7671:
                                mem[u] = t + -_5832 + -(32 * _5822) + -ceil32(_6939) - 192
                                _8012 = mem[s]
                                _8110 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8110:
                                    mem[t + v + 32] = mem[_8012 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8110) > _8110:
                                    mem[t + _8110 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8110) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _5832 + 32
                        while _5832 + (32 * _5836) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _5836) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_5832 + (32 * _5822) + 32] = totalRounds
                        mem[_5832 + (32 * _5822) + 64] = 96
                        _7750 = mem[96]
                        mem[_5832 + (32 * _5822) + 128] = mem[96]
                        mem[_5832 + (32 * _5822) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_5832 + (32 * _5822) + 96] = ceil32(mem[96]) + 128
                            _8123 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5832 + (32 * _5822) + ceil32(_7750) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5832 + (32 * _5822) + ceil32(_7750) + (32 * _8123) + 192
                            u = _5832 + (32 * _5822) + ceil32(_7750) + 192
                            while idx < _8123:
                                mem[u] = t + -_5832 + -(32 * _5822) + -ceil32(_7750) - 192
                                _8235 = mem[s]
                                _8261 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8261:
                                    mem[t + v + 32] = mem[_8235 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8261) > _8261:
                                    mem[t + _8261 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8261) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_5832 + (32 * _5822) + mem[96] + 160] = 0
                            mem[_5832 + (32 * _5822) + 96] = ceil32(mem[96]) + 128
                            _8127 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5832 + (32 * _5822) + ceil32(_7750) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5832 + (32 * _5822) + ceil32(_7750) + (32 * _8127) + 192
                            u = _5832 + (32 * _5822) + ceil32(_7750) + 192
                            while idx < _8127:
                                mem[u] = t + -_5832 + -(32 * _5822) + -ceil32(_7750) - 192
                                _8236 = mem[s]
                                _8262 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8262:
                                    mem[t + v + 32] = mem[_8236 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8262) > _8262:
                                    mem[t + _8262 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8262) + 32
                                u = u + 32
                                continue 
                else:
                    mem[_5832 + 32 len 32 * _5822] = call.data[calldata.size len 32 * _5822]
                    mem[0] = totalRounds
                    mem[32] = 7
                    _5842 = mem[_5832]
                    votesForOption[stor2] = mem[_5832]
                    mem[0] = sha3(totalRounds, 7)
                    if not _5842:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_5832 + (32 * _5822) + 32] = totalRounds
                        mem[_5832 + (32 * _5822) + 64] = 96
                        _6940 = mem[96]
                        mem[_5832 + (32 * _5822) + 128] = mem[96]
                        mem[_5832 + (32 * _5822) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_5832 + (32 * _5822) + 96] = ceil32(mem[96]) + 128
                            _7651 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5832 + (32 * _5822) + ceil32(_6940) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5832 + (32 * _5822) + ceil32(_6940) + (32 * _7651) + 192
                            u = _5832 + (32 * _5822) + ceil32(_6940) + 192
                            while idx < _7651:
                                mem[u] = t + -_5832 + -(32 * _5822) + -ceil32(_6940) - 192
                                _8014 = mem[s]
                                _8111 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8111:
                                    mem[t + v + 32] = mem[_8014 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8111) > _8111:
                                    mem[t + _8111 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8111) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_5832 + (32 * _5822) + mem[96] + 160] = 0
                            mem[_5832 + (32 * _5822) + 96] = ceil32(mem[96]) + 128
                            _7672 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5832 + (32 * _5822) + ceil32(_6940) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5832 + (32 * _5822) + ceil32(_6940) + (32 * _7672) + 192
                            u = _5832 + (32 * _5822) + ceil32(_6940) + 192
                            while idx < _7672:
                                mem[u] = t + -_5832 + -(32 * _5822) + -ceil32(_6940) - 192
                                _8015 = mem[s]
                                _8112 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8112:
                                    mem[t + v + 32] = mem[_8015 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8112) > _8112:
                                    mem[t + _8112 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8112) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _5832 + 32
                        while _5832 + (32 * _5842) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _5842) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_5832 + (32 * _5822) + 32] = totalRounds
                        mem[_5832 + (32 * _5822) + 64] = 96
                        _7752 = mem[96]
                        mem[_5832 + (32 * _5822) + 128] = mem[96]
                        mem[_5832 + (32 * _5822) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_5832 + (32 * _5822) + 96] = ceil32(mem[96]) + 128
                            _8124 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5832 + (32 * _5822) + ceil32(_7752) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5832 + (32 * _5822) + ceil32(_7752) + (32 * _8124) + 192
                            u = _5832 + (32 * _5822) + ceil32(_7752) + 192
                            while idx < _8124:
                                mem[u] = t + -_5832 + -(32 * _5822) + -ceil32(_7752) - 192
                                _8239 = mem[s]
                                _8263 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8263:
                                    mem[t + v + 32] = mem[_8239 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8263) > _8263:
                                    mem[t + _8263 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8263) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_5832 + (32 * _5822) + mem[96] + 160] = 0
                            mem[_5832 + (32 * _5822) + 96] = ceil32(mem[96]) + 128
                            _8128 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_5832 + (32 * _5822) + ceil32(_7752) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _5832 + (32 * _5822) + ceil32(_7752) + (32 * _8128) + 192
                            u = _5832 + (32 * _5822) + ceil32(_7752) + 192
                            while idx < _8128:
                                mem[u] = t + -_5832 + -(32 * _5822) + -ceil32(_7752) - 192
                                _8240 = mem[s]
                                _8264 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8264:
                                    mem[t + v + 32] = mem[_8240 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8264) > _8264:
                                    mem[t + _8264 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8264) + 32
                                u = u + 32
                                continue 
        else:
            uint256(stor5[stor2].field_0) = 0
            idx = 0
            while stor5[stor2].field_1 % 128 + 31 / 32 > idx:
                uint256(stor5[stor2][idx].field_0) = 0
                idx = idx + 1
                continue 
            mem[32] = 6
            uint256(totalRoundOptions[stor2].field_0) = mem[ceil32(('cd', 4).length) + 128]
            mem[0] = sha3(totalRounds, 6)
            if not mem[ceil32(('cd', 4).length) + 128]:
                idx = 0
                while sha3(sha3(totalRounds, 6)) + uint256(totalRoundOptions[stor2].field_0) > idx + sha3(mem[0]):
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
                _3576 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _3584 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _3576) + 32
                if not _3576:
                    mem[0] = totalRounds
                    mem[32] = 7
                    _3596 = mem[_3584]
                    votesForOption[stor2] = mem[_3584]
                    mem[0] = sha3(totalRounds, 7)
                    if not _3596:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_3584 + (32 * _3576) + 32] = totalRounds
                        mem[_3584 + (32 * _3576) + 64] = 96
                        _4954 = mem[96]
                        mem[_3584 + (32 * _3576) + 128] = mem[96]
                        mem[_3584 + (32 * _3576) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_3584 + (32 * _3576) + 96] = ceil32(mem[96]) + 128
                            _5899 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3584 + (32 * _3576) + ceil32(_4954) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3584 + (32 * _3576) + ceil32(_4954) + (32 * _5899) + 192
                            u = _3584 + (32 * _3576) + ceil32(_4954) + 192
                            while idx < _5899:
                                mem[u] = t + -_3584 + -(32 * _3576) + -ceil32(_4954) - 192
                                _6721 = mem[s]
                                _6793 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _6793:
                                    mem[t + v + 32] = mem[_6721 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_6793) > _6793:
                                    mem[t + _6793 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_6793) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_3584 + (32 * _3576) + mem[96] + 160] = 0
                            mem[_3584 + (32 * _3576) + 96] = ceil32(mem[96]) + 128
                            _5917 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3584 + (32 * _3576) + ceil32(_4954) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3584 + (32 * _3576) + ceil32(_4954) + (32 * _5917) + 192
                            u = _3584 + (32 * _3576) + ceil32(_4954) + 192
                            while idx < _5917:
                                mem[u] = t + -_3584 + -(32 * _3576) + -ceil32(_4954) - 192
                                _6722 = mem[s]
                                _6794 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _6794:
                                    mem[t + v + 32] = mem[_6722 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_6794) > _6794:
                                    mem[t + _6794 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_6794) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _3584 + 32
                        while _3584 + (32 * _3596) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _3596) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_3584 + (32 * _3576) + 32] = totalRounds
                        mem[_3584 + (32 * _3576) + 64] = 96
                        _5978 = mem[96]
                        mem[_3584 + (32 * _3576) + 128] = mem[96]
                        mem[_3584 + (32 * _3576) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_3584 + (32 * _3576) + 96] = ceil32(mem[96]) + 128
                            _6843 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3584 + (32 * _3576) + ceil32(_5978) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3584 + (32 * _3576) + ceil32(_5978) + (32 * _6843) + 192
                            u = _3584 + (32 * _3576) + ceil32(_5978) + 192
                            while idx < _6843:
                                mem[u] = t + -_3584 + -(32 * _3576) + -ceil32(_5978) - 192
                                _7505 = mem[s]
                                _7625 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7625:
                                    mem[t + v + 32] = mem[_7505 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7625) > _7625:
                                    mem[t + _7625 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7625) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_3584 + (32 * _3576) + mem[96] + 160] = 0
                            mem[_3584 + (32 * _3576) + 96] = ceil32(mem[96]) + 128
                            _6873 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3584 + (32 * _3576) + ceil32(_5978) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3584 + (32 * _3576) + ceil32(_5978) + (32 * _6873) + 192
                            u = _3584 + (32 * _3576) + ceil32(_5978) + 192
                            while idx < _6873:
                                mem[u] = t + -_3584 + -(32 * _3576) + -ceil32(_5978) - 192
                                _7506 = mem[s]
                                _7626 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7626:
                                    mem[t + v + 32] = mem[_7506 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7626) > _7626:
                                    mem[t + _7626 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7626) + 32
                                u = u + 32
                                continue 
                else:
                    mem[_3584 + 32 len 32 * _3576] = call.data[calldata.size len 32 * _3576]
                    mem[0] = totalRounds
                    mem[32] = 7
                    _3619 = mem[_3584]
                    votesForOption[stor2] = mem[_3584]
                    mem[0] = sha3(totalRounds, 7)
                    if not _3619:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_3584 + (32 * _3576) + 32] = totalRounds
                        mem[_3584 + (32 * _3576) + 64] = 96
                        _4955 = mem[96]
                        mem[_3584 + (32 * _3576) + 128] = mem[96]
                        mem[_3584 + (32 * _3576) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_3584 + (32 * _3576) + 96] = ceil32(mem[96]) + 128
                            _5901 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3584 + (32 * _3576) + ceil32(_4955) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3584 + (32 * _3576) + ceil32(_4955) + (32 * _5901) + 192
                            u = _3584 + (32 * _3576) + ceil32(_4955) + 192
                            while idx < _5901:
                                mem[u] = t + -_3584 + -(32 * _3576) + -ceil32(_4955) - 192
                                _6724 = mem[s]
                                _6795 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _6795:
                                    mem[t + v + 32] = mem[_6724 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_6795) > _6795:
                                    mem[t + _6795 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_6795) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_3584 + (32 * _3576) + mem[96] + 160] = 0
                            mem[_3584 + (32 * _3576) + 96] = ceil32(mem[96]) + 128
                            _5918 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3584 + (32 * _3576) + ceil32(_4955) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3584 + (32 * _3576) + ceil32(_4955) + (32 * _5918) + 192
                            u = _3584 + (32 * _3576) + ceil32(_4955) + 192
                            while idx < _5918:
                                mem[u] = t + -_3584 + -(32 * _3576) + -ceil32(_4955) - 192
                                _6725 = mem[s]
                                _6796 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _6796:
                                    mem[t + v + 32] = mem[_6725 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_6796) > _6796:
                                    mem[t + _6796 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_6796) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _3584 + 32
                        while _3584 + (32 * _3619) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _3619) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_3584 + (32 * _3576) + 32] = totalRounds
                        mem[_3584 + (32 * _3576) + 64] = 96
                        _5980 = mem[96]
                        mem[_3584 + (32 * _3576) + 128] = mem[96]
                        mem[_3584 + (32 * _3576) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_3584 + (32 * _3576) + 96] = ceil32(mem[96]) + 128
                            _6844 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3584 + (32 * _3576) + ceil32(_5980) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3584 + (32 * _3576) + ceil32(_5980) + (32 * _6844) + 192
                            u = _3584 + (32 * _3576) + ceil32(_5980) + 192
                            while idx < _6844:
                                mem[u] = t + -_3584 + -(32 * _3576) + -ceil32(_5980) - 192
                                _7509 = mem[s]
                                _7627 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7627:
                                    mem[t + v + 32] = mem[_7509 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7627) > _7627:
                                    mem[t + _7627 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7627) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_3584 + (32 * _3576) + mem[96] + 160] = 0
                            mem[_3584 + (32 * _3576) + 96] = ceil32(mem[96]) + 128
                            _6874 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_3584 + (32 * _3576) + ceil32(_5980) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _3584 + (32 * _3576) + ceil32(_5980) + (32 * _6874) + 192
                            u = _3584 + (32 * _3576) + ceil32(_5980) + 192
                            while idx < _6874:
                                mem[u] = t + -_3584 + -(32 * _3576) + -ceil32(_5980) - 192
                                _7510 = mem[s]
                                _7628 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7628:
                                    mem[t + v + 32] = mem[_7510 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7628) > _7628:
                                    mem[t + _7628 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7628) + 32
                                u = u + 32
                                continue 
            else:
                s = 0
                idx = ceil32(('cd', 4).length) + 160
                while ceil32(('cd', 4).length) + (32 * mem[ceil32(('cd', 4).length) + 128]) + 160 > idx:
                    _3565 = mem[idx]
                    _3566 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _3566:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _3566) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _3565 + 32
                            while _3565 + _3566 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _3566 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _3566:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _3566) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _3565 + 32
                            while _3565 + _3566 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _3566 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(totalRounds, 6)) + uint256(totalRoundOptions[stor2].field_0) > idx:
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
                _4760 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _4768 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _4760) + 32
                if not _4760:
                    mem[0] = totalRounds
                    mem[32] = 7
                    _4784 = mem[_4768]
                    votesForOption[stor2] = mem[_4768]
                    mem[0] = sha3(totalRounds, 7)
                    if not _4784:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4768 + (32 * _4760) + 32] = totalRounds
                        mem[_4768 + (32 * _4760) + 64] = 96
                        _5981 = mem[96]
                        mem[_4768 + (32 * _4760) + 128] = mem[96]
                        mem[_4768 + (32 * _4760) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4768 + (32 * _4760) + 96] = ceil32(mem[96]) + 128
                            _6845 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4768 + (32 * _4760) + ceil32(_5981) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4768 + (32 * _4760) + ceil32(_5981) + (32 * _6845) + 192
                            u = _4768 + (32 * _4760) + ceil32(_5981) + 192
                            while idx < _6845:
                                mem[u] = t + -_4768 + -(32 * _4760) + -ceil32(_5981) - 192
                                _7511 = mem[s]
                                _7629 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7629:
                                    mem[t + v + 32] = mem[_7511 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7629) > _7629:
                                    mem[t + _7629 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7629) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4768 + (32 * _4760) + mem[96] + 160] = 0
                            mem[_4768 + (32 * _4760) + 96] = ceil32(mem[96]) + 128
                            _6875 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4768 + (32 * _4760) + ceil32(_5981) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4768 + (32 * _4760) + ceil32(_5981) + (32 * _6875) + 192
                            u = _4768 + (32 * _4760) + ceil32(_5981) + 192
                            while idx < _6875:
                                mem[u] = t + -_4768 + -(32 * _4760) + -ceil32(_5981) - 192
                                _7512 = mem[s]
                                _7630 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7630:
                                    mem[t + v + 32] = mem[_7512 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7630) > _7630:
                                    mem[t + _7630 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7630) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _4768 + 32
                        while _4768 + (32 * _4784) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _4784) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4768 + (32 * _4760) + 32] = totalRounds
                        mem[_4768 + (32 * _4760) + 64] = 96
                        _6950 = mem[96]
                        mem[_4768 + (32 * _4760) + 128] = mem[96]
                        mem[_4768 + (32 * _4760) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4768 + (32 * _4760) + 96] = ceil32(mem[96]) + 128
                            _7655 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4768 + (32 * _4760) + ceil32(_6950) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4768 + (32 * _4760) + ceil32(_6950) + (32 * _7655) + 192
                            u = _4768 + (32 * _4760) + ceil32(_6950) + 192
                            while idx < _7655:
                                mem[u] = t + -_4768 + -(32 * _4760) + -ceil32(_6950) - 192
                                _8035 = mem[s]
                                _8117 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8117:
                                    mem[t + v + 32] = mem[_8035 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8117) > _8117:
                                    mem[t + _8117 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8117) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4768 + (32 * _4760) + mem[96] + 160] = 0
                            mem[_4768 + (32 * _4760) + 96] = ceil32(mem[96]) + 128
                            _7675 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4768 + (32 * _4760) + ceil32(_6950) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4768 + (32 * _4760) + ceil32(_6950) + (32 * _7675) + 192
                            u = _4768 + (32 * _4760) + ceil32(_6950) + 192
                            while idx < _7675:
                                mem[u] = t + -_4768 + -(32 * _4760) + -ceil32(_6950) - 192
                                _8036 = mem[s]
                                _8118 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8118:
                                    mem[t + v + 32] = mem[_8036 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8118) > _8118:
                                    mem[t + _8118 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8118) + 32
                                u = u + 32
                                continue 
                else:
                    mem[_4768 + 32 len 32 * _4760] = call.data[calldata.size len 32 * _4760]
                    mem[0] = totalRounds
                    mem[32] = 7
                    _4810 = mem[_4768]
                    votesForOption[stor2] = mem[_4768]
                    mem[0] = sha3(totalRounds, 7)
                    if not _4810:
                        idx = 0
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4768 + (32 * _4760) + 32] = totalRounds
                        mem[_4768 + (32 * _4760) + 64] = 96
                        _5982 = mem[96]
                        mem[_4768 + (32 * _4760) + 128] = mem[96]
                        mem[_4768 + (32 * _4760) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4768 + (32 * _4760) + 96] = ceil32(mem[96]) + 128
                            _6847 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4768 + (32 * _4760) + ceil32(_5982) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4768 + (32 * _4760) + ceil32(_5982) + (32 * _6847) + 192
                            u = _4768 + (32 * _4760) + ceil32(_5982) + 192
                            while idx < _6847:
                                mem[u] = t + -_4768 + -(32 * _4760) + -ceil32(_5982) - 192
                                _7514 = mem[s]
                                _7631 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7631:
                                    mem[t + v + 32] = mem[_7514 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7631) > _7631:
                                    mem[t + _7631 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7631) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4768 + (32 * _4760) + mem[96] + 160] = 0
                            mem[_4768 + (32 * _4760) + 96] = ceil32(mem[96]) + 128
                            _6876 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4768 + (32 * _4760) + ceil32(_5982) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4768 + (32 * _4760) + ceil32(_5982) + (32 * _6876) + 192
                            u = _4768 + (32 * _4760) + ceil32(_5982) + 192
                            while idx < _6876:
                                mem[u] = t + -_4768 + -(32 * _4760) + -ceil32(_5982) - 192
                                _7515 = mem[s]
                                _7632 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7632:
                                    mem[t + v + 32] = mem[_7515 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7632) > _7632:
                                    mem[t + _7632 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_7632) + 32
                                u = u + 32
                                continue 
                    else:
                        s = 0
                        idx = _4768 + 32
                        while _4768 + (32 * _4810) + 32 > idx:
                            votesForOption[stor2][s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _4810) + 31) >> 5
                        while votesForOption[stor2] > idx:
                            votesForOption[stor2][idx] = 0
                            idx = idx + 1
                            continue 
                        activeRounds.length++
                        mem[0] = 3
                        activeRounds[activeRounds.length] = totalRounds
                        if totalRounds == -1:
                            revert with 'NH{q', 17
                        totalRounds++
                        mem[_4768 + (32 * _4760) + 32] = totalRounds
                        mem[_4768 + (32 * _4760) + 64] = 96
                        _6952 = mem[96]
                        mem[_4768 + (32 * _4760) + 128] = mem[96]
                        mem[_4768 + (32 * _4760) + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            mem[_4768 + (32 * _4760) + 96] = ceil32(mem[96]) + 128
                            _7656 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4768 + (32 * _4760) + ceil32(_6952) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4768 + (32 * _4760) + ceil32(_6952) + (32 * _7656) + 192
                            u = _4768 + (32 * _4760) + ceil32(_6952) + 192
                            while idx < _7656:
                                mem[u] = t + -_4768 + -(32 * _4760) + -ceil32(_6952) - 192
                                _8039 = mem[s]
                                _8119 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8119:
                                    mem[t + v + 32] = mem[_8039 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8119) > _8119:
                                    mem[t + _8119 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8119) + 32
                                u = u + 32
                                continue 
                        else:
                            mem[_4768 + (32 * _4760) + mem[96] + 160] = 0
                            mem[_4768 + (32 * _4760) + 96] = ceil32(mem[96]) + 128
                            _7676 = mem[ceil32(('cd', 4).length) + 128]
                            mem[_4768 + (32 * _4760) + ceil32(_6952) + 160] = mem[ceil32(('cd', 4).length) + 128]
                            idx = 0
                            s = ceil32(('cd', 4).length) + 160
                            t = _4768 + (32 * _4760) + ceil32(_6952) + (32 * _7676) + 192
                            u = _4768 + (32 * _4760) + ceil32(_6952) + 192
                            while idx < _7676:
                                mem[u] = t + -_4768 + -(32 * _4760) + -ceil32(_6952) - 192
                                _8040 = mem[s]
                                _8120 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _8120:
                                    mem[t + v + 32] = mem[_8040 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_8120) > _8120:
                                    mem[t + _8120 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_8120) + 32
                                u = u + 32
                                continue 
    emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                    mem[mem[64] len t - mem[64]],
                    msg.sender,
}



}
