contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - depositRewards(uint256 arg1)
#  - deposit(uint256 arg1)
#  - emergencyWithdraw()
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
address STAKE_TOKENAddress;
address REWARD_TOKENAddress;
uint256 rewardPerBlock;
uint256 totalStaked;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of struct userInfo;
uint256 stor10;
uint256 startBlock;
uint256 bonusEndBlock;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function STAKE_TOKEN() payable {
    return STAKE_TOKENAddress
}

function startBlock() payable {
    return startBlock
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

function REWARD_TOKEN() payable {
    return REWARD_TOKENAddress
}

function _fallback() payable {
    revert
}

function poolInfo() payable {
    return stor5, stor6, stor7, stor8
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerBlock = arg1
    emit LogUpdatePool(bonusEndBlock, rewardPerBlock);
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= bonusEndBlock:
        if arg2 < arg1:
            revert with 'NH{q', 17
        return (arg2 - arg1)
    if arg1 >= bonusEndBlock:
        return 0
    if bonusEndBlock < arg1:
        revert with 'NH{q', 17
    return (bonusEndBlock - arg1)
}

function setBonusEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= bonusEndBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'new bonus end block must be greater than current'
    bonusEndBlock = arg1
    emit LogUpdatePool(bonusEndBlock, rewardPerBlock);
}

function totalStakeTokenBalance() payable {
    if STAKE_TOKENAddress == REWARD_TOKENAddress:
        return totalStaked
    require ext_code.size(STAKE_TOKENAddress)
    staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getStakeTokenFeeBalance() payable {
    require ext_code.size(STAKE_TOKENAddress)
    staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - totalStaked)
}

function rewardBalance() payable {
    require ext_code.size(REWARD_TOKENAddress)
    staticcall REWARD_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if STAKE_TOKENAddress != REWARD_TOKENAddress:
        return ext_call.return_data[0]
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - totalStaked)
}

function sweepToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == STAKE_TOKENAddress:
        revert with 0, 'can not sweep stake token'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EmergencySweepWithdraw(ext_call.return_data[0], msg.sender, arg1);
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor0.field_168):
        STAKE_TOKENAddress = arg1
        REWARD_TOKENAddress = arg2
        rewardPerBlock = arg3
        startBlock = arg4
        bonusEndBlock = arg5
        stor5 = arg1
        stor6 = 1000
        stor7 = startBlock
        stor8 = 0
        stor10 = 1000
    else:
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_168):
            STAKE_TOKENAddress = arg1
            REWARD_TOKENAddress = arg2
            rewardPerBlock = arg3
            startBlock = arg4
            bonusEndBlock = arg5
            stor5 = arg1
            stor6 = 1000
            stor7 = startBlock
            stor8 = 0
            stor10 = 1000
        else:
            Mask(88, 0, stor0.field_168) = 1
            Mask(96, 0, stor0.field_160) = 1
            STAKE_TOKENAddress = arg1
            REWARD_TOKENAddress = arg2
            rewardPerBlock = arg3
            startBlock = arg4
            bonusEndBlock = arg5
            stor5 = arg1
            stor6 = 1000
            stor7 = startBlock
            stor8 = 0
            stor10 = 1000
            Mask(88, 0, stor0.field_168) = 0
}

