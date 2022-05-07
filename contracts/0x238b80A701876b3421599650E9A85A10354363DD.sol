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
    require arg1 == arg1
    require arg1 < activeRounds.length
    return activeRounds[arg1]
}

function totalRoundOptions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return totalRoundOptions[arg1][2][arg2][1][arg3].field_0
}

function finalizedRounds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function userVotedForOption(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return (totalRoundOptions[arg1][2][arg2][1][arg3].field_0 > 0)
}

function setCanCheck(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor3[address(arg1)] = uint8(arg2)
    emit SetCanCheck(msg.sender, arg1, bool(stor3[address(arg1)]));
}

function setCanCastVotes(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2[address(arg1)] = uint8(arg2)
    emit SetCanCastVotes(msg.sender, arg1, bool(stor2[address(arg1)]));
}

function isActiveRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < activeRounds.length:
        mem[0] = 8
        if activeRounds[idx] == arg1:
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function isFinalizedRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < finalizedRounds.length:
        mem[0] = 9
        if finalizedRounds[idx] == arg1:
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function totalUsersForOption(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    s = 0
    while idx < stor6.length:
        mem[0] = idx
        mem[32] = sha3(arg2, sha3(arg1, 4) + 2) + 1
        if totalRoundOptions[arg1][2][arg2][1][idx].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function totalUsersInRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor6.length:
        mem[0] = arg1
        mem[32] = 4
        s = 0
        t = 0
        while s < totalRoundOptions[arg1].field_256:
            if t > -totalRoundOptions[arg1][2][s][1][idx].field_0 - 1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            mem[0] = arg1
            mem[32] = 4
            s = s + 1
            t = t + totalRoundOptions[arg1][2][s][1][idx].field_0
            continue 
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
        mem[0] = 8
        if activeRounds[idx] != arg1:
            if idx >= activeRounds.length:
                revert with 'NH{q', 50
            mem[0] = 8
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
    finalizedRounds.length++
    finalizedRounds[finalizedRounds.length] = arg1
    emit FinalizeRound(msg.sender, arg1);
}

function votesForOption(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    s = 0
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = sha3(arg2, sha3(arg1, 4) + 2) + 1
        if s > -totalRoundOptions[arg1][2][arg2][1][stor6[idx]].field_0 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalRoundOptions[arg1][2][arg2][1][stor6[idx]].field_0
        continue 
    return (s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length)
}

function votesInRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < totalRoundOptions[arg1].field_256:
        s = 0
        t = 0
        while s < stor6.length:
            if t > -totalRoundOptions[arg1][2][idx][1][stor6[s]].field_0 - 1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            mem[0] = arg1
            mem[32] = 4
            s = s + 1
            t = t + totalRoundOptions[arg1][2][idx][1][stor6[s]].field_0
            continue 
        if 0 > (-1 * t * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        continue 
    return 0
}

function votesInRoundByUser(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    s = 0
    while idx < totalRoundOptions[arg1].field_256:
        if s > -totalRoundOptions[arg1][2][idx][1][arg2].field_0 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + totalRoundOptions[arg1][2][idx][1][arg2].field_0
        continue 
    return (s * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256 * totalRoundOptions[arg1].field_256)
}

