contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - sub_69da5487(?)
#  - stake(uint256 arg1, uint256 arg2)
#  - recoverERC20(address arg1, uint256 arg2)
#  - withdrawExpiredLocks()
#  - earn(address arg1, uint256 arg2)
#  - notifyRewardAmount(address arg1, uint256 arg2)
#  - exit()
#
const lockDuration = (2184 * 24 * 3600)

const rewardsDuration = (168 * 24 * 3600)


address owner;
address stakingTokenAddress;
array of address rewardTokens;
mapping of struct rewardData;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 sub_3b17c5ab;
array of uint256 sub_01d50e30;
mapping of uint256 sub_724dfeda;
uint256 totalSupply;
uint256 lockedSupply;
uint256 boostedSupply;
mapping of struct totalBalance;
array of struct stor16;
array of struct stor17;

function sub_01d50e30(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_01d50e30.length
    return sub_01d50e30[arg1]
}

function sub_0cb4196d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function rewardDistributors(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[arg1][arg2])
}

function sub_3b17c5ab(?) payable {
    return sub_3b17c5ab
}

function rewardData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardData[arg1].field_0, rewardData[arg1].field_256, rewardData[arg1].field_512, rewardData[arg1].field_768
}

function totalBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalBalance[address(arg1)].field_0
}

function userRewardPerTokenPaid(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userRewardPerTokenPaid[arg1][arg2]
}

function sub_724dfeda(?) payable {
    require calldata.size - 4 >= 32
    return sub_724dfeda[arg1]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function boostedSupply() payable {
    return boostedSupply
}

function rewardTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardTokens.length
    return rewardTokens[arg1]
}

function owner() payable {
    return owner
}

function lockedSupply() payable {
    return lockedSupply
}

function rewards(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return rewards[arg1][arg2]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function lastTimeRewardApplicable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < rewardData[address(arg1)].field_0:
        return block.timestamp
    return rewardData[address(arg1)].field_0
}

function sub_46e72aba(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = uint8(bool(arg2))
}

function sub_98aa0f16(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multiplier must be greater than or equal to 1'
    sub_3b17c5ab = arg1
}

function approveRewardDistributor(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require rewardData[address(arg1)].field_512
    stor6[address(arg1)][address(arg2)] = uint8(arg3)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addReward(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not rewardData[address(arg1)].field_512
    rewardTokens.length++
    rewardTokens[rewardTokens.length] = arg1
    rewardData[address(arg1)].field_512 = block.timestamp
    stor6[address(arg1)][address(arg2)] = 1
}

function getRewardForDuration(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not rewardData[address(arg1)].field_256:
        return 0
    if 168 * 24 * 3600 * rewardData[address(arg1)].field_256 / rewardData[address(arg1)].field_256 != 168 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (168 * 24 * 3600 * rewardData[address(arg1)].field_256)
}

function unlockedBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = totalBalance[address(arg1)].field_256
    while idx < stor17[msg.sender].field_0:
        if stor17[msg.sender][idx].field_512 > block.timestamp:
            return s
        require idx < stor17[msg.sender].field_0
        mem[0] = sha3(msg.sender, 17)
        if stor17[msg.sender][idx].field_0 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = stor17[msg.sender][idx].field_0 + s
        continue 
    return (totalBalance[address(arg1)].field_256 + (stor[(3 * stor17[msg.sender].field_0) + _14] * stor17[msg.sender].field_0))
}

function sub_524c3f56(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'week should be greater than 0'
    if arg2 < 1:
        revert with 0, '!multiplier'
    if arg2 > sub_3b17c5ab:
        revert with 0, '!multiplier'
    idx = 0
    while idx < sub_01d50e30.length:
        mem[0] = 10
        if sub_01d50e30[idx] != arg1:
            idx = idx + 1
            continue 
        if idx == sub_01d50e30.length:
            sub_01d50e30.length++
            sub_01d50e30[sub_01d50e30.length] = arg1
        sub_724dfeda[arg1] = arg2
    if sub_01d50e30.length == sub_01d50e30.length:
        sub_01d50e30.length++
        sub_01d50e30[sub_01d50e30.length] = arg1
    sub_724dfeda[arg1] = arg2
}

function withdrawableBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalBalance[address(arg1)].field_1024:
        if totalBalance[address(arg1)].field_1024 + totalBalance[address(arg1)].field_256 < totalBalance[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > totalBalance[address(arg1)].field_1024 + totalBalance[address(arg1)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalBalance[address(arg1)].field_1024 + totalBalance[address(arg1)].field_256, 0
    idx = 0
    while idx < stor17[address(arg1)].field_0:
        mem[32] = 17
        require idx < stor17[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 17)
        if 0 == stor17[address(arg1)][idx].field_0:
            idx = idx + 1
            continue 
        mem[32] = 17
        require idx < stor17[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 17)
        if stor17[address(arg1)][idx].field_512 <= block.timestamp:
            if stor17[address(arg1)][idx].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        if 0 > totalBalance[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalBalance[address(arg1)].field_1024 + totalBalance[address(arg1)].field_256 < totalBalance[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if uint255(totalBalance[address(arg1)].field_1025) > totalBalance[address(arg1)].field_1024 + totalBalance[address(arg1)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalBalance[address(arg1)].field_1024 + totalBalance[address(arg1)].field_256 - uint255(totalBalance[address(arg1)].field_1025), 
               uint255(totalBalance[address(arg1)].field_1025)
    if 0 > totalBalance[address(arg1)].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalBalance[address(arg1)].field_1024 + totalBalance[address(arg1)].field_256 < totalBalance[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if uint255(totalBalance[address(arg1)].field_1025) > totalBalance[address(arg1)].field_1024 + totalBalance[address(arg1)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    return totalBalance[address(arg1)].field_1024 + totalBalance[address(arg1)].field_256 - uint255(totalBalance[address(arg1)].field_1025), 
           uint255(totalBalance[address(arg1)].field_1025)
}

function lockedBalances(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < sub_01d50e30.length:
        mem[0] = sub_01d50e30[idx]
        mem[32] = sha3(address(arg1), 16)
        s = 0
        t = 0
        while s < stor16[address(arg1)][stor10[idx]].field_0:
            mem[0] = sha3(sub_01d50e30[idx], sha3(address(arg1), 16))
            if stor16[address(arg1)][stor10[idx]][s].field_512 <= block.timestamp:
                s = s + 1
                t = t
                continue 
            if stor16[address(arg1)][stor10[idx]].field_0 - s + t < t:
                revert with 0, 'SafeMath: addition overflow'
            s = s + 1
            t = stor16[address(arg1)][stor10[idx]].field_0 - s + t
            continue 
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_01d50e30.length:
        mem[0] = sub_01d50e30[idx]
        mem[32] = sha3(address(arg1), 16)
        s = 0
        t = 0
        u = 0
        while s < stor16[address(arg1)][stor10[idx]].field_0:
            require s < stor16[address(arg1)][stor10[idx]].field_0
            mem[0] = sha3(sub_01d50e30[idx], sha3(address(arg1), 16))
            if stor16[address(arg1)][stor10[idx]][s].field_512 <= block.timestamp:
                if stor16[address(arg1)][stor10[idx]][s].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                s = s + 1
                t = t
                u = u
                continue 
            _87 = mem[64]
            mem[64] = mem[64] + 96
            mem[_87] = stor16[address(arg1)][stor10[idx]][s].field_0
            mem[_87 + 32] = stor16[address(arg1)][stor10[idx]][s].field_256
            mem[_87 + 64] = stor16[address(arg1)][stor10[idx]][s].field_512
            require t < mem[96]
            mem[(32 * t) + 128] = _87
            require s < stor16[address(arg1)][stor10[idx]].field_0
            mem[0] = sha3(sub_01d50e30[idx], sha3(address(arg1), 16))
            if stor16[address(arg1)][stor10[idx]][s].field_0 + u < u:
                revert with 0, 'SafeMath: addition overflow'
            s = s + 1
            t = t + 1
            u = stor16[address(arg1)][stor10[idx]][s].field_0 + u
            continue 
        idx = idx + 1
        continue 
    mem[0] = arg1
    mem[32] = 15
    _57 = mem[64]
    mem[mem[64]] = totalBalance[address(arg1)].field_512
    mem[mem[64] + 32] = 0
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = 128
    _61 = mem[96]
    mem[mem[64] + 128] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 160
    while idx < _61:
        _79 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_79 + 32]
        mem[t + 64] = mem[_79 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _57 + (96 * _61) + -mem[64] + 160
}

function earnedBalances(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 17
    idx = 0
    s = 0
    t = 96
    u = 0
    while idx < stor17[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 17)
        if stor17[address(arg1)][idx].field_512 <= block.timestamp:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if s:
            require idx < stor17[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 17)
            _28 = mem[64]
            mem[64] = mem[64] + 96
            mem[_28] = stor17[address(arg1)][idx].field_0
            mem[_28 + 32] = stor17[address(arg1)][idx].field_256
            mem[_28 + 64] = stor17[address(arg1)][idx].field_512
            require s < mem[t]
            mem[(32 * s) + t + 32] = _28
            require idx < stor17[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 17)
            if stor17[address(arg1)][idx].field_0 + u < u:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + 1
            t = t
            u = stor17[address(arg1)][idx].field_0 + u
            continue 
        require stor17[address(arg1)].field_0 - idx <= test266151307()
        _30 = mem[64]
        mem[mem[64]] = stor17[address(arg1)].field_0 - idx
        if not stor17[address(arg1)].field_0 - idx:
            require idx < stor17[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 17)
            _38 = mem[64] + (32 * stor17[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor17[address(arg1)].field_0 - idx) + 128
            mem[_38] = stor17[address(arg1)][idx].field_0
            mem[_38 + 32] = stor17[address(arg1)][idx].field_256
            mem[_38 + 64] = stor17[address(arg1)][idx].field_512
            require s < mem[_30]
            mem[(32 * s) + _30 + 32] = _38
        else:
            _64 = mem[64] + (32 * stor17[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor17[address(arg1)].field_0 - idx) + 128
            mem[_64] = 0
            mem[_64 + 32] = 0
            mem[_64 + 64] = 0
            mem[var20001] = _64
            v = var20001
            t = var20002
            while t - 1:
                _64 = mem[64]
                mem[64] = mem[64] + 96
                mem[_64] = 0
                mem[_64 + 32] = 0
                mem[_64 + 64] = 0
                mem[v + 32] = _64
                v = v + 32
                t = t - 1
                continue 
            require idx < stor17[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 17)
            _66 = mem[64]
            mem[64] = mem[64] + 96
            mem[_66] = stor17[address(arg1)][idx].field_0
            mem[_66 + 32] = stor17[address(arg1)][idx].field_256
            mem[_66 + 64] = stor17[address(arg1)][idx].field_512
            require s < mem[_30]
            mem[(32 * s) + _30 + 32] = _66
        require idx < stor17[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 17)
        if stor17[address(arg1)][idx].field_0 + u < u:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + 1
        t = _30
        u = stor17[address(arg1)][idx].field_0 + u
        continue 
    _24 = mem[64]
    mem[mem[64]] = u
    mem[mem[64] + 32] = 64
    _26 = mem[t]
    mem[mem[64] + 64] = mem[t]
    idx = 0
    s = t + 32
    u = mem[64] + 96
    while idx < _26:
        _52 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_52 + 32]
        mem[u + 64] = mem[_52 + 64]
        idx = idx + 1
        s = s + 32
        u = u + 96
        continue 
    return memory
      from mem[64]
       len _24 + (96 * _26) + -mem[64] + 96
}

function rewardPerToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stakingTokenAddress == arg1:
        if not boostedSupply:
            return rewardData[address(arg1)].field_768
        if block.timestamp < rewardData[address(arg1)].field_0:
            if rewardData[address(arg1)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - rewardData[address(arg1)].field_512:
                if boostedSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require boostedSupply
                if (0 / boostedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / boostedSupply) + rewardData[address(arg1)].field_768)
            if (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / block.timestamp - rewardData[address(arg1)].field_512 != rewardData[address(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
                if boostedSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require boostedSupply
                if (0 / boostedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / boostedSupply) + rewardData[address(arg1)].field_768)
            if (10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if boostedSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require boostedSupply
            if ((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / boostedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return (((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / boostedSupply) + rewardData[address(arg1)].field_768)
        if rewardData[address(arg1)].field_512 > rewardData[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512:
            if boostedSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require boostedSupply
            if (0 / boostedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / boostedSupply) + rewardData[address(arg1)].field_768)
        if (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512 != rewardData[address(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
            if boostedSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require boostedSupply
            if (0 / boostedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / boostedSupply) + rewardData[address(arg1)].field_768)
        if (10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if boostedSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require boostedSupply
        if ((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / boostedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / boostedSupply) + rewardData[address(arg1)].field_768)
    if not totalSupply:
        return rewardData[address(arg1)].field_768
    if block.timestamp < rewardData[address(arg1)].field_0:
        if rewardData[address(arg1)].field_512 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - rewardData[address(arg1)].field_512:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardData[address(arg1)].field_768)
        if (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / block.timestamp - rewardData[address(arg1)].field_512 != rewardData[address(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardData[address(arg1)].field_768)
        if (10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if ((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / totalSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / totalSupply) + rewardData[address(arg1)].field_768)
    if rewardData[address(arg1)].field_512 > rewardData[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardData[address(arg1)].field_768)
    if (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512 != rewardData[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardData[address(arg1)].field_768)
    if (10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if ((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / totalSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / totalSupply) + rewardData[address(arg1)].field_768)
}

function claimableRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require rewardTokens.length <= test266151307()
    mem[96] = rewardTokens.length
    mem[64] = (32 * rewardTokens.length) + 128
    if not rewardTokens.length:
        idx = 0
        while idx < rewardTokens.length:
            require idx < rewardTokens.length
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = rewardTokens[idx]
            require idx < mem[96]
            if not idx:
                if not boostedSupply:
                    mem[0] = rewardTokens[idx]
                    mem[32] = 4
                    if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > rewardData[stor3[idx]].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not totalBalance[address(arg1)].field_768:
                        if rewards[address(arg1)][stor3[idx]] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                    else:
                        if (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
                else:
                    if block.timestamp < rewardData[stor3[idx]].field_0:
                        if rewardData[stor3[idx]].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - rewardData[stor3[idx]].field_512:
                            if boostedSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require boostedSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / boostedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / boostedSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_768:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != (0 / boostedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
                        else:
                            if (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / block.timestamp - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                                if boostedSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require boostedSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if (0 / boostedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / boostedSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_768:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != (0 / boostedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
                            else:
                                if (10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if boostedSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require boostedSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_768:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
                    else:
                        if rewardData[stor3[idx]].field_512 > rewardData[stor3[idx]].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512:
                            if boostedSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require boostedSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / boostedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / boostedSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_768:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != (0 / boostedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
                        else:
                            if (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                                if boostedSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require boostedSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if (0 / boostedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / boostedSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_768:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != (0 / boostedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
                            else:
                                if (10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if boostedSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require boostedSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_768:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
            else:
                if not totalSupply:
                    mem[0] = rewardTokens[idx]
                    mem[32] = 4
                    if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > rewardData[stor3[idx]].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not totalBalance[address(arg1)].field_0:
                        if rewards[address(arg1)][stor3[idx]] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                    else:
                        if (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                else:
                    if block.timestamp < rewardData[stor3[idx]].field_0:
                        if rewardData[stor3[idx]].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - rewardData[stor3[idx]].field_512:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_0:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                        else:
                            if (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / block.timestamp - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_0:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                            else:
                                if (10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_0:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                    else:
                        if rewardData[stor3[idx]].field_512 > rewardData[stor3[idx]].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_0:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                        else:
                            if (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_0:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                            else:
                                if (10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_0:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
            idx = idx + 1
            continue 
        _299 = mem[64]
        mem[mem[64]] = 32
        _302 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _302:
            _733 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_733 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _299 + (64 * _302) + -mem[64] + 64
    mem[64] = (32 * rewardTokens.length) + 192
    mem[(32 * rewardTokens.length) + 128] = 0
    mem[(32 * rewardTokens.length) + 160] = 0
    mem[var14001] = (32 * rewardTokens.length) + 128
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * rewardTokens.length) + 128] = 0
        mem[(32 * rewardTokens.length) + 160] = 0
        mem[s + 32] = (32 * rewardTokens.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    _884 = mem[96]
    idx = 0
    while idx < _884:
        require idx < rewardTokens.length
        require idx < mem[96]
        mem[mem[(32 * idx) + 128]] = rewardTokens[idx]
        require idx < mem[96]
        if not idx:
            if not boostedSupply:
                mem[0] = rewardTokens[idx]
                mem[32] = 4
                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > rewardData[stor3[idx]].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalBalance[address(arg1)].field_768:
                    if rewards[address(arg1)][stor3[idx]] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                else:
                    if (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
            else:
                if block.timestamp < rewardData[stor3[idx]].field_0:
                    if rewardData[stor3[idx]].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - rewardData[stor3[idx]].field_512:
                        if boostedSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require boostedSupply
                        mem[0] = rewardTokens[idx]
                        mem[32] = 4
                        if (0 / boostedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / boostedSupply) + rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalBalance[address(arg1)].field_768:
                            if rewards[address(arg1)][stor3[idx]] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                        else:
                            if (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != (0 / boostedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
                    else:
                        if (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / block.timestamp - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                            if boostedSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require boostedSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / boostedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / boostedSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_768:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != (0 / boostedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
                        else:
                            if (10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if boostedSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require boostedSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_768:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
                else:
                    if rewardData[stor3[idx]].field_512 > rewardData[stor3[idx]].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512:
                        if boostedSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require boostedSupply
                        mem[0] = rewardTokens[idx]
                        mem[32] = 4
                        if (0 / boostedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / boostedSupply) + rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalBalance[address(arg1)].field_768:
                            if rewards[address(arg1)][stor3[idx]] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                        else:
                            if (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != (0 / boostedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
                    else:
                        if (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                            if boostedSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require boostedSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / boostedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / boostedSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_768:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != (0 / boostedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < (0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
                        else:
                            if (10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if boostedSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require boostedSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_768:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / totalBalance[address(arg1)].field_768 != ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18) < ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / boostedSupply * totalBalance[address(arg1)].field_768) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_768) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_768) / 10^18)
        else:
            if not totalSupply:
                mem[0] = rewardTokens[idx]
                mem[32] = 4
                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > rewardData[stor3[idx]].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalBalance[address(arg1)].field_0:
                    if rewards[address(arg1)][stor3[idx]] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                else:
                    if (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
            else:
                if block.timestamp < rewardData[stor3[idx]].field_0:
                    if rewardData[stor3[idx]].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - rewardData[stor3[idx]].field_512:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        mem[0] = rewardTokens[idx]
                        mem[32] = 4
                        if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalBalance[address(arg1)].field_0:
                            if rewards[address(arg1)][stor3[idx]] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                        else:
                            if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                    else:
                        if (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / block.timestamp - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_0:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                        else:
                            if (10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_0:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                else:
                    if rewardData[stor3[idx]].field_512 > rewardData[stor3[idx]].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        mem[0] = rewardTokens[idx]
                        mem[32] = 4
                        if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalBalance[address(arg1)].field_0:
                            if rewards[address(arg1)][stor3[idx]] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                        else:
                            if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                    else:
                        if (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_0:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                        else:
                            if (10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_0:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
        idx = idx + 1
        continue 
    _885 = mem[64]
    mem[mem[64]] = 32
    _888 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _888:
        _1171 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1171 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _885 + (64 * _888) + -mem[64] + 64
}



}
