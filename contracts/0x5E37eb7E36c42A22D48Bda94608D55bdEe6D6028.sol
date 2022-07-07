contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address sub_7419f946Address;
address sub_e64ce988Address;
array of struct stor4;
mapping of uint256 stor5;
uint256 totalStaked;
uint256 accTokenPerShare;
uint256 endBlock;
uint256 startBlock;
uint256 lastRewardBlock;
uint256 rewardPerBlock;
mapping of struct userInfo;
mapping of uint256 sub_3937ea4f;

function endBlock() payable {
    return endBlock
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function sub_3937ea4f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_3937ea4f[arg1][arg2]
}

function startBlock() payable {
    return startBlock
}

function sub_7419f946(?) payable {
    return sub_7419f946Address
}

function totalStaked() payable {
    return totalStaked
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function accTokenPerShare() payable {
    return accTokenPerShare
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function sub_e64ce988(?) payable {
    return sub_e64ce988Address
}

function _fallback() payable {
    revert
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endBlock = block.number
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number >= startBlock:
        revert with 0, 'Pool has started'
    rewardPerBlock = arg1
}

function sub_b1fce4bb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[arg1]:
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor5[arg1] = stor4.length
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_e21ac504(?) payable {
    if stor4.length:
        mem[128] = uint256(stor4.field_0)
        idx = 128
        s = 0
        while (32 * stor4.length) + 96 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor4.length, data=mem[128 len 32 * stor4.length])
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    mem[(32 * stor4.length) + 192 len 32 * stor4.length] = mem[128 len 32 * stor4.length]
    return memory
      from (32 * stor4.length) + 128
       len (96 * stor4.length) + 64
}

function updateStartAndEndBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number >= startBlock:
        revert with 0, 'Pool has started'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New startBlock must be lower than new endBlock'
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New startBlock must be higher than current block'
    startBlock = arg1
    endBlock = arg2
    lastRewardBlock = startBlock
}

function sub_ce3acec8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[arg1]:
        if stor5[arg1] < 1:
            revert with 'NH{q', 17
        if stor4.length < 1:
            revert with 'NH{q', 17
        if stor4.length - 1 != stor5[arg1] - 1:
            if stor4.length - 1 >= stor4.length:
                revert with 'NH{q', 50
            if stor5[arg1] - 1 >= stor4.length:
                revert with 'NH{q', 50
            stor4[stor5[arg1]].field_0 = stor4[stor4.length].field_0
            stor5[stor4[stor4.length].field_0] = stor5[arg1]
        if not stor4.length:
            revert with 'NH{q', 49
        stor4[stor4.length].field_0 = 0
        stor4.length--
        stor5[arg1] = 0
}

