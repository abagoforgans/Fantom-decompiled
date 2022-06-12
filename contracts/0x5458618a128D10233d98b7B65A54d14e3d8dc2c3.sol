contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint128 balanceOf;
address stakedTokenAddress;
address owner;
address rewardTokenAddress;
uint128 stor6;
uint128 stor6; offset 128
uint256 rewardRate;
uint64 periodFinish;
uint64 lastUpdateTime; offset 64
uint128 rewardPerTokenStored; offset 128
mapping of struct userRewards;

function userRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRewards[arg1].field_0, userRewards[arg1].field_128
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(balanceOf[address(arg1)])
}

function rewardRate() {
    return rewardRate
}

function owner() {
    return owner
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function rewardPerToken() {
    if not totalSupply:
        return rewardPerTokenStored
    if not totalSupply:
        revert with 0, 18
    if uint64(block.timestamp) < periodFinish:
        return uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
    return uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
}

function earned(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return uint128((uint256(balanceOf[address(arg1)]) * uint128(rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
    if not totalSupply:
        revert with 0, 18
    if uint64(block.timestamp) < periodFinish:
        return uint128((uint256(balanceOf[address(arg1)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
    return uint128((uint256(balanceOf[address(arg1)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
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
        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        if ext_call.return_data[0] < totalSupply:
            revert with 0, 17
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
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
            revert with 0, 18
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
        revert with 0, 18
    if uint64(block.timestamp) < periodFinish:
        rewardRate = (uint64(periodFinish - block.timestamp) * rewardRate) + arg1 / arg2
    else:
        uint128(stor6.field_0) = uint128(arg1 / arg2)
        uint128(stor6.field_128) = 0
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
            userRewards[address(arg1)].field_128 = uint128((uint256(balanceOf[address(arg1)]) * uint128(rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
        else:
            if not totalSupply:
                revert with 0, 18
            userRewards[address(arg1)].field_0 = rewardPerTokenStored
            if uint64(block.timestamp) < periodFinish:
                userRewards[address(arg1)].field_128 = uint128((uint256(balanceOf[address(arg1)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
            else:
                userRewards[address(arg1)].field_128 = uint128((uint256(balanceOf[address(arg1)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
    else:
        if not totalSupply:
            revert with 0, 18
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if uint64(block.timestamp) < periodFinish:
            rewardPerTokenStored = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(arg1)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(arg1)].field_128 = uint128((uint256(balanceOf[address(arg1)]) * uint128(rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
            else:
                if not totalSupply:
                    revert with 0, 18
                userRewards[address(arg1)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(arg1)].field_128 = uint128((uint256(balanceOf[address(arg1)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
                else:
                    userRewards[address(arg1)].field_128 = uint128((uint256(balanceOf[address(arg1)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
        else:
            rewardPerTokenStored = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(arg1)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(arg1)].field_128 = uint128((uint256(balanceOf[address(arg1)]) * uint128(rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
            else:
                if not totalSupply:
                    revert with 0, 18
                userRewards[address(arg1)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(arg1)].field_128 = uint128((uint256(balanceOf[address(arg1)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
                else:
                    userRewards[address(arg1)].field_128 = uint128((uint256(balanceOf[address(arg1)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(arg1)].field_0) / 10^18) + userRewards[address(arg1)].field_128)
    if not stakedTokenAddress:
        totalSupply += msg.value
        uint256(balanceOf[address(arg1)]) += msg.value
    else:
        if msg.value:
            revert with 0, 'non-zero eth'
        if arg2 <= 0:
            revert with 0, 'Cannot stake 0'
        require ext_code.size(stakedTokenAddress)
        call stakedTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'staked token transfer failed', 0
        totalSupply += arg2
        uint256(balanceOf[address(arg1)]) += arg2
    emit Staked(arg2, arg1);
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
            userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            if not totalSupply:
                revert with 0, 18
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            if uint64(block.timestamp) < periodFinish:
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    else:
        if not totalSupply:
            revert with 0, 18
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if uint64(block.timestamp) < periodFinish:
            rewardPerTokenStored = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 0, 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            rewardPerTokenStored = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 0, 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    if arg1 > uint256(balanceOf[msg.sender]):
        revert with 0, 'withdraw: balance is lower'
    uint256(balanceOf[msg.sender]) -= arg1
    totalSupply -= arg1
    if not stakedTokenAddress:
        call msg.sender with:
           value arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'eth transfer failure'
    else:
        require ext_code.size(stakedTokenAddress)
        call stakedTokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'staked token transfer failed', 0
    emit Withdrawn(arg1, msg.sender);
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
            userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            if not totalSupply:
                revert with 0, 18
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            if uint64(block.timestamp) < periodFinish:
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    else:
        if not totalSupply:
            revert with 0, 18
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if uint64(block.timestamp) < periodFinish:
            rewardPerTokenStored = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 0, 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            rewardPerTokenStored = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 0, 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    if not stakedTokenAddress:
        totalSupply += msg.value
        uint256(balanceOf[address(msg.sender)]) += msg.value
    else:
        if msg.value:
            revert with 0, 'non-zero eth'
        if arg1 <= 0:
            revert with 0, 'Cannot stake 0'
        require ext_code.size(stakedTokenAddress)
        call stakedTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'staked token transfer failed', 0
        totalSupply += arg1
        uint256(balanceOf[address(msg.sender)]) += arg1
    emit Staked(arg1, msg.sender);
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
            userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            if not totalSupply:
                revert with 0, 18
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            if uint64(block.timestamp) < periodFinish:
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    else:
        if not totalSupply:
            revert with 0, 18
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if uint64(block.timestamp) < periodFinish:
            rewardPerTokenStored = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 0, 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            rewardPerTokenStored = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 0, 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    if not totalSupply:
        if uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128):
            userRewards[msg.sender].field_0 = userRewards[msg.sender].field_0
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit RewardPaid(uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128), msg.sender);
    else:
        if not totalSupply:
            revert with 0, 18
        if uint64(block.timestamp) < periodFinish:
            if uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128):
                userRewards[msg.sender].field_0 = userRewards[msg.sender].field_0
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit RewardPaid(uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128), msg.sender);
        else:
            if uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128):
                userRewards[msg.sender].field_0 = userRewards[msg.sender].field_0
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit RewardPaid(uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128), msg.sender);
}

function exit() {
    if not totalSupply:
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if not totalSupply:
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            if not totalSupply:
                revert with 0, 18
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            if uint64(block.timestamp) < periodFinish:
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    else:
        if not totalSupply:
            revert with 0, 18
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if uint64(block.timestamp) < periodFinish:
            rewardPerTokenStored = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 0, 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            rewardPerTokenStored = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 0, 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    if not totalSupply:
        if uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128):
            userRewards[msg.sender].field_0 = userRewards[msg.sender].field_0
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit RewardPaid(uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128), msg.sender);
    else:
        if not totalSupply:
            revert with 0, 18
        if uint64(block.timestamp) < periodFinish:
            if uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128):
                userRewards[msg.sender].field_0 = userRewards[msg.sender].field_0
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit RewardPaid(uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128), msg.sender);
        else:
            if uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128):
                userRewards[msg.sender].field_0 = userRewards[msg.sender].field_0
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit RewardPaid(uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128), msg.sender);
    if not totalSupply:
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if not totalSupply:
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            if not totalSupply:
                revert with 0, 18
            userRewards[address(msg.sender)].field_0 = rewardPerTokenStored
            if uint64(block.timestamp) < periodFinish:
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    else:
        if not totalSupply:
            revert with 0, 18
        if uint64(block.timestamp) < periodFinish:
            lastUpdateTime = uint64(block.timestamp)
        else:
            periodFinish = periodFinish
            lastUpdateTime = 0
        if uint64(block.timestamp) < periodFinish:
            rewardPerTokenStored = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 0, 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
        else:
            rewardPerTokenStored = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
            if not totalSupply:
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128(rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
            else:
                if not totalSupply:
                    revert with 0, 18
                userRewards[address(msg.sender)].field_0 = uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored)
                if uint64(block.timestamp) < periodFinish:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(block.timestamp - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
                else:
                    userRewards[address(msg.sender)].field_128 = uint128((uint256(balanceOf[address(msg.sender)]) * uint128((10^18 * uint64(periodFinish - lastUpdateTime) * rewardRate / totalSupply) + rewardPerTokenStored - userRewards[address(msg.sender)].field_0) / 10^18) + userRewards[address(msg.sender)].field_128)
    if uint128(balanceOf[msg.sender]) > uint256(balanceOf[msg.sender]):
        revert with 0, 'withdraw: balance is lower'
    uint256(balanceOf[msg.sender]) -= uint128(balanceOf[msg.sender])
    totalSupply -= uint128(balanceOf[msg.sender])
    if not stakedTokenAddress:
        call msg.sender with:
           value uint128(balanceOf[msg.sender]) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'eth transfer failure'
    else:
        require ext_code.size(stakedTokenAddress)
        call stakedTokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, uint128(balanceOf[msg.sender])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'staked token transfer failed', 0
    emit Withdrawn(uint128(balanceOf[msg.sender]), msg.sender);
}



}