function userVotedInRound(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    s = 0
    while idx < totalRoundOptions[arg1].field_256:
        if s > -totalRoundOptions[arg1][2][idx][1][arg2].field_0 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
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
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 3
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender is not allowed to check balances'
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
        require mem[_20] == mem[_20]
        mem[0] = activeRounds[idx]
        mem[32] = 4
        s = 0
        t = 0
        while s < totalRoundOptions[stor8[idx]].field_256:
            if t > -totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0 - 1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
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
                if t > -totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0 - 1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                mem[0] = activeRounds[idx]
                mem[32] = 4
                s = s + 1
                t = t + totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0
                continue 
            if t * totalRoundOptions[stor8[idx]].field_256 > 0:
                s = 0
                t = 0
                while s < totalRoundOptions[stor8[idx]].field_256:
                    if t > -totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0 - 1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if not t * totalRoundOptions[stor8[idx]].field_256:
                        revert with 'NH{q', 18
                    totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0 = totalRoundOptions[stor8[idx]][2][s][1][arg1].field_0 * _21 / t * totalRoundOptions[stor8[idx]].field_256
                    if s == -1:
                        revert with 'NH{q', 17
                    mem[0] = activeRounds[idx]
                    mem[32] = 4
                    s = s + 1
                    continue 
                mem[mem[64]] = _21
                emit CheckVoteBalance(_21, msg.sender, arg1);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function roundName(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= totalRounds:
        revert with 0, 'no such round'
    if bool(totalRoundOptions[arg1].field_0):
        if bool(totalRoundOptions[arg1].field_0) == uint255(totalRoundOptions[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(totalRoundOptions[arg1].field_0):
            if bool(totalRoundOptions[arg1].field_0) == uint255(totalRoundOptions[arg1].field_1) < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
        revert with 'NH{q', 34
    if bool(totalRoundOptions[arg1].field_0):
        if bool(totalRoundOptions[arg1].field_0) == uint255(totalRoundOptions[arg1].field_1) < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= totalRounds:
        revert with 0, 'no such round'
    if arg2 >= totalRoundOptions[arg1].field_256:
        revert with 0, 'no such option'
    if bool(totalRoundOptions[arg1][2][arg2].field_0):
        if bool(totalRoundOptions[arg1][2][arg2].field_0) == uint255(totalRoundOptions[arg1][2][arg2].field_1) < 32:
            revert with 'NH{q', 34
        if bool(totalRoundOptions[arg1][2][arg2].field_0):
            if bool(totalRoundOptions[arg1][2][arg2].field_0) == uint255(totalRoundOptions[arg1][2][arg2].field_1) < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
        revert with 'NH{q', 34
    if bool(totalRoundOptions[arg1][2][arg2].field_0):
        if bool(totalRoundOptions[arg1][2][arg2].field_0) == uint255(totalRoundOptions[arg1][2][arg2].field_1) < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 68).length) + 128 > test266151307() or (32 * ('cd', 68).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 68).length) + 128
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[address(msg.sender)]:
        revert with 0, 'not allowed to cast votes'
    idx = 0
    while idx < activeRounds.length:
        mem[0] = 8
        if activeRounds[idx] != cd[36]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if ('cd', 68).length != totalRoundOptions[cd[36]].field_256:
            revert with 0, 'number of votes doesn't match the number of options'
        idx = 0
        s = 0
        while idx < ('cd', 68).length:
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + 128] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
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
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length:
            revert with 0, 'balance is smaller than the sum of votes'
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            mem[0] = cd[4]
            mem[32] = sha3(idx, sha3(cd[36], 4) + 2) + 1
            totalRoundOptions[cd[36]][2][idx][1][cd[4]].field_0 = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor5[cd[4]]:
            mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = 32
            mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 160] = ('cd', 68).length
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < ('cd', 68).length:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length <= 0:
                mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = 32
                mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 160] = ('cd', 68).length
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < ('cd', 68).length:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                stor6.length++
                stor6[stor6.length] = cd[4]
                stor5[cd[4]] = 1
                mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = 32
                mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 160] = ('cd', 68).length
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < ('cd', 68).length:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
        emit CastVotes(mem[mem[64] len (64 * ('cd', 68).length) + ceil32(return_data.size) + -mem[64] + 192], msg.sender, cd[36], cd[4]);
    revert with 0, 'roundId is not an active vote'
}

