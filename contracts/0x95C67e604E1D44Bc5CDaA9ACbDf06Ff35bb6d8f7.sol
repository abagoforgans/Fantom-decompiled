contract main {




// =====================  Runtime code  =====================


#
#  - exit()
#
const TOTAL_RATE = 10000

const BURN_ADDRESS = 57005


uint256 totalSupply;
uint256 withdrawRate;
uint64 withdrawLimit;
uint256 sub_b15cfe54;
uint64 claimLimit;
uint256 sub_a0801fa6;
mapping of uint256 balanceOf;
mapping of uint64 lastStakeTime;
address stakedTokenAddress;
address feeAddress;
address owner;
address rewardTokenAddress;
uint128 stor12;
uint128 stor12; offset 128
uint256 rewardRate;
uint64 periodFinish;
uint64 lastUpdateTime; offset 64
uint128 rewardPerTokenStored; offset 128
mapping of struct userRewards;

function userRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRewards[arg1].field_0, userRewards[arg1].field_0, userRewards[arg1].field_256
}

function withdrawRate() {
    return withdrawRate
}

function totalSupply() {
    return totalSupply
}

function feeAddress() {
    return feeAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function rewardRate() {
    return rewardRate
}

function lastStakeTime(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastStakeTime[arg1]
}

function owner() {
    return owner
}

function sub_a0801fa6(?) {
    return sub_a0801fa6
}

function sub_b15cfe54(?) {
    return sub_b15cfe54
}

function claimLimit() {
    return claimLimit
}

function lastUpdateTime() {
    return lastUpdateTime
}

function stakedToken() {
    return stakedTokenAddress
}

function rewardPerTokenStored() {
    return rewardPerTokenStored
}

function periodFinish() {
    return periodFinish
}

function rewardToken() {
    return rewardTokenAddress
}

function withdrawLimit() {
    return withdrawLimit
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() {
    if uint64(block.timestamp) < periodFinish:
        return uint64(block.timestamp)
    return periodFinish
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddress != msg.sender:
        revert with 0, 'not fee address'
    feeAddress = arg1
}

function setClaimLimit(uint64 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimLimit = arg1
}

function setWithdrawLimit(uint64 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    withdrawLimit = arg1
}

function setWithdrawRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdrawRate cannot be more than 2%'
    withdrawRate = arg1
}

function setEarlyWithdrawRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdrawRate cannot be more than 2%'
    sub_b15cfe54 = arg1
}

function setEarlyClaimRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'earlyClaimRate cannot be more than 50%'
    sub_a0801fa6 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function rewardPerToken() {
    if not totalSupply:
        return rewardPerTokenStored
    if not totalSupply:
        revert with 'NH{q', 18
    if uint64(block.timestamp) < periodFinish:
        return uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
    return uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
}