function sub_c034c414(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if stor4.length > test266151307():
        revert with 'NH{q', 65
    if stor4.length:
        mem[128 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    if stor4.length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * stor4.length) + 128] = stor4.length
    if stor4.length:
        mem[(32 * stor4.length) + 160 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    idx = 0
    while idx < stor4.length:
        mem[0] = stor4[idx].field_0
        mem[32] = sha3(address(arg1), 13)
        if idx >= stor4.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor4[idx].field_0
        if idx >= mem[(32 * stor4.length) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * stor4.length) + 160] = sub_3937ea4f[address(arg1)][stor4[idx].field_0]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(64 * stor4.length) + 160] = 64
    mem[(64 * stor4.length) + 224] = stor4.length
    mem[(64 * stor4.length) + 256 len 32 * stor4.length] = mem[128 len 32 * stor4.length]
    mem[(64 * stor4.length) + 192] = (32 * stor4.length) + 96
    mem[(98 * stor4.length) + 256] = mem[(32 * stor4.length) + 128]
    mem[(98 * stor4.length) + 288 len 32 * mem[(32 * stor4.length) + 128]] = mem[(32 * stor4.length) + 160 len 32 * mem[(32 * stor4.length) + 128]]
    return memory
      from (64 * stor4.length) + 160
       len (161 * stor4.length) + (32 * mem[(32 * stor4.length) + 128]) + 128
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The nft can not be staked in this farm.'
    if block.number > lastRewardBlock:
        if totalStaked:
            if block.number <= endBlock:
                if block.number < lastRewardBlock:
                    revert with 'NH{q', 17
                if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if accTokenPerShare > -((block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked) - 1:
                    revert with 'NH{q', 17
                accTokenPerShare += (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked
            else:
                if lastRewardBlock >= endBlock:
                    if False and rewardPerBlock > 0:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if accTokenPerShare > -(0 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    accTokenPerShare += 0 / totalStaked
                else:
                    if endBlock < lastRewardBlock:
                        revert with 'NH{q', 17
                    if endBlock - lastRewardBlock and rewardPerBlock > -1 / endBlock - lastRewardBlock:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if accTokenPerShare > -((endBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked) - 1:
                        revert with 'NH{q', 17
                    accTokenPerShare += (endBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked
        lastRewardBlock = block.number
    if userInfo[address(msg.sender)].field_0 > 0:
        if userInfo[address(msg.sender)].field_0 and accTokenPerShare > -1 / userInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(msg.sender)].field_0 * accTokenPerShare < userInfo[address(msg.sender)].field_256:
            revert with 'NH{q', 17
    if arg2 > 0:
        if userInfo[address(msg.sender)].field_0 > -arg2 - 1:
            revert with 'NH{q', 17
        userInfo[address(msg.sender)].field_0 += arg2
        if sub_3937ea4f[address(msg.sender)][arg1] > -arg2 - 1:
            revert with 'NH{q', 17
        sub_3937ea4f[address(msg.sender)][arg1] += arg2
        if totalStaked > -arg2 - 1:
            revert with 'NH{q', 17
        totalStaked += arg2
    if userInfo[address(msg.sender)].field_0 and accTokenPerShare > -1 / userInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * accTokenPerShare
    stor1 = 1
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The nft can not be staked in this farm.'
    if sub_3937ea4f[address(msg.sender)][arg1] < arg2:
        revert with 0, 'Amount to withdraw too high'
    if block.number > lastRewardBlock:
        if totalStaked:
            if block.number <= endBlock:
                if block.number < lastRewardBlock:
                    revert with 'NH{q', 17
                if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if accTokenPerShare > -((block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked) - 1:
                    revert with 'NH{q', 17
                accTokenPerShare += (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked
            else:
                if lastRewardBlock >= endBlock:
                    if False and rewardPerBlock > 0:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if accTokenPerShare > -(0 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    accTokenPerShare += 0 / totalStaked
                else:
                    if endBlock < lastRewardBlock:
                        revert with 'NH{q', 17
                    if endBlock - lastRewardBlock and rewardPerBlock > -1 / endBlock - lastRewardBlock:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if accTokenPerShare > -((endBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked) - 1:
                        revert with 'NH{q', 17
                    accTokenPerShare += (endBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked
        lastRewardBlock = block.number
    if userInfo[address(msg.sender)].field_0 and accTokenPerShare > -1 / userInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if userInfo[address(msg.sender)].field_0 * accTokenPerShare < userInfo[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if arg2 > 0:
        if userInfo[address(msg.sender)].field_0 < arg2:
            revert with 'NH{q', 17
        userInfo[address(msg.sender)].field_0 -= arg2
        if sub_3937ea4f[address(msg.sender)][arg1] < arg2:
            revert with 'NH{q', 17
        sub_3937ea4f[address(msg.sender)][arg1] -= arg2
        if totalStaked < arg2:
            revert with 'NH{q', 17
        totalStaked -= arg2
    if userInfo[address(msg.sender)].field_0 and accTokenPerShare > -1 / userInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * accTokenPerShare
    stor1 = 1
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= lastRewardBlock:
        if userInfo[address(arg1)].field_0 and accTokenPerShare > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * accTokenPerShare < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * accTokenPerShare) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if userInfo[address(arg1)].field_0 and accTokenPerShare > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * accTokenPerShare < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * accTokenPerShare) - userInfo[address(arg1)].field_256)
    if block.number <= endBlock:
        if block.number < lastRewardBlock:
            revert with 'NH{q', 17
        if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if accTokenPerShare > -((block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and accTokenPerShare + ((block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked * userInfo[address(arg1)].field_0) < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked * userInfo[address(arg1)].field_0) - userInfo[address(arg1)].field_256)
    if lastRewardBlock >= endBlock:
        if False and rewardPerBlock > 0:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if accTokenPerShare > -(0 / totalStaked) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) - userInfo[address(arg1)].field_256)
    if endBlock < lastRewardBlock:
        revert with 'NH{q', 17
    if endBlock - lastRewardBlock and rewardPerBlock > -1 / endBlock - lastRewardBlock:
        revert with 'NH{q', 17
    if not totalStaked:
        revert with 'NH{q', 18
    if accTokenPerShare > -((endBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked) - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 and accTokenPerShare + ((endBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked) > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((endBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked * userInfo[address(arg1)].field_0) < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    return ((accTokenPerShare * userInfo[address(arg1)].field_0) + ((endBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / totalStaked * userInfo[address(arg1)].field_0) - userInfo[address(arg1)].field_256)
}



}
