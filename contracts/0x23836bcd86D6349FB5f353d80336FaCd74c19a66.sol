contract main {




// =====================  Runtime code  =====================


address owner;
address balanceKeeperAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of struct totalRoundOptions;
mapping of uint8 stor5;
array of uint256 stor6;
uint256 totalRounds;
array of uint256 activeRounds;
array of uint256 finalizedRounds;

function canCastVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function activeRounds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < activeRounds.length
    return activeRounds[arg1]
}

function totalRoundOptions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalRoundOptions[arg1].field_256
}

function canCheck(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function totalRounds() payable {
    return totalRounds
}

function owner() payable {
    return owner
}

function totalFinalizedRounds() payable {
    return finalizedRounds.length
}

function votesForOptionByUser(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    return totalRoundOptions[arg1][2][arg2][1][arg3].field_0
}

function finalizedRounds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < finalizedRounds.length
    return finalizedRounds[arg1]
}

function totalActiveRounds() payable {
    return activeRounds.length
}

function balanceKeeper() payable {
    return balanceKeeperAddress
}

function _fallback() payable {
    revert
}

function userVotedForOption(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    return (totalRoundOptions[arg1][2][arg2][1][arg3].field_0 > 0)
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setCanCheck(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor3[address(arg1)] = uint8(arg2)
    emit SetCanCheck(msg.sender, arg1, bool(uint8(arg2)));
}

function setCanCastVotes(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor2[address(arg1)] = uint8(arg2)
    emit SetCanCastVotes(msg.sender, arg1, bool(uint8(arg2)));
}

function isActiveRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < activeRounds.length:
        mem[0] = 8
        if activeRounds[idx] == arg1:
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function isFinalizedRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < finalizedRounds.length:
        mem[0] = 9
        if finalizedRounds[idx] == arg1:
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function totalUsersForOption(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < stor6.length:
        mem[0] = idx
        mem[32] = sha3(arg2, sha3(arg1, 4) + 2) + 1
        if totalRoundOptions[arg1][2][arg2][1][idx].field_0 <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function totalUsersInRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor6.length:
        mem[0] = arg1
        mem[32] = 4
        s = 0
        t = 0
        while s < totalRoundOptions[arg1].field_256:
            if t > !totalRoundOptions[arg1][2][s][1][idx].field_0:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            s = s + 1
            t = t + totalRoundOptions[arg1][2][s][1][idx].field_0
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function finalizeRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ACW'
    if activeRounds.length < 1:
        revert with 0, 17
    if activeRounds.length - 1 > test266151307():
        revert with 0, 65
    if activeRounds.length - 1:
        mem[128 len 32 * activeRounds.length - 1] = call.data[calldata.size len 32 * activeRounds.length - 1]
    idx = 0
    while idx < activeRounds.length:
        mem[0] = 8
        if activeRounds[idx] != arg1:
            if idx >= activeRounds.length:
                revert with 0, 50
            mem[0] = 8
            if 0 >= activeRounds.length - 1:
                revert with 0, 50
            mem[128] = activeRounds[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    activeRounds.length--
    if not activeRounds.length - 1:
        s = 0
        while activeRounds.length > s:
            activeRounds[s] = 0
            s = s + 1
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
    finalizedRounds.length++
    finalizedRounds[finalizedRounds.length] = arg1
    emit FinalizeRound(msg.sender, arg1);
}

function votesForOption(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = sha3(arg2, sha3(arg1, 4) + 2) + 1
        if s > !totalRoundOptions[arg1][2][arg2][1][stor6[idx]].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalRoundOptions[arg1][2][arg2][1][stor6[idx]].field_0
        continue 
    return (s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length)
}

function votesInRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < totalRoundOptions[arg1].field_256:
        s = 0
        t = 0
        while s < stor6.length:
            if t > !totalRoundOptions[arg1][2][idx][1][stor6[s]].field_0:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            s = s + 1
            t = t + totalRoundOptions[arg1][2][idx][1][stor6[s]].field_0
            continue 
        if 0 > !(t * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        continue 
    return 0
}

function votesInRoundByUser(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < totalRoundOptions[arg1].field_256:
        if s > !totalRoundOptions[arg1][2][idx][1][arg2].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + totalRoundOptions[arg1][2][idx][1][arg2].field_0
        continue 
    return (s * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256)
}

function userVotedInRound(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < totalRoundOptions[arg1].field_256:
        if s > !totalRoundOptions[arg1][2][idx][1][arg2].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + totalRoundOptions[arg1][2][idx][1][arg2].field_0
        continue 
    return (s * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 > 0)
}

function checkVoteBalances(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 3
    if not stor3[msg.sender]:
        revert with 0, 'ACC'
    idx = 0
    while idx < activeRounds.length:
        mem[0] = 8
        mem[mem[64] + 4] = arg1
        require ext_code.size(balanceKeeperAddress)
        staticcall balanceKeeperAddress.0x47bb89f0 with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _21 = mem[_20]
        mem[0] = activeRounds[idx]
        mem[32] = 4
        s = 0
        t = 0
        while s < totalRoundOptions[stor8[idx]].field_256:
            if t > !totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            mem[0] = activeRounds[idx]
            mem[32] = 4
            s = s + 1
            t = t + totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0
            continue 
        if _21 <= t * totalRoundOptions[stor8[idx]].field_256:
            mem[0] = activeRounds[idx]
            mem[32] = 4
            s = 0
            t = 0
            while s < totalRoundOptions[stor8[idx]].field_256:
                if t > !totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                mem[0] = activeRounds[idx]
                mem[32] = 4
                s = s + 1
                t = t + totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0
                continue 
            if t * totalRoundOptions[stor8[idx]].field_256 > 0:
                s = 0
                t = 0
                while s < totalRoundOptions[stor8[idx]].field_256:
                    if t > !totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    mem[0] = activeRounds[idx]
                    mem[32] = 4
                    s = s + 1
                    t = t + totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0
                    continue 
                mem[0] = activeRounds[idx]
                mem[32] = 4
                s = 0
                while s < totalRoundOptions[stor8[idx]].field_256:
                    if totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0 and _21 > -1 / totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0:
                        revert with 0, 17
                    if not t * totalRoundOptions[stor8[idx]].field_256:
                        revert with 0, 18
                    totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0 = totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0 * _21 / t * totalRoundOptions[stor8[idx]].field_256
                    if s == -1:
                        revert with 0, 17
                    mem[0] = activeRounds[idx]
                    mem[32] = 4
                    s = s + 1
                    continue 
                mem[mem[64]] = _21
                emit CheckVoteBalance(_21, msg.sender, arg1);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function roundName(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= totalRounds:
        revert with 0, 'V1'
    if bool(totalRoundOptions[arg1].field_0):
        if bool(totalRoundOptions[arg1].field_0) == uint255(totalRoundOptions[arg1].field_1) < 32:
            revert with 0, 34
        if bool(totalRoundOptions[arg1].field_0):
            if bool(totalRoundOptions[arg1].field_0) == uint255(totalRoundOptions[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(totalRoundOptions[arg1].field_1):
                if 31 < uint255(totalRoundOptions[arg1].field_1):
                    mem[128] = totalRoundOptions[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(totalRoundOptions[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = totalRoundOptions[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(totalRoundOptions[arg1].field_1)), data=mem[128 len ceil32(uint255(totalRoundOptions[arg1].field_1))]), 
                mem[128] = 256 * Mask(248, 0, totalRoundOptions[arg1].field_8)
        else:
            if bool(totalRoundOptions[arg1].field_0) == totalRoundOptions[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if totalRoundOptions[arg1].field_1 % 128:
                if 31 < totalRoundOptions[arg1].field_1 % 128:
                    mem[128] = totalRoundOptions[arg1].field_0
                    idx = 128
                    s = 0
                    while totalRoundOptions[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = totalRoundOptions[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(totalRoundOptions[arg1].field_1)), data=mem[128 len ceil32(uint255(totalRoundOptions[arg1].field_1))]), 
                mem[128] = 256 * Mask(248, 0, totalRoundOptions[arg1].field_8)
        mem[ceil32(uint255(totalRoundOptions[arg1].field_1)) + 192 len ceil32(uint255(totalRoundOptions[arg1].field_1))] = mem[128 len ceil32(uint255(totalRoundOptions[arg1].field_1))]
        if ceil32(uint255(totalRoundOptions[arg1].field_1)) > uint255(totalRoundOptions[arg1].field_1):
            mem[ceil32(uint255(totalRoundOptions[arg1].field_1)) + uint255(totalRoundOptions[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(totalRoundOptions[arg1].field_1)), data=mem[128 len ceil32(uint255(totalRoundOptions[arg1].field_1))], mem[(2 * ceil32(uint255(totalRoundOptions[arg1].field_1))) + 192 len 2 * ceil32(uint255(totalRoundOptions[arg1].field_1))]), 
    if bool(totalRoundOptions[arg1].field_0) == totalRoundOptions[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(totalRoundOptions[arg1].field_0):
        if bool(totalRoundOptions[arg1].field_0) == uint255(totalRoundOptions[arg1].field_1) < 32:
            revert with 0, 34
        if uint255(totalRoundOptions[arg1].field_1):
            if 31 < uint255(totalRoundOptions[arg1].field_1):
                mem[128] = totalRoundOptions[arg1].field_0
                idx = 128
                s = 0
                while uint255(totalRoundOptions[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = totalRoundOptions[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=totalRoundOptions[arg1].field_0 % 128, data=mem[128 len ceil32(totalRoundOptions[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, totalRoundOptions[arg1].field_8)
    else:
        if bool(totalRoundOptions[arg1].field_0) == totalRoundOptions[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if totalRoundOptions[arg1].field_1 % 128:
            if 31 < totalRoundOptions[arg1].field_1 % 128:
                mem[128] = totalRoundOptions[arg1].field_0
                idx = 128
                s = 0
                while totalRoundOptions[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = totalRoundOptions[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=totalRoundOptions[arg1].field_0 % 128, data=mem[128 len ceil32(totalRoundOptions[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, totalRoundOptions[arg1].field_8)
    mem[ceil32(totalRoundOptions[arg1].field_1 % 128) + 192 len ceil32(totalRoundOptions[arg1].field_1 % 128)] = mem[128 len ceil32(totalRoundOptions[arg1].field_1 % 128)]
    if ceil32(totalRoundOptions[arg1].field_1 % 128) > totalRoundOptions[arg1].field_1 % 128:
        mem[ceil32(totalRoundOptions[arg1].field_1 % 128) + totalRoundOptions[arg1].field_1 % 128 + 192] = 0
    return Array(len=totalRoundOptions[arg1].field_0 % 128, data=mem[128 len ceil32(totalRoundOptions[arg1].field_1 % 128)], mem[(2 * ceil32(totalRoundOptions[arg1].field_1 % 128)) + 192 len 2 * ceil32(totalRoundOptions[arg1].field_1 % 128)]), 
}

function optionName(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= totalRounds:
        revert with 0, 'V1'
    if arg2 >= totalRoundOptions[arg1].field_256:
        revert with 0, 'V2'
    if bool(totalRoundOptions[arg1][2][arg2].field_0):
        if bool(totalRoundOptions[arg1][2][arg2].field_0) == uint255(totalRoundOptions[arg1][2][arg2].field_1) < 32:
            revert with 0, 34
        if bool(totalRoundOptions[arg1][2][arg2].field_0):
            if bool(totalRoundOptions[arg1][2][arg2].field_0) == uint255(totalRoundOptions[arg1][2][arg2].field_1) < 32:
                revert with 0, 34
            if uint255(totalRoundOptions[arg1][2][arg2].field_1):
                if 31 < uint255(totalRoundOptions[arg1][2][arg2].field_1):
                    mem[128] = totalRoundOptions[arg1][2][arg2].field_0
                    idx = 128
                    s = 0
                    while uint255(totalRoundOptions[arg1][2][arg2].field_1) + 96 > idx:
                        mem[idx + 32] = totalRoundOptions[arg1][2][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(totalRoundOptions[arg1][2][arg2].field_1)), data=mem[128 len ceil32(uint255(totalRoundOptions[arg1][2][arg2].field_1))]), 
                mem[128] = 256 * Mask(248, 0, totalRoundOptions[arg1][2][arg2].field_8)
        else:
            if bool(totalRoundOptions[arg1][2][arg2].field_0) == totalRoundOptions[arg1][2][arg2].field_1 % 128 < 32:
                revert with 0, 34
            if totalRoundOptions[arg1][2][arg2].field_1 % 128:
                if 31 < totalRoundOptions[arg1][2][arg2].field_1 % 128:
                    mem[128] = totalRoundOptions[arg1][2][arg2].field_0
                    idx = 128
                    s = 0
                    while totalRoundOptions[arg1][2][arg2].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = totalRoundOptions[arg1][2][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(totalRoundOptions[arg1][2][arg2].field_1)), data=mem[128 len ceil32(uint255(totalRoundOptions[arg1][2][arg2].field_1))]), 
                mem[128] = 256 * Mask(248, 0, totalRoundOptions[arg1][2][arg2].field_8)
        mem[ceil32(uint255(totalRoundOptions[arg1][2][arg2].field_1)) + 192 len ceil32(uint255(totalRoundOptions[arg1][2][arg2].field_1))] = mem[128 len ceil32(uint255(totalRoundOptions[arg1][2][arg2].field_1))]
        if ceil32(uint255(totalRoundOptions[arg1][2][arg2].field_1)) > uint255(totalRoundOptions[arg1][2][arg2].field_1):
            mem[ceil32(uint255(totalRoundOptions[arg1][2][arg2].field_1)) + uint255(totalRoundOptions[arg1][2][arg2].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(totalRoundOptions[arg1][2][arg2].field_1)), data=mem[128 len ceil32(uint255(totalRoundOptions[arg1][2][arg2].field_1))], mem[(2 * ceil32(uint255(totalRoundOptions[arg1][2][arg2].field_1))) + 192 len 2 * ceil32(uint255(totalRoundOptions[arg1][2][arg2].field_1))]), 
    if bool(totalRoundOptions[arg1][2][arg2].field_0) == totalRoundOptions[arg1][2][arg2].field_1 % 128 < 32:
        revert with 0, 34
    if bool(totalRoundOptions[arg1][2][arg2].field_0):
        if bool(totalRoundOptions[arg1][2][arg2].field_0) == uint255(totalRoundOptions[arg1][2][arg2].field_1) < 32:
            revert with 0, 34
        if uint255(totalRoundOptions[arg1][2][arg2].field_1):
            if 31 < uint255(totalRoundOptions[arg1][2][arg2].field_1):
                mem[128] = totalRoundOptions[arg1][2][arg2].field_0
                idx = 128
                s = 0
                while uint255(totalRoundOptions[arg1][2][arg2].field_1) + 96 > idx:
                    mem[idx + 32] = totalRoundOptions[arg1][2][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=totalRoundOptions[arg1][2][arg2].field_0 % 128, data=mem[128 len ceil32(totalRoundOptions[arg1][2][arg2].field_1 % 128)]), 
            mem[128] = 256 * Mask(248, 0, totalRoundOptions[arg1][2][arg2].field_8)
    else:
        if bool(totalRoundOptions[arg1][2][arg2].field_0) == totalRoundOptions[arg1][2][arg2].field_1 % 128 < 32:
            revert with 0, 34
        if totalRoundOptions[arg1][2][arg2].field_1 % 128:
            if 31 < totalRoundOptions[arg1][2][arg2].field_1 % 128:
                mem[128] = totalRoundOptions[arg1][2][arg2].field_0
                idx = 128
                s = 0
                while totalRoundOptions[arg1][2][arg2].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = totalRoundOptions[arg1][2][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=totalRoundOptions[arg1][2][arg2].field_0 % 128, data=mem[128 len ceil32(totalRoundOptions[arg1][2][arg2].field_1 % 128)]), 
            mem[128] = 256 * Mask(248, 0, totalRoundOptions[arg1][2][arg2].field_8)
    mem[ceil32(totalRoundOptions[arg1][2][arg2].field_1 % 128) + 192 len ceil32(totalRoundOptions[arg1][2][arg2].field_1 % 128)] = mem[128 len ceil32(totalRoundOptions[arg1][2][arg2].field_1 % 128)]
    if ceil32(totalRoundOptions[arg1][2][arg2].field_1 % 128) > totalRoundOptions[arg1][2][arg2].field_1 % 128:
        mem[ceil32(totalRoundOptions[arg1][2][arg2].field_1 % 128) + totalRoundOptions[arg1][2][arg2].field_1 % 128 + 192] = 0
    return Array(len=totalRoundOptions[arg1][2][arg2].field_0 % 128, data=mem[128 len ceil32(totalRoundOptions[arg1][2][arg2].field_1 % 128)], mem[(2 * ceil32(totalRoundOptions[arg1][2][arg2].field_1 % 128)) + 192 len 2 * ceil32(totalRoundOptions[arg1][2][arg2].field_1 % 128)]), 
}

function sub_e361f07f(?) payable {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 128 < 96 or (32 * ('cd', 68).length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 68).length) + 128
    mem[96] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'ACV'
    idx = 0
    while idx < activeRounds.length:
        mem[0] = 8
        if activeRounds[idx] != cd[36]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if ('cd', 68).length != totalRoundOptions[cd[36]].field_256:
            revert with 0, 'V4'
        idx = 0
        s = 0
        while idx < ('cd', 68).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if s > !mem[(32 * idx) + 128]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[(32 * idx) + 128]
            continue 
        mem[(32 * ('cd', 68).length) + 132] = cd[4]
        require ext_code.size(balanceKeeperAddress)
        staticcall balanceKeeperAddress.0x47bb89f0 with:
                gas gas_remaining wei
               args cd[4]
        mem[(32 * ('cd', 68).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 68).length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        if ext_call.return_data[0] < s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length:
            revert with 0, 'V5'
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            mem[0] = cd[4]
            mem[32] = sha3(idx, sha3(cd[36], 4) + 2) + 1
            totalRoundOptions[cd[36]][2][idx][1][cd[4]].field_0 = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not stor5[cd[4]]:
            if s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length > 0:
                stor6.length++
                stor6[stor6.length] = cd[4]
                stor5[cd[4]] = 1
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = 32
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 160] = ('cd', 68).length
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < ('cd', 68).length:
            mem[s] = mem[t]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit CastVotes(mem[mem[64] len (64 * ('cd', 68).length) + ceil32(return_data.size) + -mem[64] + 192], msg.sender, cd[36], cd[4]);
    revert with 0, 'V3'
}

function sub_44083843(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 < 96 or (32 * ('cd', 36).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + 160] = address(msg.sender)
    mem[(32 * ('cd', 36).length) + 180] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 36).length) + 184] = 64
    mem[(32 * ('cd', 36).length) + 248] = 3
    mem[(32 * ('cd', 36).length) + 280] = 0x45564d0000000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 36).length) + 216] = 128
    mem[(32 * ('cd', 36).length) + 312] = mem[(32 * ('cd', 36).length) + 128]
    mem[(32 * ('cd', 36).length) + 344 len ceil32(mem[(32 * ('cd', 36).length) + 128])] = mem[(32 * ('cd', 36).length) + 160 len ceil32(mem[(32 * ('cd', 36).length) + 128])]
    if ceil32(mem[(32 * ('cd', 36).length) + 128]) > mem[(32 * ('cd', 36).length) + 128]:
        mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128] + 344] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3ed084c4 with:
            gas gas_remaining wei
           args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[(32 * ('cd', 36).length) + 128], mem[(32 * ('cd', 36).length) + 344 len ceil32(mem[(32 * ('cd', 36).length) + 128])]
    mem[(32 * ('cd', 36).length) + 180] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 180
    require return_data.size >= 32
    idx = 0
    while idx < activeRounds.length:
        mem[0] = 8
        if activeRounds[idx] != cd[4]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if ('cd', 36).length != totalRoundOptions[cd[4]].field_256:
            revert with 0, 'V4'
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if s > !mem[(32 * idx) + 128]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[(32 * idx) + 128]
            continue 
        require ext_code.size(balanceKeeperAddress)
        staticcall balanceKeeperAddress.0x47bb89f0 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
            revert with 0, 'V5'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = ext_call.return_data[0]
            mem[32] = sha3(idx, sha3(cd[4], 4) + 2) + 1
            totalRoundOptions[cd[4]][2][idx][1][ext_call.return_data[0]].field_0 = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not stor5[ext_call.return_data[0]]:
            if s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length > 0:
                stor6.length++
                stor6[stor6.length] = ext_call.return_data[0]
                stor5[ext_call.return_data[0]] = 1
        idx = 0
        s = (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 244
        t = 128
        while idx < ('cd', 36).length:
            mem[s] = mem[t]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit CastVotes(Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 244 len 32 * ('cd', 36).length]), msg.sender, cd[4], ext_call.return_data[0]);
    revert with 0, 'V3'
}

function sub_ad77c86a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(('cd', 4).length) + 128 < 96 or ceil32(('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[ceil32(('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _389 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_389] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_389 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_389 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _389
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'ACW'
    mem[32] = 4
    if bool(totalRoundOptions[stor7].field_0):
        if bool(totalRoundOptions[stor7].field_0) == uint255(totalRoundOptions[stor7].field_1) < 32:
            revert with 0, 34
        mem[0] = sha3(totalRounds, 4)
        if not mem[96]:
            totalRoundOptions[stor7].field_0 = 0
            idx = 0
            while uint255(totalRoundOptions[stor7].field_1) + 31 / 32 > idx:
                totalRoundOptions[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[ceil32(('cd', 4).length) + 128]:
                if idx >= mem[ceil32(('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[0] = idx
                mem[32] = sha3(totalRounds, 4) + 2
                _1172 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160]]
                if bool(totalRoundOptions[stor7][2][idx].field_0):
                    if bool(totalRoundOptions[stor7][2][idx].field_0) == uint255(totalRoundOptions[stor7][2][idx].field_1) < 32:
                        revert with 0, 34
                    mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                    if not _1172:
                        totalRoundOptions[stor7][2][idx].field_0 = 0
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        totalRoundOptions[stor7][2][idx].field_0 = (2 * _1172) + 1
                        if _1172 <= 0:
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            totalRoundOptions[stor7][2][idx].field_0 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32]
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + 1
                            t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 64
                            while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1172 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1172 - 1) >> 5) + 1
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    if bool(totalRoundOptions[stor7][2][idx].field_0) == totalRoundOptions[stor7][2][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                    if not _1172:
                        totalRoundOptions[stor7][2][idx].field_0 = 0
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        totalRoundOptions[stor7][2][idx].field_0 = (2 * _1172) + 1
                        if _1172 <= 0:
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            totalRoundOptions[stor7][2][idx].field_0 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32]
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + 1
                            t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 64
                            while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1172 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1172 - 1) >> 5) + 1
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                mem[0] = totalRounds
                mem[32] = 4
                if totalRoundOptions[stor7].field_256 == -1:
                    revert with 0, 17
                totalRoundOptions[stor7].field_256++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            activeRounds.length++
            mem[0] = 8
            activeRounds[activeRounds.length] = totalRounds
            if totalRounds == -1:
                revert with 0, 17
            totalRounds++
            _1193 = mem[64]
            mem[mem[64]] = totalRounds
            mem[mem[64] + 32] = 96
            _1208 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1208) <= _1208:
                mem[mem[64] + 64] = ceil32(_1208) + 128
                _1574 = mem[ceil32(('cd', 4).length) + 128]
                mem[ceil32(_1208) + _1193 + 128] = mem[ceil32(('cd', 4).length) + 128]
                idx = 0
                s = ceil32(('cd', 4).length) + 160
                t = ceil32(_1208) + _1193 + (32 * _1574) + 160
                u = ceil32(_1208) + _1193 + 160
                while idx < _1574:
                    mem[u] = t + -ceil32(_1208) + -_1193 - 160
                    _1778 = mem[s]
                    _1804 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1804:
                        mem[v + t + 32] = mem[_1778 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1804) > _1804:
                        mem[t + _1804 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1804) + t + 32
                    u = u + 32
                    continue 
                emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                                mem[mem[64] len t - mem[64]],
                                msg.sender,
            else:
                mem[mem[64] + _1208 + 128] = 0
                mem[mem[64] + 64] = ceil32(_1208) + 128
                _1623 = mem[ceil32(('cd', 4).length) + 128]
                mem[ceil32(_1208) + _1193 + 128] = mem[ceil32(('cd', 4).length) + 128]
                s = 0
                t = ceil32(('cd', 4).length) + 160
                u = ceil32(_1208) + _1193 + (32 * _1623) + 160
                v = ceil32(_1208) + _1193 + 160
                while s < _1623:
                    mem[v] = u + -ceil32(_1208) + -_1193 - 160
                    _1779 = mem[t]
                    _1806 = mem[mem[t]]
                    mem[u] = mem[mem[t]]
                    idx = 0
                    while idx < _1806:
                        mem[idx + u + 32] = mem[_1779 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1806) > _1806:
                        mem[u + _1806 + 32] = 0
                    s = s + 1
                    t = t + 32
                    u = ceil32(_1806) + u + 32
                    v = v + 32
                    continue 
                emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                                mem[mem[64] len u - mem[64]],
                                msg.sender,
        else:
            totalRoundOptions[stor7].field_0 = (2 * mem[96]) + 1
            if mem[96] <= 0:
                idx = 0
                while uint255(totalRoundOptions[stor7].field_1) + 31 / 32 > idx:
                    totalRoundOptions[stor7][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(('cd', 4).length) + 128]:
                    if idx >= mem[ceil32(('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = sha3(totalRounds, 4) + 2
                    _1164 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160]]
                    if bool(totalRoundOptions[stor7][2][idx].field_0):
                        if bool(totalRoundOptions[stor7][2][idx].field_0) == uint255(totalRoundOptions[stor7][2][idx].field_1) < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                        if not _1164:
                            totalRoundOptions[stor7][2][idx].field_0 = 0
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            totalRoundOptions[stor7][2][idx].field_0 = (2 * _1164) + 1
                            if _1164 <= 0:
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                totalRoundOptions[stor7][2][idx].field_0 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32]
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + 1
                                t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 64
                                while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1164 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1164 - 1) >> 5) + 1
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(totalRoundOptions[stor7][2][idx].field_0) == totalRoundOptions[stor7][2][idx].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                        if not _1164:
                            totalRoundOptions[stor7][2][idx].field_0 = 0
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            totalRoundOptions[stor7][2][idx].field_0 = (2 * _1164) + 1
                            if _1164 <= 0:
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                totalRoundOptions[stor7][2][idx].field_0 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32]
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + 1
                                t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 64
                                while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1164 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1164 - 1) >> 5) + 1
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    mem[0] = totalRounds
                    mem[32] = 4
                    if totalRoundOptions[stor7].field_256 == -1:
                        revert with 0, 17
                    totalRoundOptions[stor7].field_256++
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                activeRounds.length++
                mem[0] = 8
                activeRounds[activeRounds.length] = totalRounds
                if totalRounds == -1:
                    revert with 0, 17
                totalRounds++
                _1190 = mem[64]
                mem[mem[64]] = totalRounds
                mem[mem[64] + 32] = 96
                _1202 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1202) <= _1202:
                    mem[mem[64] + 64] = ceil32(_1202) + 128
                    _1556 = mem[ceil32(('cd', 4).length) + 128]
                    mem[ceil32(_1202) + _1190 + 128] = mem[ceil32(('cd', 4).length) + 128]
                    idx = 0
                    s = ceil32(('cd', 4).length) + 160
                    t = ceil32(_1202) + _1190 + (32 * _1556) + 160
                    u = ceil32(_1202) + _1190 + 160
                    while idx < _1556:
                        mem[u] = t + -ceil32(_1202) + -_1190 - 160
                        _1771 = mem[s]
                        _1796 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1796:
                            mem[v + t + 32] = mem[_1771 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1796) > _1796:
                            mem[t + _1796 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1796) + t + 32
                        u = u + 32
                        continue 
                    emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                                    mem[mem[64] len t - mem[64]],
                                    msg.sender,
                else:
                    mem[mem[64] + _1202 + 128] = 0
                    mem[mem[64] + 64] = ceil32(_1202) + 128
                    _1620 = mem[ceil32(('cd', 4).length) + 128]
                    mem[ceil32(_1202) + _1190 + 128] = mem[ceil32(('cd', 4).length) + 128]
                    s = 0
                    t = ceil32(('cd', 4).length) + 160
                    u = ceil32(_1202) + _1190 + (32 * _1620) + 160
                    v = ceil32(_1202) + _1190 + 160
                    while s < _1620:
                        mem[v] = u + -ceil32(_1202) + -_1190 - 160
                        _1772 = mem[t]
                        _1798 = mem[mem[t]]
                        mem[u] = mem[mem[t]]
                        idx = 0
                        while idx < _1798:
                            mem[idx + u + 32] = mem[_1772 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1798) > _1798:
                            mem[u + _1798 + 32] = 0
                        s = s + 1
                        t = t + 32
                        u = ceil32(_1798) + u + 32
                        v = v + 32
                        continue 
                    emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                                    mem[mem[64] len u - mem[64]],
                                    msg.sender,
            else:
                totalRoundOptions[stor7].field_0 = mem[128]
                s = 1
                idx = 160
                while mem[96] + 128 > idx:
                    totalRoundOptions[stor7][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, mem[96] - 1) >> 5) + 1
                while uint255(totalRoundOptions[stor7].field_1) + 31 / 32 > idx:
                    totalRoundOptions[stor7][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(('cd', 4).length) + 128]:
                    if idx >= mem[ceil32(('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = sha3(totalRounds, 4) + 2
                    _1542 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160]]
                    if bool(totalRoundOptions[stor7][2][idx].field_0):
                        if bool(totalRoundOptions[stor7][2][idx].field_0) == uint255(totalRoundOptions[stor7][2][idx].field_1) < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                        if not _1542:
                            totalRoundOptions[stor7][2][idx].field_0 = 0
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            totalRoundOptions[stor7][2][idx].field_0 = (2 * _1542) + 1
                            if _1542 <= 0:
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                totalRoundOptions[stor7][2][idx].field_0 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32]
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + 1
                                t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 64
                                while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1542 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1542 - 1) >> 5) + 1
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(totalRoundOptions[stor7][2][idx].field_0) == totalRoundOptions[stor7][2][idx].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                        if not _1542:
                            totalRoundOptions[stor7][2][idx].field_0 = 0
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            totalRoundOptions[stor7][2][idx].field_0 = (2 * _1542) + 1
                            if _1542 <= 0:
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                totalRoundOptions[stor7][2][idx].field_0 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32]
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + 1
                                t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 64
                                while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1542 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1542 - 1) >> 5) + 1
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    mem[0] = totalRounds
                    mem[32] = 4
                    if totalRoundOptions[stor7].field_256 == -1:
                        revert with 0, 17
                    totalRoundOptions[stor7].field_256++
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                activeRounds.length++
                mem[0] = 8
                activeRounds[activeRounds.length] = totalRounds
                if totalRounds == -1:
                    revert with 0, 17
                totalRounds++
                _1621 = mem[64]
                mem[mem[64]] = totalRounds
                mem[mem[64] + 32] = 96
                _1647 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                var55001 = ceil32(_1647)
                if ceil32(_1647) <= _1647:
                    mem[mem[64] + 64] = ceil32(_1647) + 128
                    _1827 = mem[ceil32(('cd', 4).length) + 128]
                    mem[ceil32(_1647) + _1621 + 128] = mem[ceil32(('cd', 4).length) + 128]
                    idx = 0
                    s = ceil32(('cd', 4).length) + 160
                    t = ceil32(_1647) + _1621 + (32 * _1827) + 160
                    u = ceil32(_1647) + _1621 + 160
                    while idx < _1827:
                        mem[u] = t + -ceil32(_1647) + -_1621 - 160
                        _1899 = mem[s]
                        _1916 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1916:
                            mem[v + t + 32] = mem[_1899 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1916) > _1916:
                            mem[t + _1916 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1916) + t + 32
                        u = u + 32
                        continue 
                    emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                                    mem[mem[64] len t - mem[64]],
                                    msg.sender,
                else:
                    mem[mem[64] + _1647 + 128] = 0
                    mem[mem[64] + 64] = ceil32(_1647) + 128
                    _1861 = mem[ceil32(('cd', 4).length) + 128]
                    mem[ceil32(_1647) + _1621 + 128] = mem[ceil32(('cd', 4).length) + 128]
                    s = 0
                    t = ceil32(('cd', 4).length) + 160
                    u = ceil32(_1647) + _1621 + (32 * _1861) + 160
                    v = ceil32(_1647) + _1621 + 160
                    while s < _1861:
                        mem[v] = u + -ceil32(_1647) + -_1621 - 160
                        _1900 = mem[t]
                        _1918 = mem[mem[t]]
                        mem[u] = mem[mem[t]]
                        idx = 0
                        while idx < _1918:
                            mem[idx + u + 32] = mem[_1900 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1918) > _1918:
                            mem[u + _1918 + 32] = 0
                        s = s + 1
                        t = t + 32
                        u = ceil32(_1918) + u + 32
                        v = v + 32
                        continue 
                    emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                                    mem[mem[64] len u - mem[64]],
                                    msg.sender,
    else:
        if bool(totalRoundOptions[stor7].field_0) == totalRoundOptions[stor7].field_1 % 128 < 32:
            revert with 0, 34
        mem[0] = sha3(totalRounds, 4)
        if not mem[96]:
            totalRoundOptions[stor7].field_0 = 0
            idx = 0
            while totalRoundOptions[stor7].field_1 % 128 + 31 / 32 > idx:
                totalRoundOptions[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[ceil32(('cd', 4).length) + 128]:
                if idx >= mem[ceil32(('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[0] = idx
                mem[32] = sha3(totalRounds, 4) + 2
                _1188 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160]]
                if bool(totalRoundOptions[stor7][2][idx].field_0):
                    if bool(totalRoundOptions[stor7][2][idx].field_0) == uint255(totalRoundOptions[stor7][2][idx].field_1) < 32:
                        revert with 0, 34
                    mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                    if not _1188:
                        totalRoundOptions[stor7][2][idx].field_0 = 0
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        totalRoundOptions[stor7][2][idx].field_0 = (2 * _1188) + 1
                        if _1188 <= 0:
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            totalRoundOptions[stor7][2][idx].field_0 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32]
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + 1
                            t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 64
                            while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1188 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1188 - 1) >> 5) + 1
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    if bool(totalRoundOptions[stor7][2][idx].field_0) == totalRoundOptions[stor7][2][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                    if not _1188:
                        totalRoundOptions[stor7][2][idx].field_0 = 0
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        totalRoundOptions[stor7][2][idx].field_0 = (2 * _1188) + 1
                        if _1188 <= 0:
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            totalRoundOptions[stor7][2][idx].field_0 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32]
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + 1
                            t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 64
                            while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1188 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1188 - 1) >> 5) + 1
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                mem[0] = totalRounds
                mem[32] = 4
                if totalRoundOptions[stor7].field_256 == -1:
                    revert with 0, 17
                totalRoundOptions[stor7].field_256++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            activeRounds.length++
            mem[0] = 8
            activeRounds[activeRounds.length] = totalRounds
            if totalRounds == -1:
                revert with 0, 17
            totalRounds++
            _1198 = mem[64]
            mem[mem[64]] = totalRounds
            mem[mem[64] + 32] = 96
            _1216 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1216) <= _1216:
                mem[mem[64] + 64] = ceil32(_1216) + 128
                _1610 = mem[ceil32(('cd', 4).length) + 128]
                mem[ceil32(_1216) + _1198 + 128] = mem[ceil32(('cd', 4).length) + 128]
                idx = 0
                s = ceil32(('cd', 4).length) + 160
                t = ceil32(_1216) + _1198 + (32 * _1610) + 160
                u = ceil32(_1216) + _1198 + 160
                while idx < _1610:
                    mem[u] = t + -ceil32(_1216) + -_1198 - 160
                    _1789 = mem[s]
                    _1820 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1820:
                        mem[v + t + 32] = mem[_1789 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1820) > _1820:
                        mem[t + _1820 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1820) + t + 32
                    u = u + 32
                    continue 
                emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                                mem[mem[64] len t - mem[64]],
                                msg.sender,
            else:
                mem[mem[64] + _1216 + 128] = 0
                mem[mem[64] + 64] = ceil32(_1216) + 128
                _1628 = mem[ceil32(('cd', 4).length) + 128]
                mem[ceil32(_1216) + _1198 + 128] = mem[ceil32(('cd', 4).length) + 128]
                s = 0
                t = ceil32(('cd', 4).length) + 160
                u = ceil32(_1216) + _1198 + (32 * _1628) + 160
                v = ceil32(_1216) + _1198 + 160
                while s < _1628:
                    mem[v] = u + -ceil32(_1216) + -_1198 - 160
                    _1790 = mem[t]
                    _1822 = mem[mem[t]]
                    mem[u] = mem[mem[t]]
                    idx = 0
                    while idx < _1822:
                        mem[idx + u + 32] = mem[_1790 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1822) > _1822:
                        mem[u + _1822 + 32] = 0
                    s = s + 1
                    t = t + 32
                    u = ceil32(_1822) + u + 32
                    v = v + 32
                    continue 
                emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                                mem[mem[64] len u - mem[64]],
                                msg.sender,
        else:
            totalRoundOptions[stor7].field_0 = (2 * mem[96]) + 1
            if mem[96] <= 0:
                idx = 0
                while totalRoundOptions[stor7].field_1 % 128 + 31 / 32 > idx:
                    totalRoundOptions[stor7][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(('cd', 4).length) + 128]:
                    if idx >= mem[ceil32(('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = sha3(totalRounds, 4) + 2
                    _1180 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160]]
                    if bool(totalRoundOptions[stor7][2][idx].field_0):
                        if bool(totalRoundOptions[stor7][2][idx].field_0) == uint255(totalRoundOptions[stor7][2][idx].field_1) < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                        if not _1180:
                            totalRoundOptions[stor7][2][idx].field_0 = 0
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            totalRoundOptions[stor7][2][idx].field_0 = (2 * _1180) + 1
                            if _1180 <= 0:
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                totalRoundOptions[stor7][2][idx].field_0 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32]
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + 1
                                t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 64
                                while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1180 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1180 - 1) >> 5) + 1
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(totalRoundOptions[stor7][2][idx].field_0) == totalRoundOptions[stor7][2][idx].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                        if not _1180:
                            totalRoundOptions[stor7][2][idx].field_0 = 0
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            totalRoundOptions[stor7][2][idx].field_0 = (2 * _1180) + 1
                            if _1180 <= 0:
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                totalRoundOptions[stor7][2][idx].field_0 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32]
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + 1
                                t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 64
                                while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1180 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1180 - 1) >> 5) + 1
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    mem[0] = totalRounds
                    mem[32] = 4
                    if totalRoundOptions[stor7].field_256 == -1:
                        revert with 0, 17
                    totalRoundOptions[stor7].field_256++
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                activeRounds.length++
                mem[0] = 8
                activeRounds[activeRounds.length] = totalRounds
                if totalRounds == -1:
                    revert with 0, 17
                totalRounds++
                _1195 = mem[64]
                mem[mem[64]] = totalRounds
                mem[mem[64] + 32] = 96
                _1210 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1210) <= _1210:
                    mem[mem[64] + 64] = ceil32(_1210) + 128
                    _1592 = mem[ceil32(('cd', 4).length) + 128]
                    mem[ceil32(_1210) + _1195 + 128] = mem[ceil32(('cd', 4).length) + 128]
                    idx = 0
                    s = ceil32(('cd', 4).length) + 160
                    t = ceil32(_1210) + _1195 + (32 * _1592) + 160
                    u = ceil32(_1210) + _1195 + 160
                    while idx < _1592:
                        mem[u] = t + -ceil32(_1210) + -_1195 - 160
                        _1782 = mem[s]
                        _1812 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1812:
                            mem[v + t + 32] = mem[_1782 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1812) > _1812:
                            mem[t + _1812 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1812) + t + 32
                        u = u + 32
                        continue 
                    emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                                    mem[mem[64] len t - mem[64]],
                                    msg.sender,
                else:
                    mem[mem[64] + _1210 + 128] = 0
                    mem[mem[64] + 64] = ceil32(_1210) + 128
                    _1625 = mem[ceil32(('cd', 4).length) + 128]
                    mem[ceil32(_1210) + _1195 + 128] = mem[ceil32(('cd', 4).length) + 128]
                    s = 0
                    t = ceil32(('cd', 4).length) + 160
                    u = ceil32(_1210) + _1195 + (32 * _1625) + 160
                    v = ceil32(_1210) + _1195 + 160
                    while s < _1625:
                        mem[v] = u + -ceil32(_1210) + -_1195 - 160
                        _1783 = mem[t]
                        _1814 = mem[mem[t]]
                        mem[u] = mem[mem[t]]
                        idx = 0
                        while idx < _1814:
                            mem[idx + u + 32] = mem[_1783 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1814) > _1814:
                            mem[u + _1814 + 32] = 0
                        s = s + 1
                        t = t + 32
                        u = ceil32(_1814) + u + 32
                        v = v + 32
                        continue 
                    emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                                    mem[mem[64] len u - mem[64]],
                                    msg.sender,
            else:
                totalRoundOptions[stor7].field_0 = mem[128]
                s = 1
                idx = 160
                while mem[96] + 128 > idx:
                    totalRoundOptions[stor7][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, mem[96] - 1) >> 5) + 1
                while totalRoundOptions[stor7].field_1 % 128 + 31 / 32 > idx:
                    totalRoundOptions[stor7][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(('cd', 4).length) + 128]:
                    if idx >= mem[ceil32(('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = sha3(totalRounds, 4) + 2
                    _1546 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160]]
                    if bool(totalRoundOptions[stor7][2][idx].field_0):
                        if bool(totalRoundOptions[stor7][2][idx].field_0) == uint255(totalRoundOptions[stor7][2][idx].field_1) < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                        if not _1546:
                            totalRoundOptions[stor7][2][idx].field_0 = 0
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            totalRoundOptions[stor7][2][idx].field_0 = (2 * _1546) + 1
                            if _1546 <= 0:
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                totalRoundOptions[stor7][2][idx].field_0 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32]
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + 1
                                t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 64
                                while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1546 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1546 - 1) >> 5) + 1
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(totalRoundOptions[stor7][2][idx].field_0) == totalRoundOptions[stor7][2][idx].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                        if not _1546:
                            totalRoundOptions[stor7][2][idx].field_0 = 0
                            s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                            while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            totalRoundOptions[stor7][2][idx].field_0 = (2 * _1546) + 1
                            if _1546 <= 0:
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                totalRoundOptions[stor7][2][idx].field_0 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32]
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + 1
                                t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 64
                                while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1546 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1546 - 1) >> 5) + 1
                                while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    mem[0] = totalRounds
                    mem[32] = 4
                    if totalRoundOptions[stor7].field_256 == -1:
                        revert with 0, 17
                    totalRoundOptions[stor7].field_256++
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                activeRounds.length++
                mem[0] = 8
                activeRounds[activeRounds.length] = totalRounds
                if totalRounds == -1:
                    revert with 0, 17
                totalRounds++
                _1626 = mem[64]
                mem[mem[64]] = totalRounds
                mem[mem[64] + 32] = 96
                _1668 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                var56001 = ceil32(_1668)
                if ceil32(_1668) <= _1668:
                    mem[mem[64] + 64] = ceil32(_1668) + 128
                    _1844 = mem[ceil32(('cd', 4).length) + 128]
                    mem[ceil32(_1668) + _1626 + 128] = mem[ceil32(('cd', 4).length) + 128]
                    idx = 0
                    s = ceil32(('cd', 4).length) + 160
                    t = ceil32(_1668) + _1626 + (32 * _1844) + 160
                    u = ceil32(_1668) + _1626 + 160
                    while idx < _1844:
                        mem[u] = t + -ceil32(_1668) + -_1626 - 160
                        _1909 = mem[s]
                        _1920 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1920:
                            mem[v + t + 32] = mem[_1909 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1920) > _1920:
                            mem[t + _1920 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1920) + t + 32
                        u = u + 32
                        continue 
                    emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                                    mem[mem[64] len t - mem[64]],
                                    msg.sender,
                else:
                    mem[mem[64] + _1668 + 128] = 0
                    mem[mem[64] + 64] = ceil32(_1668) + 128
                    _1870 = mem[ceil32(('cd', 4).length) + 128]
                    mem[ceil32(_1668) + _1626 + 128] = mem[ceil32(('cd', 4).length) + 128]
                    s = 0
                    t = ceil32(('cd', 4).length) + 160
                    u = ceil32(_1668) + _1626 + (32 * _1870) + 160
                    v = ceil32(_1668) + _1626 + 160
                    while s < _1870:
                        mem[v] = u + -ceil32(_1668) + -_1626 - 160
                        _1910 = mem[t]
                        _1922 = mem[mem[t]]
                        mem[u] = mem[mem[t]]
                        idx = 0
                        while idx < _1922:
                            mem[idx + u + 32] = mem[_1910 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1922) > _1922:
                            mem[u + _1922 + 32] = 0
                        s = s + 1
                        t = t + 32
                        u = ceil32(_1922) + u + 32
                        v = v + 32
                        continue 
                    emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                                    mem[mem[64] len u - mem[64]],
                                    msg.sender,
}



}