function earned(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return uint128((balanceOf[address(arg1)] * uint128(rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
    if not totalSupply:
        revert with 'NH{q', 18
    if uint64(block.timestamp) < periodFinish:
        return uint128((balanceOf[address(arg1)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
    return uint128((balanceOf[address(arg1)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
}

function withdrawReward() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stakedTokenAddress != rewardTokenAddress:
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        if ext_call.return_data[0] < totalSupply:
            revert with 'NH{q', 17
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - totalSupply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    rewardRate = 0
    periodFinish = uint64(block.timestamp)
}

function setRewardParams(uint128 arg1, uint64 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    if totalSupply:
        if not totalSupply:
            revert with 'NH{q', 18
        if uint64(block.timestamp) < periodFinish:
            rewardPerTokenStored = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
        else:
            rewardPerTokenStored = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        revert with 'NH{q', 18
    if stakedTokenAddress != rewardTokenAddress:
        if uint64(block.timestamp) < periodFinish:
            rewardRate = (uint64(periodFinish - block.timestamp) * rewardRate) + arg1 / arg2
            if arg1 + (uint64(periodFinish - block.timestamp) * rewardRate) > ext_call.return_data[0]:
                revert with 0, 'not enough tokens'
        else:
            uint128(stor12.field_0) = uint128(arg1 / arg2)
            uint128(stor12.field_128) = 0
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'not enough tokens'
    else:
        if uint64(block.timestamp) < periodFinish:
            rewardRate = (uint64(periodFinish - block.timestamp) * rewardRate) + arg1 / arg2
            if arg1 + (uint64(periodFinish - block.timestamp) * rewardRate) > ext_call.return_data[0] - totalSupply:
                revert with 0, 'not enough tokens'
        else:
            uint128(stor12.field_0) = uint128(arg1 / arg2)
            uint128(stor12.field_128) = 0
            if arg1 > ext_call.return_data[0] - totalSupply:
                revert with 0, 'not enough tokens'
    periodFinish = uint64(arg2 + block.timestamp)
    lastUpdateTime = uint64(block.timestamp)
    emit RewardAdded(arg1);
}

function stakeFor(address arg1, uint128 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not totalSupply:
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if not totalSupply:
            userRewards[address(arg1)].field_0 = rewardPerTokenStored
            userRewards[address(arg1)].field_128 = uint128((balanceOf[address(arg1)] * uint128(rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
        else:
            if not totalSupply:
                revert with 'NH{q', 18
            userRewards[address(arg1)].field_0 = rewardPerTokenStored
            if uint64(block.timestamp) < periodFinish:
                userRewards[address(arg1)].field_128 = uint128((balanceOf[address(arg1)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
            else:
                userRewards[address(arg1)].field_128 = uint128((balanceOf[address(arg1)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
    else:
        if not totalSupply:
            revert with 'NH{q', 18
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if uint64(block.timestamp) < periodFinish:
            rewardPerTokenStored = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(arg1)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(arg1)].field_128 = uint128((balanceOf[address(arg1)] * uint128(rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
            else:
                if not totalSupply:
                    revert with 'NH{q', 18
                userRewards[address(arg1)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(arg1)].field_128 = uint128((balanceOf[address(arg1)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
                else:
                    userRewards[address(arg1)].field_128 = uint128((balanceOf[address(arg1)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
        else:
            rewardPerTokenStored = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(arg1)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(arg1)].field_128 = uint128((balanceOf[address(arg1)] * uint128(rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
            else:
                if not totalSupply:
                    revert with 'NH{q', 18
                userRewards[address(arg1)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(arg1)].field_128 = uint128((balanceOf[address(arg1)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
                else:
                    userRewards[address(arg1)].field_128 = uint128((balanceOf[address(arg1)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
    lastStakeTime[address(arg1)] = uint64(block.timestamp)
    userRewards[address(arg1)].field_256 = uint64(block.timestamp)
    if not stakedTokenAddress:
        totalSupply += msg.value
        balanceOf[address(arg1)] += msg.value
    else:
        if msg.value:
            revert with 0, 'non-zero eth'
        if arg2 <= 0:
            revert with 0, 'Cannot stake 0'
        require ext_code.size(stakedTokenAddress)
        call stakedTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'staked token transfer failed', 0
        totalSupply += arg2
        balanceOf[address(arg1)] += arg2
    emit Staked(arg2, arg1);
}

function stake(uint128 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if not totalSupply:
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            if not totalSupply:
                revert with 'NH{q', 18
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            if uint64(block.timestamp) < periodFinish:
                userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    else:
        if not totalSupply:
            revert with 'NH{q', 18
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if uint64(block.timestamp) < periodFinish:
            rewardPerTokenStored = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 'NH{q', 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            rewardPerTokenStored = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 'NH{q', 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    lastStakeTime[address(msg.sender)] = uint64(block.timestamp)
    userRewards[address(msg.sender)].field_256 = uint64(block.timestamp)
    if not stakedTokenAddress:
        totalSupply += msg.value
        balanceOf[address(msg.sender)] += msg.value
    else:
        if msg.value:
            revert with 0, 'non-zero eth'
        if arg1 <= 0:
            revert with 0, 'Cannot stake 0'
        require ext_code.size(stakedTokenAddress)
        call stakedTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'staked token transfer failed', 0
        totalSupply += arg1
        balanceOf[address(msg.sender)] += arg1
    emit Staked(arg1, msg.sender);
}

function withdraw(uint128 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if not totalSupply:
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            if not totalSupply:
                revert with 'NH{q', 18
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            if uint64(block.timestamp) < periodFinish:
                userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    else:
        if not totalSupply:
            revert with 'NH{q', 18
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if uint64(block.timestamp) < periodFinish:
            rewardPerTokenStored = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 'NH{q', 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            rewardPerTokenStored = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 'NH{q', 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'withdraw: balance is lower'
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    if arg1 and withdrawRate > -1 / arg1:
        revert with 'NH{q', 17
    if sub_b15cfe54 <= 0:
        if arg1 < arg1 * withdrawRate / 10000:
            revert with 'NH{q', 17
        if not stakedTokenAddress:
            call msg.sender with:
               value arg1 - (arg1 * withdrawRate / 10000) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'eth transfer failure'
            if arg1 * withdrawRate / 10000:
                call feeAddress with:
                   value arg1 * withdrawRate / 10000 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'fee eth transfer failure'
        else:
            require ext_code.size(stakedTokenAddress)
            call stakedTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 - (arg1 * withdrawRate / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'staked token transfer failed', 0
            if arg1 * withdrawRate / 10000:
                require ext_code.size(stakedTokenAddress)
                call stakedTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args feeAddress, arg1 * withdrawRate / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'staked token transfer failed', 0
    else:
        if not lastStakeTime[msg.sender]:
            if arg1 and sub_b15cfe54 > -1 / arg1:
                revert with 'NH{q', 17
            if arg1 < arg1 * sub_b15cfe54 / 10000:
                revert with 'NH{q', 17
            if not stakedTokenAddress:
                call msg.sender with:
                   value arg1 - (arg1 * sub_b15cfe54 / 10000) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'eth transfer failure'
                if arg1 * sub_b15cfe54 / 10000:
                    call feeAddress with:
                       value arg1 * sub_b15cfe54 / 10000 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'fee eth transfer failure'
            else:
                require ext_code.size(stakedTokenAddress)
                call stakedTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 - (arg1 * sub_b15cfe54 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'staked token transfer failed', 0
                if arg1 * sub_b15cfe54 / 10000:
                    require ext_code.size(stakedTokenAddress)
                    call stakedTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args feeAddress, arg1 * sub_b15cfe54 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'staked token transfer failed', 0
        else:
            if uint64(block.timestamp) < lastStakeTime[msg.sender]:
                revert with 'NH{q', 17
            if uint64(uint64(block.timestamp) - lastStakeTime[msg.sender]) > claimLimit:
                if arg1 < arg1 * withdrawRate / 10000:
                    revert with 'NH{q', 17
                if not stakedTokenAddress:
                    call msg.sender with:
                       value arg1 - (arg1 * withdrawRate / 10000) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'eth transfer failure'
                    if arg1 * withdrawRate / 10000:
                        call feeAddress with:
                           value arg1 * withdrawRate / 10000 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'fee eth transfer failure'
                else:
                    require ext_code.size(stakedTokenAddress)
                    call stakedTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 - (arg1 * withdrawRate / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'staked token transfer failed', 0
                    if arg1 * withdrawRate / 10000:
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args feeAddress, arg1 * withdrawRate / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'staked token transfer failed', 0
            else:
                if arg1 and sub_b15cfe54 > -1 / arg1:
                    revert with 'NH{q', 17
                if arg1 < arg1 * sub_b15cfe54 / 10000:
                    revert with 'NH{q', 17
                if not stakedTokenAddress:
                    call msg.sender with:
                       value arg1 - (arg1 * sub_b15cfe54 / 10000) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'eth transfer failure'
                    if arg1 * sub_b15cfe54 / 10000:
                        call feeAddress with:
                           value arg1 * sub_b15cfe54 / 10000 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'fee eth transfer failure'
                else:
                    require ext_code.size(stakedTokenAddress)
                    call stakedTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 - (arg1 * sub_b15cfe54 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'staked token transfer failed', 0
                    if arg1 * sub_b15cfe54 / 10000:
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args feeAddress, arg1 * sub_b15cfe54 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'staked token transfer failed', 0
    emit Withdrawn(arg1, msg.sender);
}

function getReward() {
    if not totalSupply:
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if not totalSupply:
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            if not totalSupply:
                revert with 'NH{q', 18
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            if uint64(block.timestamp) < periodFinish:
                userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    else:
        if not totalSupply:
            revert with 'NH{q', 18
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if uint64(block.timestamp) < periodFinish:
            rewardPerTokenStored = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 'NH{q', 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            rewardPerTokenStored = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 'NH{q', 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    if not totalSupply:
        if uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128):
            userRewards[msg.sender].field_0 = userRewards[msg.sender].field_0
            if not sub_a0801fa6:
                if uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) < 0:
                    revert with 'NH{q', 17
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if uint64(block.timestamp) < userRewards[msg.sender].field_256:
                    revert with 'NH{q', 17
                if uint64(uint64(block.timestamp) - userRewards[msg.sender].field_256) > claimLimit:
                    if uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) < 0:
                        revert with 'NH{q', 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args 57005, uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) * sub_a0801fa6 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'burn transfer failed'
                    if uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) < uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) * sub_a0801fa6 / 10000:
                        revert with 'NH{q', 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) - (uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) * sub_a0801fa6 / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'reward transfer failed'
            userRewards[msg.sender].field_256 = uint64(block.timestamp)
            emit RewardPaid(uint128((balanceOf[address(msg.sender)] * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128), msg.sender);
    else:
        if not totalSupply:
            revert with 'NH{q', 18
        if uint64(block.timestamp) < periodFinish:
            if uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128):
                userRewards[msg.sender].field_0 = userRewards[msg.sender].field_0
                if not sub_a0801fa6:
                    if uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) < 0:
                        revert with 'NH{q', 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    if uint64(block.timestamp) < userRewards[msg.sender].field_256:
                        revert with 'NH{q', 17
                    if uint64(uint64(block.timestamp) - userRewards[msg.sender].field_256) > claimLimit:
                        if uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) < 0:
                            revert with 'NH{q', 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                    else:
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args 57005, uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) * sub_a0801fa6 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'burn transfer failed'
                        if uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) < uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) * sub_a0801fa6 / 10000:
                            revert with 'NH{q', 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) - (uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) * sub_a0801fa6 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'reward transfer failed'
                userRewards[msg.sender].field_256 = uint64(block.timestamp)
                emit RewardPaid(uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128), msg.sender);
        else:
            if uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128):
                userRewards[msg.sender].field_0 = userRewards[msg.sender].field_0
                if not sub_a0801fa6:
                    if uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) < 0:
                        revert with 'NH{q', 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    if uint64(block.timestamp) < userRewards[msg.sender].field_256:
                        revert with 'NH{q', 17
                    if uint64(uint64(block.timestamp) - userRewards[msg.sender].field_256) > claimLimit:
                        if uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) < 0:
                            revert with 'NH{q', 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                    else:
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args 57005, uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) * sub_a0801fa6 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'burn transfer failed'
                        if uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) < uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) * sub_a0801fa6 / 10000:
                            revert with 'NH{q', 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) - (uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128) * sub_a0801fa6 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'reward transfer failed'
                userRewards[msg.sender].field_256 = uint64(block.timestamp)
                emit RewardPaid(uint128((balanceOf[address(msg.sender)] * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128), msg.sender);
}



}
