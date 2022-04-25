contract main {




// =====================  Runtime code  =====================


const BONUS_MULTIPLIER = 10


address owner;
address sushiAddress;
address devaddr;
uint256 bonusEndBlock;
uint256 sushiPerBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;

function poolLength() payable {
    return poolInfo.length
}

function sushi() payable {
    return sushiAddress
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sushiPerBlock() payable {
    return sushiPerBlock
}

function devaddr() payable {
    return devaddr
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

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
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

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    require ext_code.size(poolInfo[arg1].field_0)
    call poolInfo[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userInfo[arg1][address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= bonusEndBlock:
        if arg2 < arg1:
            revert with 'NH{q', 17
        if arg2 - arg1 and 10 > -1 / arg2 - arg1:
            revert with 'NH{q', 17
        return ((10 * arg2) - (10 * arg1))
    if arg1 >= bonusEndBlock:
        if arg2 < arg1:
            revert with 'NH{q', 17
        return (arg2 - arg1)
    if arg2 < bonusEndBlock:
        revert with 'NH{q', 17
    if bonusEndBlock < arg1:
        revert with 'NH{q', 17
    if bonusEndBlock - arg1 and 10 > -1 / bonusEndBlock - arg1:
        revert with 'NH{q', 17
    if (10 * bonusEndBlock) - (10 * arg1) > -arg2 + bonusEndBlock - 1:
        revert with 'NH{q', 17
    return ((9 * bonusEndBlock) - (10 * arg1) + arg2)
}

function pendingSushi(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
        if block.number < poolInfo[arg1].field_512:
            revert with 'NH{q', 17
        if block.number - poolInfo[arg1].field_512 and 10 > -1 / block.number - poolInfo[arg1].field_512:
            revert with 'NH{q', 17
        if (10 * block.number) - (10 * poolInfo[arg1].field_512) and sushiPerBlock > -1 / (10 * block.number) - (10 * poolInfo[arg1].field_512):
            revert with 'NH{q', 17
        if (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) and poolInfo[arg1].field_256 > -1 / (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock):
            revert with 'NH{q', 17
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= bonusEndBlock:
        if block.number < poolInfo[arg1].field_512:
            revert with 'NH{q', 17
        if block.number - poolInfo[arg1].field_512 and sushiPerBlock > -1 / block.number - poolInfo[arg1].field_512:
            revert with 'NH{q', 17
        if (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock):
            revert with 'NH{q', 17
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number < bonusEndBlock:
        revert with 'NH{q', 17
    if bonusEndBlock < poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if bonusEndBlock - poolInfo[arg1].field_512 and 10 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) > -block.number + bonusEndBlock - 1:
        revert with 'NH{q', 17
    if (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number and sushiPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
        revert with 'NH{q', 17
    if (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) + (block.number * sushiPerBlock) and poolInfo[arg1].field_256 > -1 / (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) + (block.number * sushiPerBlock):
        revert with 'NH{q', 17
    if not totalAllocPoint:
        revert with 'NH{q', 18
    if (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if poolInfo[arg1].field_768 > -(10^12 * (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 'NH{q', 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 'NH{q', 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if block.number < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.number - poolInfo[arg1].field_512 and 10 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (10 * block.number) - (10 * poolInfo[arg1].field_512) and sushiPerBlock > -1 / (10 * block.number) - (10 * poolInfo[arg1].field_512):
                    revert with 'NH{q', 17
                if (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) and poolInfo[arg1].field_256 > -1 / (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock):
                    revert with 'NH{q', 17
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(this.address), (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if poolInfo[arg1].field_768 > -((10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_768 + ((10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[arg1].field_768 + ((10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                poolInfo[arg1].field_768 = (10^12 * poolInfo[arg1].field_768) + (10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if block.number < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[arg1].field_512 and sushiPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if poolInfo[arg1].field_768 > -((block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_768 + ((block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[arg1].field_768 + ((block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    poolInfo[arg1].field_768 = (10^12 * poolInfo[arg1].field_768) + (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) / ext_call.return_data[0]
                else:
                    if block.number < bonusEndBlock:
                        revert with 'NH{q', 17
                    if bonusEndBlock < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if bonusEndBlock - poolInfo[arg1].field_512 and 10 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) > -block.number + bonusEndBlock - 1:
                        revert with 'NH{q', 17
                    if (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number and sushiPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
                        revert with 'NH{q', 17
                    if (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) + (block.number * sushiPerBlock) and poolInfo[arg1].field_256 > -1 / (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) + (block.number * sushiPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if poolInfo[arg1].field_768 > -((9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_768 + ((9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[arg1].field_768 + ((9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    poolInfo[arg1].field_768 = (10^12 * poolInfo[arg1].field_768) + (10^12 * (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22 = mem[_21]
            require mem[_21] == mem[_21]
            if mem[_21]:
                if block.number <= bonusEndBlock:
                    if block.number < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and 10 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (10 * block.number) - (10 * poolInfo[idx].field_512) and sushiPerBlock > -1 / (10 * block.number) - (10 * poolInfo[idx].field_512):
                        revert with 'NH{q', 17
                    if (10 * block.number * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) and poolInfo[idx].field_256 > -1 / (10 * block.number * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if poolInfo[idx].field_768 > -((10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + ((10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[idx].field_768 + ((10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint):
                        revert with 'NH{q', 17
                    if not _22:
                        revert with 'NH{q', 18
                    poolInfo[idx].field_768 = (10^12 * poolInfo[idx].field_768) + (10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) / _22
                else:
                    if poolInfo[idx].field_512 >= bonusEndBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and sushiPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (block.number * sushiPerBlock) - (poolInfo[idx].field_512 * sushiPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * sushiPerBlock) - (poolInfo[idx].field_512 * sushiPerBlock):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if poolInfo[idx].field_768 > -((block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_768 + ((block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[idx].field_768 + ((block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint):
                            revert with 'NH{q', 17
                        if not _22:
                            revert with 'NH{q', 18
                        poolInfo[idx].field_768 = (10^12 * poolInfo[idx].field_768) + (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) / _22
                    else:
                        if block.number < bonusEndBlock:
                            revert with 'NH{q', 17
                        if bonusEndBlock < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if bonusEndBlock - poolInfo[idx].field_512 and 10 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) > -block.number + bonusEndBlock - 1:
                            revert with 'NH{q', 17
                        if (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number and sushiPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
                            revert with 'NH{q', 17
                        if (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) + (block.number * sushiPerBlock) and poolInfo[idx].field_256 > -1 / (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) + (block.number * sushiPerBlock):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if poolInfo[idx].field_768 > -((9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_768 + ((9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[idx].field_768 + ((9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint):
                            revert with 'NH{q', 17
                        if not _22:
                            revert with 'NH{q', 18
                        poolInfo[idx].field_768 = (10^12 * poolInfo[idx].field_768) + (10^12 * (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) / _22
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if userInfo[arg1][address(msg.sender)].field_0 < arg2:
        revert with 0, 'withdraw: not good'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if block.number < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.number - poolInfo[arg1].field_512 and 10 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (10 * block.number) - (10 * poolInfo[arg1].field_512) and sushiPerBlock > -1 / (10 * block.number) - (10 * poolInfo[arg1].field_512):
                    revert with 'NH{q', 17
                if (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) and poolInfo[arg1].field_256 > -1 / (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock):
                    revert with 'NH{q', 17
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(this.address), (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if poolInfo[arg1].field_768 > -((10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_768 + ((10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[arg1].field_768 + ((10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                poolInfo[arg1].field_768 = (10^12 * poolInfo[arg1].field_768) + (10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if block.number < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[arg1].field_512 and sushiPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if poolInfo[arg1].field_768 > -((block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_768 + ((block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[arg1].field_768 + ((block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    poolInfo[arg1].field_768 = (10^12 * poolInfo[arg1].field_768) + (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) / ext_call.return_data[0]
                else:
                    if block.number < bonusEndBlock:
                        revert with 'NH{q', 17
                    if bonusEndBlock < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if bonusEndBlock - poolInfo[arg1].field_512 and 10 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) > -block.number + bonusEndBlock - 1:
                        revert with 'NH{q', 17
                    if (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number and sushiPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
                        revert with 'NH{q', 17
                    if (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) + (block.number * sushiPerBlock) and poolInfo[arg1].field_256 > -1 / (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) + (block.number * sushiPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if poolInfo[arg1].field_768 > -((9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_768 + ((9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[arg1].field_768 + ((9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    poolInfo[arg1].field_768 = (10^12 * poolInfo[arg1].field_768) + (10^12 * (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
    if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(msg.sender)].field_256:
        revert with 'NH{q', 17
    require ext_code.size(sushiAddress)
    staticcall sushiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sushiAddress)
    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
        call sushiAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
    else:
        call sushiAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[arg1][address(msg.sender)].field_0 < arg2:
        revert with 'NH{q', 17
    userInfo[arg1][address(msg.sender)].field_0 -= arg2
    if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
        revert with 'NH{q', 17
    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    require ext_code.size(poolInfo[arg1].field_0)
    call poolInfo[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    emit Withdraw(arg2, msg.sender, arg1);
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if block.number < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.number - poolInfo[arg1].field_512 and 10 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (10 * block.number) - (10 * poolInfo[arg1].field_512) and sushiPerBlock > -1 / (10 * block.number) - (10 * poolInfo[arg1].field_512):
                    revert with 'NH{q', 17
                if (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) and poolInfo[arg1].field_256 > -1 / (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock):
                    revert with 'NH{q', 17
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(this.address), (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if poolInfo[arg1].field_768 > -((10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_768 + ((10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[arg1].field_768 + ((10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                poolInfo[arg1].field_768 = (10^12 * poolInfo[arg1].field_768) + (10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if block.number < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[arg1].field_512 and sushiPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if poolInfo[arg1].field_768 > -((block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_768 + ((block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[arg1].field_768 + ((block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    poolInfo[arg1].field_768 = (10^12 * poolInfo[arg1].field_768) + (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) / ext_call.return_data[0]
                else:
                    if block.number < bonusEndBlock:
                        revert with 'NH{q', 17
                    if bonusEndBlock < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if bonusEndBlock - poolInfo[arg1].field_512 and 10 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) > -block.number + bonusEndBlock - 1:
                        revert with 'NH{q', 17
                    if (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number and sushiPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
                        revert with 'NH{q', 17
                    if (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) + (block.number * sushiPerBlock) and poolInfo[arg1].field_256 > -1 / (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) + (block.number * sushiPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if poolInfo[arg1].field_768 > -((9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_768 + ((9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[arg1].field_768 + ((9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    poolInfo[arg1].field_768 = (10^12 * poolInfo[arg1].field_768) + (10^12 * (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) + (block.number * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
    if userInfo[arg1][address(msg.sender)].field_0 > 0:
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        require ext_code.size(sushiAddress)
        staticcall sushiAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sushiAddress)
        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
            call sushiAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
        else:
            call sushiAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(poolInfo[arg1].field_0)
    call poolInfo[arg1].field_0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    if userInfo[arg1][address(msg.sender)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    userInfo[arg1][address(msg.sender)].field_0 += arg2
    if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
        revert with 'NH{q', 17
    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _28 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _29 = mem[_28]
                require mem[_28] == mem[_28]
                if mem[_28]:
                    if block.number <= bonusEndBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and 10 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (10 * block.number) - (10 * poolInfo[idx].field_512) and sushiPerBlock > -1 / (10 * block.number) - (10 * poolInfo[idx].field_512):
                            revert with 'NH{q', 17
                        if (10 * block.number * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) and poolInfo[idx].field_256 > -1 / (10 * block.number * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if poolInfo[idx].field_768 > -((10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_768 + ((10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[idx].field_768 + ((10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint):
                            revert with 'NH{q', 17
                        if not _29:
                            revert with 'NH{q', 18
                        poolInfo[idx].field_768 = (10^12 * poolInfo[idx].field_768) + (10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) / _29
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            if block.number < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if block.number - poolInfo[idx].field_512 and sushiPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (block.number * sushiPerBlock) - (poolInfo[idx].field_512 * sushiPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * sushiPerBlock) - (poolInfo[idx].field_512 * sushiPerBlock):
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if poolInfo[idx].field_768 > -((block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[idx].field_768 + ((block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[idx].field_768 + ((block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint):
                                revert with 'NH{q', 17
                            if not _29:
                                revert with 'NH{q', 18
                            poolInfo[idx].field_768 = (10^12 * poolInfo[idx].field_768) + (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) / _29
                        else:
                            if block.number < bonusEndBlock:
                                revert with 'NH{q', 17
                            if bonusEndBlock < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if bonusEndBlock - poolInfo[idx].field_512 and 10 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) > -block.number + bonusEndBlock - 1:
                                revert with 'NH{q', 17
                            if (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number and sushiPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
                                revert with 'NH{q', 17
                            if (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) + (block.number * sushiPerBlock) and poolInfo[idx].field_256 > -1 / (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) + (block.number * sushiPerBlock):
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr, (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if poolInfo[idx].field_768 > -((9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[idx].field_768 + ((9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[idx].field_768 + ((9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint):
                                revert with 'NH{q', 17
                            if not _29:
                                revert with 'NH{q', 18
                            poolInfo[idx].field_768 = (10^12 * poolInfo[idx].field_768) + (10^12 * (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) / _29
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 'NH{q', 17
    if totalAllocPoint - poolInfo[arg1].field_256 > -arg2 - 1:
        revert with 'NH{q', 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _59 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _60 = mem[_59]
                require mem[_59] == mem[_59]
                if mem[_59]:
                    if block.number <= bonusEndBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and 10 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (10 * block.number) - (10 * poolInfo[idx].field_512) and sushiPerBlock > -1 / (10 * block.number) - (10 * poolInfo[idx].field_512):
                            revert with 'NH{q', 17
                        if (10 * block.number * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) and poolInfo[idx].field_256 > -1 / (10 * block.number * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if poolInfo[idx].field_768 > -((10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_768 + ((10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[idx].field_768 + ((10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint):
                            revert with 'NH{q', 17
                        if not _60:
                            revert with 'NH{q', 18
                        poolInfo[idx].field_768 = (10^12 * poolInfo[idx].field_768) + (10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) / _60
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            if block.number < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if block.number - poolInfo[idx].field_512 and sushiPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (block.number * sushiPerBlock) - (poolInfo[idx].field_512 * sushiPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * sushiPerBlock) - (poolInfo[idx].field_512 * sushiPerBlock):
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if poolInfo[idx].field_768 > -((block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[idx].field_768 + ((block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[idx].field_768 + ((block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint):
                                revert with 'NH{q', 17
                            if not _60:
                                revert with 'NH{q', 18
                            poolInfo[idx].field_768 = (10^12 * poolInfo[idx].field_768) + (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) / _60
                        else:
                            if block.number < bonusEndBlock:
                                revert with 'NH{q', 17
                            if bonusEndBlock < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if bonusEndBlock - poolInfo[idx].field_512 and 10 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) > -block.number + bonusEndBlock - 1:
                                revert with 'NH{q', 17
                            if (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number and sushiPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
                                revert with 'NH{q', 17
                            if (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) + (block.number * sushiPerBlock) and poolInfo[idx].field_256 > -1 / (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) + (block.number * sushiPerBlock):
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr, (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if poolInfo[idx].field_768 > -((9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[idx].field_768 + ((9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) and 10^12 > -1 / poolInfo[idx].field_768 + ((9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint):
                                revert with 'NH{q', 17
                            if not _60:
                                revert with 'NH{q', 18
                            poolInfo[idx].field_768 = (10^12 * poolInfo[idx].field_768) + (10^12 * (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) + (block.number * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint) / _60
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if totalAllocPoint > -arg1 - 1:
        revert with 'NH{q', 17
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
}



}