function skimStakeTokenFees() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(STAKE_TOKENAddress)
    staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - totalStaked
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(STAKE_TOKENAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - totalStaked, 0
    mem[ceil32(return_data.size) + 328] = 0
    call STAKE_TOKENAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - totalStaked, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - totalStaked, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit SkimStakeTokenFees((ext_call.return_data[0] - totalStaked), msg.sender);
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(REWARD_TOKENAddress)
    staticcall REWARD_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if STAKE_TOKENAddress != REWARD_TOKENAddress:
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'not enough rewards'
    else:
        if ext_call.return_data[0] < totalStaked:
            revert with 'NH{q', 17
        if arg1 > ext_call.return_data[0] - totalStaked:
            revert with 0, 'not enough rewards'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(REWARD_TOKENAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call REWARD_TOKENAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit EmergencyRewardWithdraw(arg1, msg.sender);
}

function updatePool() payable {
    if block.number > stor7:
        if totalStaked:
            if block.number <= bonusEndBlock:
                if block.number < stor7:
                    revert with 'NH{q', 17
                if block.number - stor7 and rewardPerBlock > -1 / block.number - stor7:
                    revert with 'NH{q', 17
                if (block.number * rewardPerBlock) - (stor7 * rewardPerBlock) and stor6 > -1 / (block.number * rewardPerBlock) - (stor7 * rewardPerBlock):
                    revert with 'NH{q', 17
                if not stor10:
                    revert with 'NH{q', 18
                if (block.number * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 and 1000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if stor8 > -(1000000000000 * 10^18 * (block.number * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 / totalStaked) - 1:
                    revert with 'NH{q', 17
                stor8 += 1000000000000 * 10^18 * (block.number * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 / totalStaked
            else:
                if stor7 >= bonusEndBlock:
                    if False and rewardPerBlock > 0:
                        revert with 'NH{q', 17
                    if False and stor6 > 0:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    if 0 / stor10 and 1000000000000 * 10^18 > -1 / 0 / stor10:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if stor8 > -(1000000000000 * 10^18 * 0 / stor10 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    stor8 += 1000000000000 * 10^18 * 0 / stor10 / totalStaked
                else:
                    if bonusEndBlock < stor7:
                        revert with 'NH{q', 17
                    if bonusEndBlock - stor7 and rewardPerBlock > -1 / bonusEndBlock - stor7:
                        revert with 'NH{q', 17
                    if (bonusEndBlock * rewardPerBlock) - (stor7 * rewardPerBlock) and stor6 > -1 / (bonusEndBlock * rewardPerBlock) - (stor7 * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    if (bonusEndBlock * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 and 1000000000000 * 10^18 > -1 / (bonusEndBlock * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if stor8 > -(1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    stor8 += 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 / totalStaked
        stor7 = block.number
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= stor7:
        if userInfo[address(arg1)].field_0 and stor8 > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * stor8 / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * stor8 / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if userInfo[address(arg1)].field_0 and stor8 > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * stor8 / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * stor8 / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if block.number < stor7:
            revert with 'NH{q', 17
        if block.number - stor7 and rewardPerBlock > -1 / block.number - stor7:
            revert with 'NH{q', 17
        if (block.number * rewardPerBlock) - (stor7 * rewardPerBlock) and stor6 > -1 / (block.number * rewardPerBlock) - (stor7 * rewardPerBlock):
            revert with 'NH{q', 17
        if not stor10:
            revert with 'NH{q', 18
        if (block.number * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 and 1000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if stor8 > -(1000000000000 * 10^18 * (block.number * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 / totalStaked) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and stor8 + (1000000000000 * 10^18 * (block.number * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (stor8 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((stor8 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if stor7 >= bonusEndBlock:
        if False and rewardPerBlock > 0:
            revert with 'NH{q', 17
        if False and stor6 > 0:
            revert with 'NH{q', 17
        if not stor10:
            revert with 'NH{q', 18
        if 0 / stor10 and 1000000000000 * 10^18 > -1 / 0 / stor10:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if stor8 > -(1000000000000 * 10^18 * 0 / stor10 / totalStaked) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and stor8 + (1000000000000 * 10^18 * 0 / stor10 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (stor8 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor10 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((stor8 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor10 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if bonusEndBlock < stor7:
        revert with 'NH{q', 17
    if bonusEndBlock - stor7 and rewardPerBlock > -1 / bonusEndBlock - stor7:
        revert with 'NH{q', 17
    if (bonusEndBlock * rewardPerBlock) - (stor7 * rewardPerBlock) and stor6 > -1 / (bonusEndBlock * rewardPerBlock) - (stor7 * rewardPerBlock):
        revert with 'NH{q', 17
    if not stor10:
        revert with 'NH{q', 18
    if (bonusEndBlock * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 and 1000000000000 * 10^18 > -1 / (bonusEndBlock * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10:
        revert with 'NH{q', 17
    if not totalStaked:
        revert with 'NH{q', 18
    if stor8 > -(1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 / totalStaked) - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 and stor8 + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (stor8 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    return (((stor8 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * stor6) - (stor7 * rewardPerBlock * stor6) / stor10 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
}



}
