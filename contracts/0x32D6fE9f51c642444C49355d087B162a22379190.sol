contract main {




// =====================  Runtime code  =====================


#
#  - vest(address arg1, uint256 arg2)
#  - withdraw(uint256 arg1)
#  - claimable(address arg1)
#  - claim()
#  - withdrawAll()
#  - withdrawExpiredLocks()
#  - stake(uint256 arg1, bool arg2)
#  - notifyRewardAmount(address arg1, uint256 arg2)
#
const burnAddress = 57005

const sub_77a7e77d(?) = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


address owner;
array of address rewardTokens;
mapping of struct rewardData;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
mapping of uint8 stor6;
uint256 rewardsDuration;
uint256 lockDuration;
address stakingTokenAddress;
mapping of struct balanceOf;
array of struct stor11;
array of struct stor12;
uint256 totalSupply;
uint256 lockedSupply;
uint8 sub_f3c7869f;
uint8 sub_49443c57; offset 8
address sub_012caae1Address; offset 16
uint256 stor15; offset 8
uint256 sub_2e65711a;

function sub_012caae1(?) payable {
    return sub_012caae1Address
}

function lockDuration() payable {
    return lockDuration
}

function totalSupply() payable {
    return totalSupply
}

function sub_2e65711a(?) payable {
    return sub_2e65711a
}

function rewardsDuration() payable {
    return rewardsDuration
}

function rewardDistributors(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[arg1][arg2])
}

function rewardData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardData[arg1].field_0, rewardData[arg1].field_256, rewardData[arg1].field_512, rewardData[arg1].field_768
}

function sub_49443c57(?) payable {
    return bool(sub_49443c57)
}

function userRewardPerTokenPaid(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userRewardPerTokenPaid[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
}

function stakingToken() payable {
    return stakingTokenAddress
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

function sub_f3c7869f(?) payable {
    return bool(sub_f3c7869f)
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

function setLockDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lockDuration = arg1
}

function setRewardDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsDuration = arg1
}

function sub_2dba8258(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f3c7869f = uint8(bool(arg1))
}

function sub_94991039(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = Mask(248, 0, bool(arg1))
}

function sub_b25a7a18(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_012caae1Address = address(arg1)
}

function sub_4ca944c8(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0, '!valid'
    sub_2e65711a = arg1
}

function lastTimeRewardApplicable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < rewardData[address(arg1)].field_0:
        return block.timestamp
    return rewardData[address(arg1)].field_0
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
    if rewardsDuration * rewardData[address(arg1)].field_256 / rewardData[address(arg1)].field_256 != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (rewardsDuration * rewardData[address(arg1)].field_256)
}

function unlockedBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = balanceOf[address(arg1)].field_256
    while idx < stor12[msg.sender].field_0:
        if stor12[msg.sender][idx].field_256 > block.timestamp:
            return s
        require idx < stor12[msg.sender].field_0
        mem[0] = sha3(msg.sender, 12)
        if stor12[msg.sender][idx].field_0 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = stor12[msg.sender][idx].field_0 + s
        continue 
    return (balanceOf[address(arg1)].field_256 + (stor[(2 * stor12[msg.sender].field_0) + _13] * stor12[msg.sender].field_0))
}

function withdrawableBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balanceOf[address(arg1)].field_768:
        if balanceOf[address(arg1)].field_768 + balanceOf[address(arg1)].field_256 < balanceOf[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > balanceOf[address(arg1)].field_768 + balanceOf[address(arg1)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        return balanceOf[address(arg1)].field_768 + balanceOf[address(arg1)].field_256, 0
    idx = 0
    while idx < stor12[address(arg1)].field_0:
        mem[32] = 12
        require idx < stor12[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 12)
        if 0 == stor12[address(arg1)][idx].field_0:
            idx = idx + 1
            continue 
        mem[32] = 12
        require idx < stor12[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 12)
        if stor12[address(arg1)][idx].field_256 <= block.timestamp:
            if stor12[address(arg1)][idx].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        if 0 > balanceOf[address(arg1)].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        if balanceOf[address(arg1)].field_768 + balanceOf[address(arg1)].field_256 < balanceOf[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if uint255(balanceOf[address(arg1)].field_769) > balanceOf[address(arg1)].field_768 + balanceOf[address(arg1)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        return balanceOf[address(arg1)].field_768 + balanceOf[address(arg1)].field_256 - uint255(balanceOf[address(arg1)].field_769), 
               uint255(balanceOf[address(arg1)].field_769)
    if 0 > balanceOf[address(arg1)].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[address(arg1)].field_768 + balanceOf[address(arg1)].field_256 < balanceOf[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if uint255(balanceOf[address(arg1)].field_769) > balanceOf[address(arg1)].field_768 + balanceOf[address(arg1)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    return balanceOf[address(arg1)].field_768 + balanceOf[address(arg1)].field_256 - uint255(balanceOf[address(arg1)].field_769), 
           uint255(balanceOf[address(arg1)].field_769)
}

function vestedBalances(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 12
    idx = 0
    s = 0
    t = 96
    u = 0
    while idx < stor12[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 12)
        if stor12[address(arg1)][idx].field_256 <= block.timestamp:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if s:
            require idx < stor12[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 12)
            _27 = mem[64]
            mem[64] = mem[64] + 64
            mem[_27] = stor12[address(arg1)][idx].field_0
            mem[_27 + 32] = stor12[address(arg1)][idx].field_256
            require s < mem[t]
            mem[(32 * s) + t + 32] = _27
            require idx < stor12[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 12)
            if stor12[address(arg1)][idx].field_0 + u < u:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + 1
            t = t
            u = stor12[address(arg1)][idx].field_0 + u
            continue 
        require stor12[address(arg1)].field_0 - idx <= test266151307()
        _29 = mem[64]
        mem[mem[64]] = stor12[address(arg1)].field_0 - idx
        if not stor12[address(arg1)].field_0 - idx:
            require idx < stor12[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 12)
            _36 = mem[64] + (32 * stor12[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor12[address(arg1)].field_0 - idx) + 96
            mem[_36] = stor12[address(arg1)][idx].field_0
            mem[_36 + 32] = stor12[address(arg1)][idx].field_256
            require s < mem[_29]
            mem[(32 * s) + _29 + 32] = _36
        else:
            _61 = mem[64] + (32 * stor12[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor12[address(arg1)].field_0 - idx) + 96
            mem[_61] = 0
            mem[_61 + 32] = 0
            mem[var20001] = _61
            v = var20001
            t = var20002
            while t - 1:
                _61 = mem[64]
                mem[64] = mem[64] + 64
                mem[_61] = 0
                mem[_61 + 32] = 0
                mem[v + 32] = _61
                v = v + 32
                t = t - 1
                continue 
            require idx < stor12[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 12)
            _63 = mem[64]
            mem[64] = mem[64] + 64
            mem[_63] = stor12[address(arg1)][idx].field_0
            mem[_63 + 32] = stor12[address(arg1)][idx].field_256
            require s < mem[_29]
            mem[(32 * s) + _29 + 32] = _63
        require idx < stor12[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 12)
        if stor12[address(arg1)][idx].field_0 + u < u:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + 1
        t = _29
        u = stor12[address(arg1)][idx].field_0 + u
        continue 
    _23 = mem[64]
    mem[mem[64]] = u
    mem[mem[64] + 32] = 64
    _25 = mem[t]
    mem[mem[64] + 64] = mem[t]
    idx = 0
    s = t + 32
    u = mem[64] + 96
    while idx < _25:
        _50 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_50 + 32]
        idx = idx + 1
        s = s + 32
        u = u + 64
        continue 
    return memory
      from mem[64]
       len _23 + (64 * _25) + -mem[64] + 96
}

function lockedBalances(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 11
    idx = 0
    s = 0
    t = 96
    u = 0
    while idx < stor11[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 11)
        if stor11[address(arg1)][idx].field_256 <= block.timestamp:
            require idx < stor11[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 11)
            if stor11[address(arg1)][idx].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if s:
            require idx < stor11[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 11)
            _33 = mem[64]
            mem[64] = mem[64] + 64
            mem[_33] = stor11[address(arg1)][idx].field_0
            mem[_33 + 32] = stor11[address(arg1)][idx].field_256
            require s < mem[t]
            mem[(32 * s) + t + 32] = _33
            require idx < stor11[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 11)
            if stor11[address(arg1)][idx].field_0 + u < u:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + 1
            t = t
            u = stor11[address(arg1)][idx].field_0 + u
            continue 
        require stor11[address(arg1)].field_0 - idx <= test266151307()
        _35 = mem[64]
        mem[mem[64]] = stor11[address(arg1)].field_0 - idx
        if not stor11[address(arg1)].field_0 - idx:
            require idx < stor11[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 11)
            _44 = mem[64] + (32 * stor11[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor11[address(arg1)].field_0 - idx) + 96
            mem[_44] = stor11[address(arg1)][idx].field_0
            mem[_44 + 32] = stor11[address(arg1)][idx].field_256
            require s < mem[_35]
            mem[(32 * s) + _35 + 32] = _44
        else:
            _69 = mem[64] + (32 * stor11[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor11[address(arg1)].field_0 - idx) + 96
            mem[_69] = 0
            mem[_69 + 32] = 0
            mem[var20001] = _69
            v = var20001
            t = var20002
            while t - 1:
                _69 = mem[64]
                mem[64] = mem[64] + 64
                mem[_69] = 0
                mem[_69 + 32] = 0
                mem[v + 32] = _69
                v = v + 32
                t = t - 1
                continue 
            require idx < stor11[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 11)
            _71 = mem[64]
            mem[64] = mem[64] + 64
            mem[_71] = stor11[address(arg1)][idx].field_0
            mem[_71 + 32] = stor11[address(arg1)][idx].field_256
            require s < mem[_35]
            mem[(32 * s) + _35 + 32] = _71
        require idx < stor11[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 11)
        if stor11[address(arg1)][idx].field_0 + u < u:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + 1
        t = _35
        u = stor11[address(arg1)][idx].field_0 + u
        continue 
    mem[0] = arg1
    mem[32] = 10
    _28 = mem[64]
    mem[mem[64]] = balanceOf[address(arg1)].field_512
    mem[mem[64] + 32] = 0
    mem[mem[64] + 64] = u
    mem[mem[64] + 96] = 128
    _30 = mem[t]
    mem[mem[64] + 128] = mem[t]
    idx = 0
    s = t + 32
    u = mem[64] + 160
    while idx < _30:
        _58 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_58 + 32]
        idx = idx + 1
        s = s + 32
        u = u + 64
        continue 
    return memory
      from mem[64]
       len _28 + (64 * _30) + -mem[64] + 160
}

function rewardPerToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stakingTokenAddress == arg1:
        if not lockedSupply:
            return rewardData[address(arg1)].field_768
        if block.timestamp < rewardData[address(arg1)].field_0:
            if rewardData[address(arg1)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - rewardData[address(arg1)].field_512:
                if lockedSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require lockedSupply
                if (0 / lockedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / lockedSupply) + rewardData[address(arg1)].field_768)
            if (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / block.timestamp - rewardData[address(arg1)].field_512 != rewardData[address(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
                if lockedSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require lockedSupply
                if (0 / lockedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / lockedSupply) + rewardData[address(arg1)].field_768)
            if (10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if lockedSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require lockedSupply
            if ((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / lockedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return (((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / lockedSupply) + rewardData[address(arg1)].field_768)
        if rewardData[address(arg1)].field_512 > rewardData[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512:
            if lockedSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require lockedSupply
            if (0 / lockedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / lockedSupply) + rewardData[address(arg1)].field_768)
        if (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512 != rewardData[address(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
            if lockedSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require lockedSupply
            if (0 / lockedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / lockedSupply) + rewardData[address(arg1)].field_768)
        if (10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if lockedSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require lockedSupply
        if ((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / lockedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / lockedSupply) + rewardData[address(arg1)].field_768)
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



}