function sub_44083843(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + 128 > test266151307() or (32 * ('cd', 36).length) + 128 < 96:
        revert with 'NH{q', 65
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
    mem[(32 * ('cd', 36).length) + 160] = address(msg.sender)
    mem[(32 * ('cd', 36).length) + 180] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 36).length) + 184] = 64
    mem[(32 * ('cd', 36).length) + 248] = 3
    mem[(32 * ('cd', 36).length) + 280] = 'EVM'
    mem[(32 * ('cd', 36).length) + 216] = 128
    mem[(32 * ('cd', 36).length) + 312] = mem[(32 * ('cd', 36).length) + 128]
    mem[(32 * ('cd', 36).length) + 344 len ceil32(mem[(32 * ('cd', 36).length) + 128])] = mem[(32 * ('cd', 36).length) + 160 len ceil32(mem[(32 * ('cd', 36).length) + 128])]
    if ceil32(mem[(32 * ('cd', 36).length) + 128]) > mem[(32 * ('cd', 36).length) + 128]:
        mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128] + 344] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3ed084c4 with:
            gas gas_remaining wei
           args 64, 128, 3, 'EVM', mem[(32 * ('cd', 36).length) + 128], mem[(32 * ('cd', 36).length) + 344 len ceil32(mem[(32 * ('cd', 36).length) + 128])]
    mem[(32 * ('cd', 36).length) + 180] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 180
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < activeRounds.length:
        mem[0] = 8
        if activeRounds[idx] != cd[4]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if ('cd', 36).length != totalRoundOptions[cd[4]].field_256:
            revert with 0, 'number of votes doesn't match the number of options'
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
        require ext_code.size(balanceKeeperAddress)
        staticcall balanceKeeperAddress.0x47bb89f0 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
            revert with 0, 'balance is smaller than the sum of votes'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[0] = ext_call.return_data[0]
            mem[32] = sha3(idx, sha3(cd[4], 4) + 2) + 1
            totalRoundOptions[cd[4]][2][idx][1][ext_call.return_data[0]].field_0 = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not stor5[ext_call.return_data[0]]:
            if s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length > 0:
                stor6.length++
                stor6[stor6.length] = ext_call.return_data[0]
                stor5[ext_call.return_data[0]] = 1
        idx = 0
        s = 128
        t = (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 244
        while idx < ('cd', 36).length:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit CastVotes(Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 244 len 32 * ('cd', 36).length]), msg.sender, cd[4], ext_call.return_data[0]);
    revert with 0, 'roundId is not an active vote'
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
        _289 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_289] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_289 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_289 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _289
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[32] = 4
    if bool(totalRoundOptions[stor7].field_0):
        if bool(totalRoundOptions[stor7].field_0) == uint255(totalRoundOptions[stor7].field_1) < 32:
            revert with 'NH{q', 34
        mem[0] = sha3(totalRounds, 4)
        if mem[96]:
            totalRoundOptions[stor7][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
            idx = 0
            while idx < mem[ceil32(('cd', 4).length) + 128]:
                if idx >= mem[ceil32(('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[0] = idx
                mem[32] = sha3(totalRounds, 4) + 2
                _1142 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160]]
                if bool(totalRoundOptions[stor7][2][idx].field_0):
                    if bool(totalRoundOptions[stor7][2][idx].field_0) == uint255(totalRoundOptions[stor7][2][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                    if not _1142:
                        totalRoundOptions[stor7][2][idx].field_0 = 0
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        totalRoundOptions[stor7][2][idx].field_0 = (2 * _1142) + 1
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32
                        while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1142 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1142 + 31) >> 5)
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(totalRoundOptions[stor7][2][idx].field_0) == totalRoundOptions[stor7][2][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                    if not _1142:
                        totalRoundOptions[stor7][2][idx].field_0 = 0
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        totalRoundOptions[stor7][2][idx].field_0 = (2 * _1142) + 1
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32
                        while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1142 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1142 + 31) >> 5)
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                mem[0] = totalRounds
                mem[32] = 4
                if totalRoundOptions[stor7].field_256 == -1:
                    revert with 'NH{q', 17
                totalRoundOptions[stor7].field_256++
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            activeRounds.length++
            mem[0] = 8
            activeRounds[activeRounds.length] = totalRounds
            if totalRounds == -1:
                revert with 'NH{q', 17
            totalRounds++
            _1183 = mem[64]
            mem[mem[64]] = totalRounds
            mem[mem[64] + 32] = 96
            _1219 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            var76001 = ceil32(_1219)
            if ceil32(_1219) <= _1219:
                mem[mem[64] + 64] = ceil32(_1219) + 128
                _1379 = mem[ceil32(('cd', 4).length) + 128]
                mem[_1183 + ceil32(_1219) + 128] = mem[ceil32(('cd', 4).length) + 128]
                idx = 0
                s = ceil32(('cd', 4).length) + 160
                t = _1183 + ceil32(_1219) + (32 * _1379) + 160
                u = _1183 + ceil32(_1219) + 160
                while idx < _1379:
                    mem[u] = t + -_1183 + -ceil32(_1219) - 160
                    _1413 = mem[s]
                    _1435 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1435:
                        mem[t + v + 32] = mem[_1413 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1435) > _1435:
                        mem[t + _1435 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1435) + 32
                    u = u + 32
                    continue 
            else:
                mem[mem[64] + _1219 + 128] = 0
                mem[mem[64] + 64] = ceil32(_1219) + 128
                _1381 = mem[ceil32(('cd', 4).length) + 128]
                mem[_1183 + ceil32(_1219) + 128] = mem[ceil32(('cd', 4).length) + 128]
                idx = 0
                s = ceil32(('cd', 4).length) + 160
                t = _1183 + ceil32(_1219) + (32 * _1381) + 160
                u = _1183 + ceil32(_1219) + 160
                while idx < _1381:
                    mem[u] = t + -_1183 + -ceil32(_1219) - 160
                    _1414 = mem[s]
                    _1436 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1436:
                        mem[t + v + 32] = mem[_1414 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1436) > _1436:
                        mem[t + _1436 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1436) + 32
                    u = u + 32
                    continue 
        else:
            totalRoundOptions[stor7].field_0 = 0
            idx = 0
            while uint255(totalRoundOptions[stor7].field_1) + 31 / 32 > idx:
                totalRoundOptions[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[ceil32(('cd', 4).length) + 128]:
                if idx >= mem[ceil32(('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[0] = idx
                mem[32] = sha3(totalRounds, 4) + 2
                _872 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160]]
                if bool(totalRoundOptions[stor7][2][idx].field_0):
                    if bool(totalRoundOptions[stor7][2][idx].field_0) == uint255(totalRoundOptions[stor7][2][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                    if not _872:
                        totalRoundOptions[stor7][2][idx].field_0 = 0
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        totalRoundOptions[stor7][2][idx].field_0 = (2 * _872) + 1
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32
                        while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _872 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _872 + 31) >> 5)
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(totalRoundOptions[stor7][2][idx].field_0) == totalRoundOptions[stor7][2][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                    if not _872:
                        totalRoundOptions[stor7][2][idx].field_0 = 0
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        totalRoundOptions[stor7][2][idx].field_0 = (2 * _872) + 1
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32
                        while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _872 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _872 + 31) >> 5)
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                mem[0] = totalRounds
                mem[32] = 4
                if totalRoundOptions[stor7].field_256 == -1:
                    revert with 'NH{q', 17
                totalRoundOptions[stor7].field_256++
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            activeRounds.length++
            mem[0] = 8
            activeRounds[activeRounds.length] = totalRounds
            if totalRounds == -1:
                revert with 'NH{q', 17
            totalRounds++
            _897 = mem[64]
            mem[mem[64]] = totalRounds
            mem[mem[64] + 32] = 96
            _946 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            var71001 = ceil32(_946)
            if ceil32(_946) <= _946:
                mem[mem[64] + 64] = ceil32(_946) + 128
                _1202 = mem[ceil32(('cd', 4).length) + 128]
                mem[_897 + ceil32(_946) + 128] = mem[ceil32(('cd', 4).length) + 128]
                idx = 0
                s = ceil32(('cd', 4).length) + 160
                t = _897 + ceil32(_946) + (32 * _1202) + 160
                u = _897 + ceil32(_946) + 160
                while idx < _1202:
                    mem[u] = t + -_897 + -ceil32(_946) - 160
                    _1316 = mem[s]
                    _1367 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1367:
                        mem[t + v + 32] = mem[_1316 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1367) > _1367:
                        mem[t + _1367 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1367) + 32
                    u = u + 32
                    continue 
            else:
                mem[mem[64] + _946 + 128] = 0
                mem[mem[64] + 64] = ceil32(_946) + 128
                _1210 = mem[ceil32(('cd', 4).length) + 128]
                mem[_897 + ceil32(_946) + 128] = mem[ceil32(('cd', 4).length) + 128]
                idx = 0
                s = ceil32(('cd', 4).length) + 160
                t = _897 + ceil32(_946) + (32 * _1210) + 160
                u = _897 + ceil32(_946) + 160
                while idx < _1210:
                    mem[u] = t + -_897 + -ceil32(_946) - 160
                    _1317 = mem[s]
                    _1368 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1368:
                        mem[t + v + 32] = mem[_1317 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1368) > _1368:
                        mem[t + _1368 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1368) + 32
                    u = u + 32
                    continue 
    else:
        if bool(totalRoundOptions[stor7].field_0) == totalRoundOptions[stor7].field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[0] = sha3(totalRounds, 4)
        if mem[96]:
            totalRoundOptions[stor7][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
            idx = 0
            while idx < mem[ceil32(('cd', 4).length) + 128]:
                if idx >= mem[ceil32(('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[0] = idx
                mem[32] = sha3(totalRounds, 4) + 2
                _1146 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160]]
                if bool(totalRoundOptions[stor7][2][idx].field_0):
                    if bool(totalRoundOptions[stor7][2][idx].field_0) == uint255(totalRoundOptions[stor7][2][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                    if not _1146:
                        totalRoundOptions[stor7][2][idx].field_0 = 0
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        totalRoundOptions[stor7][2][idx].field_0 = (2 * _1146) + 1
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32
                        while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1146 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1146 + 31) >> 5)
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(totalRoundOptions[stor7][2][idx].field_0) == totalRoundOptions[stor7][2][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                    if not _1146:
                        totalRoundOptions[stor7][2][idx].field_0 = 0
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        totalRoundOptions[stor7][2][idx].field_0 = (2 * _1146) + 1
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32
                        while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _1146 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _1146 + 31) >> 5)
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                mem[0] = totalRounds
                mem[32] = 4
                if totalRoundOptions[stor7].field_256 == -1:
                    revert with 'NH{q', 17
                totalRoundOptions[stor7].field_256++
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            activeRounds.length++
            mem[0] = 8
            activeRounds[activeRounds.length] = totalRounds
            if totalRounds == -1:
                revert with 'NH{q', 17
            totalRounds++
            _1184 = mem[64]
            mem[mem[64]] = totalRounds
            mem[mem[64] + 32] = 96
            _1221 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            var77001 = ceil32(_1221)
            if ceil32(_1221) <= _1221:
                mem[mem[64] + 64] = ceil32(_1221) + 128
                _1380 = mem[ceil32(('cd', 4).length) + 128]
                mem[_1184 + ceil32(_1221) + 128] = mem[ceil32(('cd', 4).length) + 128]
                idx = 0
                s = ceil32(('cd', 4).length) + 160
                t = _1184 + ceil32(_1221) + (32 * _1380) + 160
                u = _1184 + ceil32(_1221) + 160
                while idx < _1380:
                    mem[u] = t + -_1184 + -ceil32(_1221) - 160
                    _1421 = mem[s]
                    _1437 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1437:
                        mem[t + v + 32] = mem[_1421 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1437) > _1437:
                        mem[t + _1437 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1437) + 32
                    u = u + 32
                    continue 
            else:
                mem[mem[64] + _1221 + 128] = 0
                mem[mem[64] + 64] = ceil32(_1221) + 128
                _1382 = mem[ceil32(('cd', 4).length) + 128]
                mem[_1184 + ceil32(_1221) + 128] = mem[ceil32(('cd', 4).length) + 128]
                idx = 0
                s = ceil32(('cd', 4).length) + 160
                t = _1184 + ceil32(_1221) + (32 * _1382) + 160
                u = _1184 + ceil32(_1221) + 160
                while idx < _1382:
                    mem[u] = t + -_1184 + -ceil32(_1221) - 160
                    _1422 = mem[s]
                    _1438 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1438:
                        mem[t + v + 32] = mem[_1422 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1438) > _1438:
                        mem[t + _1438 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1438) + 32
                    u = u + 32
                    continue 
        else:
            totalRoundOptions[stor7].field_0 = 0
            idx = 0
            while totalRoundOptions[stor7].field_1 % 128 + 31 / 32 > idx:
                totalRoundOptions[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[ceil32(('cd', 4).length) + 128]:
                if idx >= mem[ceil32(('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[0] = idx
                mem[32] = sha3(totalRounds, 4) + 2
                _884 = mem[mem[(32 * idx) + ceil32(('cd', 4).length) + 160]]
                if bool(totalRoundOptions[stor7][2][idx].field_0):
                    if bool(totalRoundOptions[stor7][2][idx].field_0) == uint255(totalRoundOptions[stor7][2][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                    if not _884:
                        totalRoundOptions[stor7][2][idx].field_0 = 0
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        totalRoundOptions[stor7][2][idx].field_0 = (2 * _884) + 1
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32
                        while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _884 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _884 + 31) >> 5)
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (uint255(totalRoundOptions[stor7][2][idx].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(totalRoundOptions[stor7][2][idx].field_0) == totalRoundOptions[stor7][2][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(idx, sha3(totalRounds, 4) + 2)
                    if not _884:
                        totalRoundOptions[stor7][2][idx].field_0 = 0
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        totalRoundOptions[stor7][2][idx].field_0 = (2 * _884) + 1
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2))
                        t = mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + 32
                        while mem[(32 * idx) + ceil32(('cd', 4).length) + 160] + _884 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (Mask(251, 0, _884 + 31) >> 5)
                        while sha3(sha3(idx, sha3(totalRounds, 4) + 2)) + (totalRoundOptions[stor7][2][idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                mem[0] = totalRounds
                mem[32] = 4
                if totalRoundOptions[stor7].field_256 == -1:
                    revert with 'NH{q', 17
                totalRoundOptions[stor7].field_256++
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            activeRounds.length++
            mem[0] = 8
            activeRounds[activeRounds.length] = totalRounds
            if totalRounds == -1:
                revert with 'NH{q', 17
            totalRounds++
            _904 = mem[64]
            mem[mem[64]] = totalRounds
            mem[mem[64] + 32] = 96
            _953 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            var72001 = ceil32(_953)
            if ceil32(_953) <= _953:
                mem[mem[64] + 64] = ceil32(_953) + 128
                _1206 = mem[ceil32(('cd', 4).length) + 128]
                mem[_904 + ceil32(_953) + 128] = mem[ceil32(('cd', 4).length) + 128]
                idx = 0
                s = ceil32(('cd', 4).length) + 160
                t = _904 + ceil32(_953) + (32 * _1206) + 160
                u = _904 + ceil32(_953) + 160
                while idx < _1206:
                    mem[u] = t + -_904 + -ceil32(_953) - 160
                    _1325 = mem[s]
                    _1373 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1373:
                        mem[t + v + 32] = mem[_1325 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1373) > _1373:
                        mem[t + _1373 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1373) + 32
                    u = u + 32
                    continue 
            else:
                mem[mem[64] + _953 + 128] = 0
                mem[mem[64] + 64] = ceil32(_953) + 128
                _1214 = mem[ceil32(('cd', 4).length) + 128]
                mem[_904 + ceil32(_953) + 128] = mem[ceil32(('cd', 4).length) + 128]
                idx = 0
                s = ceil32(('cd', 4).length) + 160
                t = _904 + ceil32(_953) + (32 * _1214) + 160
                u = _904 + ceil32(_953) + 160
                while idx < _1214:
                    mem[u] = t + -_904 + -ceil32(_953) - 160
                    _1326 = mem[s]
                    _1374 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1374:
                        mem[t + v + 32] = mem[_1326 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1374) > _1374:
                        mem[t + _1374 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1374) + 32
                    u = u + 32
                    continue 
    emit StartRound(address arg1, uint256 arg2, string arg3, string[] arg4):
                    mem[mem[64] len t - mem[64]],
                    msg.sender,
}



}
