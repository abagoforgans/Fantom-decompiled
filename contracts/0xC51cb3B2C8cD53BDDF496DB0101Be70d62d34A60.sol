contract main {




// =====================  Runtime code  =====================


#
#  - leaveStaking(uint256 arg1)
#  - enterStaking(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const sub_d12f410c(?) = 10^18

const sub_f4b83c4c(?) = 4000


address owner;
address brushAddress;
address wftmAddress;
uint256 brushPerSecond;
address artGalleryAddress;
address routerAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
mapping of uint256 maxBurnAndBuyBackAmounts;
mapping of uint8 stor12;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function poolExists(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
}

function artGallery() payable {
    return artGalleryAddress
}

function brushPerSecond() payable {
    return brushPerSecond
}

function brush() payable {
    return brushAddress
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function wftm() payable {
    return wftmAddress
}

function router() payable {
    return routerAddress
}

function maxBurnAndBuyBackAmounts(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return maxBurnAndBuyBackAmounts[arg1]
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 <= startTime:
        if arg2 >= startTime:
            return (arg2 - startTime)
        else:
            return 0
    if arg2 < startTime:
        return 0
    if arg2 < arg1:
        revert with 0, 17
    return (arg2 - arg1)
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

function sub_9f967f33(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(brushAddress)
    call brushAddress.0xf2fde38b with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a80d17e2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(brushAddress)
    call brushAddress.0xf2fde38b with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_512 <= startTime:
                if block.timestamp < startTime:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(brushAddress)
                    call brushAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not 0 / totalAllocPoint:
                            revert with 0, 18
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if not block.timestamp - startTime:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(brushAddress)
                        call brushAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if block.timestamp - startTime and brushPerSecond > -1 / block.timestamp - startTime:
                            revert with 0, 17
                        if not block.timestamp - startTime:
                            revert with 0, 18
                        if (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) / block.timestamp - startTime != brushPerSecond:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(brushAddress)
                            call brushAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                                revert with 0, 17
                            if not (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                                revert with 0, 18
                            if (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(brushAddress)
                            call brushAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if block.timestamp < startTime:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(brushAddress)
                    call brushAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not 0 / totalAllocPoint:
                            revert with 0, 18
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.timestamp < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if not block.timestamp - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(brushAddress)
                        call brushAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if block.timestamp - poolInfo[arg1].field_512 and brushPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
                            revert with 0, 17
                        if not block.timestamp - poolInfo[arg1].field_512:
                            revert with 0, 18
                        if (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond) / block.timestamp - poolInfo[arg1].field_512 != brushPerSecond:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(brushAddress)
                            call brushAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond):
                                revert with 0, 17
                            if not (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond):
                                revert with 0, 18
                            if (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(brushAddress)
                            call brushAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp <= poolInfo[idx].field_512:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _225 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _226 = mem[_225]
        if not mem[_225]:
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if poolInfo[idx].field_512 <= startTime:
            if block.timestamp < startTime:
                _228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_228] = 26
                mem[_228 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _230 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _230 + 68] = mem[idx + _228 + 32]
                        idx = idx + 32
                        continue 
                    mem[_230 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _230 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _276 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_276] = 26
                    mem[_276 + 32] = 'SafeMath: division by zero'
                    if _226:
                        if poolInfo[idx].field_768 > !(0 / _226):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _226) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _226
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _280 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _280 + 68] = mem[idx + _276 + 32]
                        idx = idx + 32
                        continue 
                    mem[_280 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _280 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _312 = mem[64]
                mem[64] = mem[64] + 64
                mem[_312] = 26
                mem[_312 + 32] = 'SafeMath: division by zero'
                if _226:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _226):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _226) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _226
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _320 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _320 + 68] = mem[idx + _312 + 32]
                    idx = idx + 32
                    continue 
                mem[_320 + 94] = 0
                revert with memory
                  from mem[64]
                   len _320 + -mem[64] + 100
            if not block.timestamp - startTime:
                _235 = mem[64]
                mem[64] = mem[64] + 64
                mem[_235] = 26
                mem[_235 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _240 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _240 + 68] = mem[idx + _235 + 32]
                        idx = idx + 32
                        continue 
                    mem[_240 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _240 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _293 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_293] = 26
                    mem[_293 + 32] = 'SafeMath: division by zero'
                    if _226:
                        if poolInfo[idx].field_768 > !(0 / _226):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _226) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _226
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _301 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _301 + 68] = mem[idx + _293 + 32]
                        idx = idx + 32
                        continue 
                    mem[_301 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _301 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _335 = mem[64]
                mem[64] = mem[64] + 64
                mem[_335] = 26
                mem[_335 + 32] = 'SafeMath: division by zero'
                if _226:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _226):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _226) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _226
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _342 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _342 + 68] = mem[idx + _335 + 32]
                    idx = idx + 32
                    continue 
                mem[_342 + 94] = 0
                revert with memory
                  from mem[64]
                   len _342 + -mem[64] + 100
            if block.timestamp - startTime and brushPerSecond > -1 / block.timestamp - startTime:
                revert with 0, 17
            if not block.timestamp - startTime:
                revert with 0, 18
            if (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) / block.timestamp - startTime != brushPerSecond:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                _256 = mem[64]
                mem[64] = mem[64] + 64
                mem[_256] = 26
                mem[_256 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _262 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _262 + 68] = mem[idx + _256 + 32]
                        idx = idx + 32
                        continue 
                    mem[_262 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _262 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _334 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_334] = 26
                    mem[_334 + 32] = 'SafeMath: division by zero'
                    if _226:
                        if poolInfo[idx].field_768 > !(0 / _226):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _226) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _226
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _341 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _341 + 68] = mem[idx + _334 + 32]
                        idx = idx + 32
                        continue 
                    mem[_341 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _341 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _371 = mem[64]
                mem[64] = mem[64] + 64
                mem[_371] = 26
                mem[_371 + 32] = 'SafeMath: division by zero'
                if _226:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _226):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _226) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _226
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _382 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _382 + 68] = mem[idx + _371 + 32]
                    idx = idx + 32
                    continue 
                mem[_382 + 94] = 0
                revert with memory
                  from mem[64]
                   len _382 + -mem[64] + 100
            if (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                revert with 0, 17
            if not (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                revert with 0, 18
            if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _278 = mem[64]
            mem[64] = mem[64] + 64
            mem[_278] = 26
            mem[_278 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _288 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _288 + 68] = mem[idx + _278 + 32]
                    idx = idx + 32
                    continue 
                mem[_288 + 94] = 0
                revert with memory
                  from mem[64]
                   len _288 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                _370 = mem[64]
                mem[64] = mem[64] + 64
                mem[_370] = 26
                mem[_370 + 32] = 'SafeMath: division by zero'
                if _226:
                    if poolInfo[idx].field_768 > !(0 / _226):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _226) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _226
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _381 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _381 + 68] = mem[idx + _370 + 32]
                    idx = idx + 32
                    continue 
                mem[_381 + 94] = 0
                revert with memory
                  from mem[64]
                   len _381 + -mem[64] + 100
            if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 17
            if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 18
            if 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _406 = mem[64]
            mem[64] = mem[64] + 64
            mem[_406] = 26
            mem[_406 + 32] = 'SafeMath: division by zero'
            if _226:
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _226):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _226) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _226
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _418 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _418 + 68] = mem[idx + _406 + 32]
                idx = idx + 32
                continue 
            mem[_418 + 94] = 0
            revert with memory
              from mem[64]
               len _418 + -mem[64] + 100
        if block.timestamp < startTime:
            _227 = mem[64]
            mem[64] = mem[64] + 64
            mem[_227] = 26
            mem[_227 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _229 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _229 + 68] = mem[idx + _227 + 32]
                    idx = idx + 32
                    continue 
                mem[_229 + 94] = 0
                revert with memory
                  from mem[64]
                   len _229 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _274 = mem[64]
                mem[64] = mem[64] + 64
                mem[_274] = 26
                mem[_274 + 32] = 'SafeMath: division by zero'
                if _226:
                    if poolInfo[idx].field_768 > !(0 / _226):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _226) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _226
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _279 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _279 + 68] = mem[idx + _274 + 32]
                    idx = idx + 32
                    continue 
                mem[_279 + 94] = 0
                revert with memory
                  from mem[64]
                   len _279 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _309 = mem[64]
            mem[64] = mem[64] + 64
            mem[_309] = 26
            mem[_309 + 32] = 'SafeMath: division by zero'
            if _226:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _226):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _226) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _226
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _316 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _316 + 68] = mem[idx + _309 + 32]
                idx = idx + 32
                continue 
            mem[_316 + 94] = 0
            revert with memory
              from mem[64]
               len _316 + -mem[64] + 100
        if block.timestamp < poolInfo[idx].field_512:
            revert with 0, 17
        if not block.timestamp - poolInfo[idx].field_512:
            _232 = mem[64]
            mem[64] = mem[64] + 64
            mem[_232] = 26
            mem[_232 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _239 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _239 + 68] = mem[idx + _232 + 32]
                    idx = idx + 32
                    continue 
                mem[_239 + 94] = 0
                revert with memory
                  from mem[64]
                   len _239 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _286 = mem[64]
                mem[64] = mem[64] + 64
                mem[_286] = 26
                mem[_286 + 32] = 'SafeMath: division by zero'
                if _226:
                    if poolInfo[idx].field_768 > !(0 / _226):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _226) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _226
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _299 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _299 + 68] = mem[idx + _286 + 32]
                    idx = idx + 32
                    continue 
                mem[_299 + 94] = 0
                revert with memory
                  from mem[64]
                   len _299 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _328 = mem[64]
            mem[64] = mem[64] + 64
            mem[_328] = 26
            mem[_328 + 32] = 'SafeMath: division by zero'
            if _226:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _226):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _226) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _226
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _338 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _338 + 68] = mem[idx + _328 + 32]
                idx = idx + 32
                continue 
            mem[_338 + 94] = 0
            revert with memory
              from mem[64]
               len _338 + -mem[64] + 100
        if block.timestamp - poolInfo[idx].field_512 and brushPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
            revert with 0, 17
        if not block.timestamp - poolInfo[idx].field_512:
            revert with 0, 18
        if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) / block.timestamp - poolInfo[idx].field_512 != brushPerSecond:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            _255 = mem[64]
            mem[64] = mem[64] + 64
            mem[_255] = 26
            mem[_255 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _257 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _257 + 68] = mem[idx + _255 + 32]
                    idx = idx + 32
                    continue 
                mem[_257 + 94] = 0
                revert with memory
                  from mem[64]
                   len _257 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _327 = mem[64]
                mem[64] = mem[64] + 64
                mem[_327] = 26
                mem[_327 + 32] = 'SafeMath: division by zero'
                if _226:
                    if poolInfo[idx].field_768 > !(0 / _226):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _226) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _226
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _337 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _337 + 68] = mem[idx + _327 + 32]
                    idx = idx + 32
                    continue 
                mem[_337 + 94] = 0
                revert with memory
                  from mem[64]
                   len _337 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _368 = mem[64]
            mem[64] = mem[64] + 64
            mem[_368] = 26
            mem[_368 + 32] = 'SafeMath: division by zero'
            if _226:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _226):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _226) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _226
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _376 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _376 + 68] = mem[idx + _368 + 32]
                idx = idx + 32
                continue 
            mem[_376 + 94] = 0
            revert with memory
              from mem[64]
               len _376 + -mem[64] + 100
        if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            revert with 0, 17
        if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            revert with 0, 18
        if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _277 = mem[64]
        mem[64] = mem[64] + 64
        mem[_277] = 26
        mem[_277 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _281 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _281 + 68] = mem[idx + _277 + 32]
                idx = idx + 32
                continue 
            mem[_281 + 94] = 0
            revert with memory
              from mem[64]
               len _281 + -mem[64] + 100
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(brushAddress)
        call brushAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args this.address, (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            _367 = mem[64]
            mem[64] = mem[64] + 64
            mem[_367] = 26
            mem[_367 + 32] = 'SafeMath: division by zero'
            if _226:
                if poolInfo[idx].field_768 > !(0 / _226):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (0 / _226) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / _226
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _375 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _375 + 68] = mem[idx + _367 + 32]
                idx = idx + 32
                continue 
            mem[_375 + 94] = 0
            revert with memory
              from mem[64]
               len _375 + -mem[64] + 100
        if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _403 = mem[64]
        mem[64] = mem[64] + 64
        mem[_403] = 26
        mem[_403 + 32] = 'SafeMath: division by zero'
        if _226:
            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _226):
                revert with 0, 17
            if poolInfo[idx].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _226) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _226
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _413 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _413 + 68] = mem[idx + _403 + 32]
            idx = idx + 32
            continue 
        mem[_413 + 94] = 0
        revert with memory
          from mem[64]
           len _413 + -mem[64] + 100
}

function setBrushPerSecondEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp <= poolInfo[idx].field_512:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _227 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _228 = mem[_227]
        if not mem[_227]:
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if poolInfo[idx].field_512 <= startTime:
            if block.timestamp < startTime:
                _230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_230] = 26
                mem[_230 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _232 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _232 + 68] = mem[idx + _230 + 32]
                        idx = idx + 32
                        continue 
                    mem[_232 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _232 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _278 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_278] = 26
                    mem[_278 + 32] = 'SafeMath: division by zero'
                    if _228:
                        if poolInfo[idx].field_768 > !(0 / _228):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _228) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _228
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _282 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _282 + 68] = mem[idx + _278 + 32]
                        idx = idx + 32
                        continue 
                    mem[_282 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _282 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _314 = mem[64]
                mem[64] = mem[64] + 64
                mem[_314] = 26
                mem[_314 + 32] = 'SafeMath: division by zero'
                if _228:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _228):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _228) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _228
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _322 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _322 + 68] = mem[idx + _314 + 32]
                    idx = idx + 32
                    continue 
                mem[_322 + 94] = 0
                revert with memory
                  from mem[64]
                   len _322 + -mem[64] + 100
            if not block.timestamp - startTime:
                _237 = mem[64]
                mem[64] = mem[64] + 64
                mem[_237] = 26
                mem[_237 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _242 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _242 + 68] = mem[idx + _237 + 32]
                        idx = idx + 32
                        continue 
                    mem[_242 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _242 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_295] = 26
                    mem[_295 + 32] = 'SafeMath: division by zero'
                    if _228:
                        if poolInfo[idx].field_768 > !(0 / _228):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _228) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _228
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _303 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _303 + 68] = mem[idx + _295 + 32]
                        idx = idx + 32
                        continue 
                    mem[_303 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _303 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _337 = mem[64]
                mem[64] = mem[64] + 64
                mem[_337] = 26
                mem[_337 + 32] = 'SafeMath: division by zero'
                if _228:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _228):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _228) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _228
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _344 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _344 + 68] = mem[idx + _337 + 32]
                    idx = idx + 32
                    continue 
                mem[_344 + 94] = 0
                revert with memory
                  from mem[64]
                   len _344 + -mem[64] + 100
            if block.timestamp - startTime and brushPerSecond > -1 / block.timestamp - startTime:
                revert with 0, 17
            if not block.timestamp - startTime:
                revert with 0, 18
            if (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) / block.timestamp - startTime != brushPerSecond:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                _258 = mem[64]
                mem[64] = mem[64] + 64
                mem[_258] = 26
                mem[_258 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _264 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _264 + 68] = mem[idx + _258 + 32]
                        idx = idx + 32
                        continue 
                    mem[_264 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _264 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _336 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_336] = 26
                    mem[_336 + 32] = 'SafeMath: division by zero'
                    if _228:
                        if poolInfo[idx].field_768 > !(0 / _228):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _228) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _228
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _343 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _343 + 68] = mem[idx + _336 + 32]
                        idx = idx + 32
                        continue 
                    mem[_343 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _343 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _373 = mem[64]
                mem[64] = mem[64] + 64
                mem[_373] = 26
                mem[_373 + 32] = 'SafeMath: division by zero'
                if _228:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _228):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _228) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _228
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _384 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _384 + 68] = mem[idx + _373 + 32]
                    idx = idx + 32
                    continue 
                mem[_384 + 94] = 0
                revert with memory
                  from mem[64]
                   len _384 + -mem[64] + 100
            if (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                revert with 0, 17
            if not (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                revert with 0, 18
            if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _280 = mem[64]
            mem[64] = mem[64] + 64
            mem[_280] = 26
            mem[_280 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _290 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _290 + 68] = mem[idx + _280 + 32]
                    idx = idx + 32
                    continue 
                mem[_290 + 94] = 0
                revert with memory
                  from mem[64]
                   len _290 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                _372 = mem[64]
                mem[64] = mem[64] + 64
                mem[_372] = 26
                mem[_372 + 32] = 'SafeMath: division by zero'
                if _228:
                    if poolInfo[idx].field_768 > !(0 / _228):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _228) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _228
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _383 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _383 + 68] = mem[idx + _372 + 32]
                    idx = idx + 32
                    continue 
                mem[_383 + 94] = 0
                revert with memory
                  from mem[64]
                   len _383 + -mem[64] + 100
            if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 17
            if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 18
            if 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _408 = mem[64]
            mem[64] = mem[64] + 64
            mem[_408] = 26
            mem[_408 + 32] = 'SafeMath: division by zero'
            if _228:
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _228):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _228) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _228
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _420 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _420 + 68] = mem[idx + _408 + 32]
                idx = idx + 32
                continue 
            mem[_420 + 94] = 0
            revert with memory
              from mem[64]
               len _420 + -mem[64] + 100
        if block.timestamp < startTime:
            _229 = mem[64]
            mem[64] = mem[64] + 64
            mem[_229] = 26
            mem[_229 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _231 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _231 + 68] = mem[idx + _229 + 32]
                    idx = idx + 32
                    continue 
                mem[_231 + 94] = 0
                revert with memory
                  from mem[64]
                   len _231 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _276 = mem[64]
                mem[64] = mem[64] + 64
                mem[_276] = 26
                mem[_276 + 32] = 'SafeMath: division by zero'
                if _228:
                    if poolInfo[idx].field_768 > !(0 / _228):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _228) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _228
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _281 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _281 + 68] = mem[idx + _276 + 32]
                    idx = idx + 32
                    continue 
                mem[_281 + 94] = 0
                revert with memory
                  from mem[64]
                   len _281 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _311 = mem[64]
            mem[64] = mem[64] + 64
            mem[_311] = 26
            mem[_311 + 32] = 'SafeMath: division by zero'
            if _228:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _228):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _228) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _228
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _318 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _318 + 68] = mem[idx + _311 + 32]
                idx = idx + 32
                continue 
            mem[_318 + 94] = 0
            revert with memory
              from mem[64]
               len _318 + -mem[64] + 100
        if block.timestamp < poolInfo[idx].field_512:
            revert with 0, 17
        if not block.timestamp - poolInfo[idx].field_512:
            _234 = mem[64]
            mem[64] = mem[64] + 64
            mem[_234] = 26
            mem[_234 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _241 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _241 + 68] = mem[idx + _234 + 32]
                    idx = idx + 32
                    continue 
                mem[_241 + 94] = 0
                revert with memory
                  from mem[64]
                   len _241 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _288 = mem[64]
                mem[64] = mem[64] + 64
                mem[_288] = 26
                mem[_288 + 32] = 'SafeMath: division by zero'
                if _228:
                    if poolInfo[idx].field_768 > !(0 / _228):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _228) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _228
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _301 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _301 + 68] = mem[idx + _288 + 32]
                    idx = idx + 32
                    continue 
                mem[_301 + 94] = 0
                revert with memory
                  from mem[64]
                   len _301 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _330 = mem[64]
            mem[64] = mem[64] + 64
            mem[_330] = 26
            mem[_330 + 32] = 'SafeMath: division by zero'
            if _228:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _228):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _228) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _228
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _340 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _340 + 68] = mem[idx + _330 + 32]
                idx = idx + 32
                continue 
            mem[_340 + 94] = 0
            revert with memory
              from mem[64]
               len _340 + -mem[64] + 100
        if block.timestamp - poolInfo[idx].field_512 and brushPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
            revert with 0, 17
        if not block.timestamp - poolInfo[idx].field_512:
            revert with 0, 18
        if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) / block.timestamp - poolInfo[idx].field_512 != brushPerSecond:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 26
            mem[_257 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _259 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _259 + 68] = mem[idx + _257 + 32]
                    idx = idx + 32
                    continue 
                mem[_259 + 94] = 0
                revert with memory
                  from mem[64]
                   len _259 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _329 = mem[64]
                mem[64] = mem[64] + 64
                mem[_329] = 26
                mem[_329 + 32] = 'SafeMath: division by zero'
                if _228:
                    if poolInfo[idx].field_768 > !(0 / _228):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _228) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _228
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _339 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _339 + 68] = mem[idx + _329 + 32]
                    idx = idx + 32
                    continue 
                mem[_339 + 94] = 0
                revert with memory
                  from mem[64]
                   len _339 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _370 = mem[64]
            mem[64] = mem[64] + 64
            mem[_370] = 26
            mem[_370 + 32] = 'SafeMath: division by zero'
            if _228:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _228):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _228) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _228
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _378 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _378 + 68] = mem[idx + _370 + 32]
                idx = idx + 32
                continue 
            mem[_378 + 94] = 0
            revert with memory
              from mem[64]
               len _378 + -mem[64] + 100
        if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            revert with 0, 17
        if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            revert with 0, 18
        if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _279 = mem[64]
        mem[64] = mem[64] + 64
        mem[_279] = 26
        mem[_279 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _283 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _283 + 68] = mem[idx + _279 + 32]
                idx = idx + 32
                continue 
            mem[_283 + 94] = 0
            revert with memory
              from mem[64]
               len _283 + -mem[64] + 100
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(brushAddress)
        call brushAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args this.address, (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            _369 = mem[64]
            mem[64] = mem[64] + 64
            mem[_369] = 26
            mem[_369 + 32] = 'SafeMath: division by zero'
            if _228:
                if poolInfo[idx].field_768 > !(0 / _228):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (0 / _228) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / _228
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _377 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _377 + 68] = mem[idx + _369 + 32]
                idx = idx + 32
                continue 
            mem[_377 + 94] = 0
            revert with memory
              from mem[64]
               len _377 + -mem[64] + 100
        if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _405 = mem[64]
        mem[64] = mem[64] + 64
        mem[_405] = 26
        mem[_405 + 32] = 'SafeMath: division by zero'
        if _228:
            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _228):
                revert with 0, 17
            if poolInfo[idx].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _228) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _228
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _415 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _415 + 68] = mem[idx + _405 + 32]
            idx = idx + 32
            continue 
        mem[_415 + 94] = 0
        revert with memory
          from mem[64]
           len _415 + -mem[64] + 100
    brushPerSecond = arg1
}

function set(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 4000:
        revert with 0, 'add: too many alloc points!!'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp <= poolInfo[idx].field_512:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _232 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _233 = mem[_232]
        if not mem[_232]:
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if poolInfo[idx].field_512 <= startTime:
            if block.timestamp < startTime:
                _236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_236] = 26
                mem[_236 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _238 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _238 + 68] = mem[idx + _236 + 32]
                        idx = idx + 32
                        continue 
                    mem[_238 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _238 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _284 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_284] = 26
                    mem[_284 + 32] = 'SafeMath: division by zero'
                    if _233:
                        if poolInfo[idx].field_768 > !(0 / _233):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _233) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _233
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _288 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _288 + 68] = mem[idx + _284 + 32]
                        idx = idx + 32
                        continue 
                    mem[_288 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _288 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _320 = mem[64]
                mem[64] = mem[64] + 64
                mem[_320] = 26
                mem[_320 + 32] = 'SafeMath: division by zero'
                if _233:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _233):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _233) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _233
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _328 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _328 + 68] = mem[idx + _320 + 32]
                    idx = idx + 32
                    continue 
                mem[_328 + 94] = 0
                revert with memory
                  from mem[64]
                   len _328 + -mem[64] + 100
            if not block.timestamp - startTime:
                _243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_243] = 26
                mem[_243 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _248 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _248 + 68] = mem[idx + _243 + 32]
                        idx = idx + 32
                        continue 
                    mem[_248 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _248 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _301 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_301] = 26
                    mem[_301 + 32] = 'SafeMath: division by zero'
                    if _233:
                        if poolInfo[idx].field_768 > !(0 / _233):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _233) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _233
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _309 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _309 + 68] = mem[idx + _301 + 32]
                        idx = idx + 32
                        continue 
                    mem[_309 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _309 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _343 = mem[64]
                mem[64] = mem[64] + 64
                mem[_343] = 26
                mem[_343 + 32] = 'SafeMath: division by zero'
                if _233:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _233):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _233) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _233
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _350 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _350 + 68] = mem[idx + _343 + 32]
                    idx = idx + 32
                    continue 
                mem[_350 + 94] = 0
                revert with memory
                  from mem[64]
                   len _350 + -mem[64] + 100
            if block.timestamp - startTime and brushPerSecond > -1 / block.timestamp - startTime:
                revert with 0, 17
            if not block.timestamp - startTime:
                revert with 0, 18
            if (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) / block.timestamp - startTime != brushPerSecond:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                _264 = mem[64]
                mem[64] = mem[64] + 64
                mem[_264] = 26
                mem[_264 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _270 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _270 + 68] = mem[idx + _264 + 32]
                        idx = idx + 32
                        continue 
                    mem[_270 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _270 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_342] = 26
                    mem[_342 + 32] = 'SafeMath: division by zero'
                    if _233:
                        if poolInfo[idx].field_768 > !(0 / _233):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _233) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _233
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _349 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _349 + 68] = mem[idx + _342 + 32]
                        idx = idx + 32
                        continue 
                    mem[_349 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _349 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _379 = mem[64]
                mem[64] = mem[64] + 64
                mem[_379] = 26
                mem[_379 + 32] = 'SafeMath: division by zero'
                if _233:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _233):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _233) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _233
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _390 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _390 + 68] = mem[idx + _379 + 32]
                    idx = idx + 32
                    continue 
                mem[_390 + 94] = 0
                revert with memory
                  from mem[64]
                   len _390 + -mem[64] + 100
            if (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                revert with 0, 17
            if not (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                revert with 0, 18
            if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _286 = mem[64]
            mem[64] = mem[64] + 64
            mem[_286] = 26
            mem[_286 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _296 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _296 + 68] = mem[idx + _286 + 32]
                    idx = idx + 32
                    continue 
                mem[_296 + 94] = 0
                revert with memory
                  from mem[64]
                   len _296 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                _378 = mem[64]
                mem[64] = mem[64] + 64
                mem[_378] = 26
                mem[_378 + 32] = 'SafeMath: division by zero'
                if _233:
                    if poolInfo[idx].field_768 > !(0 / _233):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _233) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _233
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _389 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _389 + 68] = mem[idx + _378 + 32]
                    idx = idx + 32
                    continue 
                mem[_389 + 94] = 0
                revert with memory
                  from mem[64]
                   len _389 + -mem[64] + 100
            if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 17
            if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 18
            if 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _414 = mem[64]
            mem[64] = mem[64] + 64
            mem[_414] = 26
            mem[_414 + 32] = 'SafeMath: division by zero'
            if _233:
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _233):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _233) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _233
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _426 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _426 + 68] = mem[idx + _414 + 32]
                idx = idx + 32
                continue 
            mem[_426 + 94] = 0
            revert with memory
              from mem[64]
               len _426 + -mem[64] + 100
        if block.timestamp < startTime:
            _235 = mem[64]
            mem[64] = mem[64] + 64
            mem[_235] = 26
            mem[_235 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _237 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _237 + 68] = mem[idx + _235 + 32]
                    idx = idx + 32
                    continue 
                mem[_237 + 94] = 0
                revert with memory
                  from mem[64]
                   len _237 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _282 = mem[64]
                mem[64] = mem[64] + 64
                mem[_282] = 26
                mem[_282 + 32] = 'SafeMath: division by zero'
                if _233:
                    if poolInfo[idx].field_768 > !(0 / _233):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _233) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _233
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _287 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _287 + 68] = mem[idx + _282 + 32]
                    idx = idx + 32
                    continue 
                mem[_287 + 94] = 0
                revert with memory
                  from mem[64]
                   len _287 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _317 = mem[64]
            mem[64] = mem[64] + 64
            mem[_317] = 26
            mem[_317 + 32] = 'SafeMath: division by zero'
            if _233:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _233):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _233) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _233
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _324 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _324 + 68] = mem[idx + _317 + 32]
                idx = idx + 32
                continue 
            mem[_324 + 94] = 0
            revert with memory
              from mem[64]
               len _324 + -mem[64] + 100
        if block.timestamp < poolInfo[idx].field_512:
            revert with 0, 17
        if not block.timestamp - poolInfo[idx].field_512:
            _240 = mem[64]
            mem[64] = mem[64] + 64
            mem[_240] = 26
            mem[_240 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _247 + 68] = mem[idx + _240 + 32]
                    idx = idx + 32
                    continue 
                mem[_247 + 94] = 0
                revert with memory
                  from mem[64]
                   len _247 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _294 = mem[64]
                mem[64] = mem[64] + 64
                mem[_294] = 26
                mem[_294 + 32] = 'SafeMath: division by zero'
                if _233:
                    if poolInfo[idx].field_768 > !(0 / _233):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _233) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _233
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _307 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _307 + 68] = mem[idx + _294 + 32]
                    idx = idx + 32
                    continue 
                mem[_307 + 94] = 0
                revert with memory
                  from mem[64]
                   len _307 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _336 = mem[64]
            mem[64] = mem[64] + 64
            mem[_336] = 26
            mem[_336 + 32] = 'SafeMath: division by zero'
            if _233:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _233):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _233) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _233
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _346 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _346 + 68] = mem[idx + _336 + 32]
                idx = idx + 32
                continue 
            mem[_346 + 94] = 0
            revert with memory
              from mem[64]
               len _346 + -mem[64] + 100
        if block.timestamp - poolInfo[idx].field_512 and brushPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
            revert with 0, 17
        if not block.timestamp - poolInfo[idx].field_512:
            revert with 0, 18
        if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) / block.timestamp - poolInfo[idx].field_512 != brushPerSecond:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            _263 = mem[64]
            mem[64] = mem[64] + 64
            mem[_263] = 26
            mem[_263 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _265 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _265 + 68] = mem[idx + _263 + 32]
                    idx = idx + 32
                    continue 
                mem[_265 + 94] = 0
                revert with memory
                  from mem[64]
                   len _265 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _335 = mem[64]
                mem[64] = mem[64] + 64
                mem[_335] = 26
                mem[_335 + 32] = 'SafeMath: division by zero'
                if _233:
                    if poolInfo[idx].field_768 > !(0 / _233):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _233) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _233
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _345 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _345 + 68] = mem[idx + _335 + 32]
                    idx = idx + 32
                    continue 
                mem[_345 + 94] = 0
                revert with memory
                  from mem[64]
                   len _345 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _376 = mem[64]
            mem[64] = mem[64] + 64
            mem[_376] = 26
            mem[_376 + 32] = 'SafeMath: division by zero'
            if _233:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _233):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _233) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _233
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _384 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _384 + 68] = mem[idx + _376 + 32]
                idx = idx + 32
                continue 
            mem[_384 + 94] = 0
            revert with memory
              from mem[64]
               len _384 + -mem[64] + 100
        if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            revert with 0, 17
        if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            revert with 0, 18
        if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _285 = mem[64]
        mem[64] = mem[64] + 64
        mem[_285] = 26
        mem[_285 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _289 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _289 + 68] = mem[idx + _285 + 32]
                idx = idx + 32
                continue 
            mem[_289 + 94] = 0
            revert with memory
              from mem[64]
               len _289 + -mem[64] + 100
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(brushAddress)
        call brushAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args this.address, (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            _375 = mem[64]
            mem[64] = mem[64] + 64
            mem[_375] = 26
            mem[_375 + 32] = 'SafeMath: division by zero'
            if _233:
                if poolInfo[idx].field_768 > !(0 / _233):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (0 / _233) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / _233
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _383 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _383 + 68] = mem[idx + _375 + 32]
                idx = idx + 32
                continue 
            mem[_383 + 94] = 0
            revert with memory
              from mem[64]
               len _383 + -mem[64] + 100
        if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _411 = mem[64]
        mem[64] = mem[64] + 64
        mem[_411] = 26
        mem[_411 + 32] = 'SafeMath: division by zero'
        if _233:
            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _233):
                revert with 0, 17
            if poolInfo[idx].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _233) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _233
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _421 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _421 + 68] = mem[idx + _411 + 32]
            idx = idx + 32
            continue 
        mem[_421 + 94] = 0
        revert with memory
          from mem[64]
           len _421 + -mem[64] + 100
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 4000:
        revert with 0, 'add: too many alloc points!!'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'add: pool already exists!!!!'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp <= poolInfo[idx].field_512:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _264 = mem[_263]
        if not mem[_263]:
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if poolInfo[idx].field_512 <= startTime:
            if block.timestamp < startTime:
                _280 = mem[64]
                mem[64] = mem[64] + 64
                mem[_280] = 26
                mem[_280 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _282 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _282 + 68] = mem[idx + _280 + 32]
                        idx = idx + 32
                        continue 
                    mem[_282 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _282 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _328 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_328] = 26
                    mem[_328 + 32] = 'SafeMath: division by zero'
                    if _264:
                        if poolInfo[idx].field_768 > !(0 / _264):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _264) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _264
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _332 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _332 + 68] = mem[idx + _328 + 32]
                        idx = idx + 32
                        continue 
                    mem[_332 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _332 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _364 = mem[64]
                mem[64] = mem[64] + 64
                mem[_364] = 26
                mem[_364 + 32] = 'SafeMath: division by zero'
                if _264:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _264):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _264) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _264
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _372 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _372 + 68] = mem[idx + _364 + 32]
                    idx = idx + 32
                    continue 
                mem[_372 + 94] = 0
                revert with memory
                  from mem[64]
                   len _372 + -mem[64] + 100
            if not block.timestamp - startTime:
                _287 = mem[64]
                mem[64] = mem[64] + 64
                mem[_287] = 26
                mem[_287 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _292 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _292 + 68] = mem[idx + _287 + 32]
                        idx = idx + 32
                        continue 
                    mem[_292 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _292 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_345] = 26
                    mem[_345 + 32] = 'SafeMath: division by zero'
                    if _264:
                        if poolInfo[idx].field_768 > !(0 / _264):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _264) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _264
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _353 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _353 + 68] = mem[idx + _345 + 32]
                        idx = idx + 32
                        continue 
                    mem[_353 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _353 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _387 = mem[64]
                mem[64] = mem[64] + 64
                mem[_387] = 26
                mem[_387 + 32] = 'SafeMath: division by zero'
                if _264:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _264):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _264) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _264
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _394 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _394 + 68] = mem[idx + _387 + 32]
                    idx = idx + 32
                    continue 
                mem[_394 + 94] = 0
                revert with memory
                  from mem[64]
                   len _394 + -mem[64] + 100
            if block.timestamp - startTime and brushPerSecond > -1 / block.timestamp - startTime:
                revert with 0, 17
            if not block.timestamp - startTime:
                revert with 0, 18
            if (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) / block.timestamp - startTime != brushPerSecond:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                _308 = mem[64]
                mem[64] = mem[64] + 64
                mem[_308] = 26
                mem[_308 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _314 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _314 + 68] = mem[idx + _308 + 32]
                        idx = idx + 32
                        continue 
                    mem[_314 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _314 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _386 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_386] = 26
                    mem[_386 + 32] = 'SafeMath: division by zero'
                    if _264:
                        if poolInfo[idx].field_768 > !(0 / _264):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _264) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _264
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _393 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _393 + 68] = mem[idx + _386 + 32]
                        idx = idx + 32
                        continue 
                    mem[_393 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _393 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _423 = mem[64]
                mem[64] = mem[64] + 64
                mem[_423] = 26
                mem[_423 + 32] = 'SafeMath: division by zero'
                if _264:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _264):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _264) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _264
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _434 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _434 + 68] = mem[idx + _423 + 32]
                    idx = idx + 32
                    continue 
                mem[_434 + 94] = 0
                revert with memory
                  from mem[64]
                   len _434 + -mem[64] + 100
            if (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                revert with 0, 17
            if not (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
                revert with 0, 18
            if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _330 = mem[64]
            mem[64] = mem[64] + 64
            mem[_330] = 26
            mem[_330 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _340 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _340 + 68] = mem[idx + _330 + 32]
                    idx = idx + 32
                    continue 
                mem[_340 + 94] = 0
                revert with memory
                  from mem[64]
                   len _340 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                _422 = mem[64]
                mem[64] = mem[64] + 64
                mem[_422] = 26
                mem[_422 + 32] = 'SafeMath: division by zero'
                if _264:
                    if poolInfo[idx].field_768 > !(0 / _264):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _264) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _264
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _433 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _433 + 68] = mem[idx + _422 + 32]
                    idx = idx + 32
                    continue 
                mem[_433 + 94] = 0
                revert with memory
                  from mem[64]
                   len _433 + -mem[64] + 100
            if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 17
            if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 18
            if 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _458 = mem[64]
            mem[64] = mem[64] + 64
            mem[_458] = 26
            mem[_458 + 32] = 'SafeMath: division by zero'
            if _264:
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _264):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _264) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (startTime * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _264
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _470 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _470 + 68] = mem[idx + _458 + 32]
                idx = idx + 32
                continue 
            mem[_470 + 94] = 0
            revert with memory
              from mem[64]
               len _470 + -mem[64] + 100
        if block.timestamp < startTime:
            _279 = mem[64]
            mem[64] = mem[64] + 64
            mem[_279] = 26
            mem[_279 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _281 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _281 + 68] = mem[idx + _279 + 32]
                    idx = idx + 32
                    continue 
                mem[_281 + 94] = 0
                revert with memory
                  from mem[64]
                   len _281 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _326 = mem[64]
                mem[64] = mem[64] + 64
                mem[_326] = 26
                mem[_326 + 32] = 'SafeMath: division by zero'
                if _264:
                    if poolInfo[idx].field_768 > !(0 / _264):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _264) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _264
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _331 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _331 + 68] = mem[idx + _326 + 32]
                    idx = idx + 32
                    continue 
                mem[_331 + 94] = 0
                revert with memory
                  from mem[64]
                   len _331 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _361 = mem[64]
            mem[64] = mem[64] + 64
            mem[_361] = 26
            mem[_361 + 32] = 'SafeMath: division by zero'
            if _264:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _264):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _264) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _264
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _368 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _368 + 68] = mem[idx + _361 + 32]
                idx = idx + 32
                continue 
            mem[_368 + 94] = 0
            revert with memory
              from mem[64]
               len _368 + -mem[64] + 100
        if block.timestamp < poolInfo[idx].field_512:
            revert with 0, 17
        if not block.timestamp - poolInfo[idx].field_512:
            _284 = mem[64]
            mem[64] = mem[64] + 64
            mem[_284] = 26
            mem[_284 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _291 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _291 + 68] = mem[idx + _284 + 32]
                    idx = idx + 32
                    continue 
                mem[_291 + 94] = 0
                revert with memory
                  from mem[64]
                   len _291 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _338 = mem[64]
                mem[64] = mem[64] + 64
                mem[_338] = 26
                mem[_338 + 32] = 'SafeMath: division by zero'
                if _264:
                    if poolInfo[idx].field_768 > !(0 / _264):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _264) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _264
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _351 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _351 + 68] = mem[idx + _338 + 32]
                    idx = idx + 32
                    continue 
                mem[_351 + 94] = 0
                revert with memory
                  from mem[64]
                   len _351 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _380 = mem[64]
            mem[64] = mem[64] + 64
            mem[_380] = 26
            mem[_380 + 32] = 'SafeMath: division by zero'
            if _264:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _264):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _264) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _264
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _390 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _390 + 68] = mem[idx + _380 + 32]
                idx = idx + 32
                continue 
            mem[_390 + 94] = 0
            revert with memory
              from mem[64]
               len _390 + -mem[64] + 100
        if block.timestamp - poolInfo[idx].field_512 and brushPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
            revert with 0, 17
        if not block.timestamp - poolInfo[idx].field_512:
            revert with 0, 18
        if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) / block.timestamp - poolInfo[idx].field_512 != brushPerSecond:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            _307 = mem[64]
            mem[64] = mem[64] + 64
            mem[_307] = 26
            mem[_307 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _309 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _309 + 68] = mem[idx + _307 + 32]
                    idx = idx + 32
                    continue 
                mem[_309 + 94] = 0
                revert with memory
                  from mem[64]
                   len _309 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _379 = mem[64]
                mem[64] = mem[64] + 64
                mem[_379] = 26
                mem[_379 + 32] = 'SafeMath: division by zero'
                if _264:
                    if poolInfo[idx].field_768 > !(0 / _264):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _264) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _264
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _389 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _389 + 68] = mem[idx + _379 + 32]
                    idx = idx + 32
                    continue 
                mem[_389 + 94] = 0
                revert with memory
                  from mem[64]
                   len _389 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _420 = mem[64]
            mem[64] = mem[64] + 64
            mem[_420] = 26
            mem[_420 + 32] = 'SafeMath: division by zero'
            if _264:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _264):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _264) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _264
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _428 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _428 + 68] = mem[idx + _420 + 32]
                idx = idx + 32
                continue 
            mem[_428 + 94] = 0
            revert with memory
              from mem[64]
               len _428 + -mem[64] + 100
        if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            revert with 0, 17
        if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            revert with 0, 18
        if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _329 = mem[64]
        mem[64] = mem[64] + 64
        mem[_329] = 26
        mem[_329 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _333 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _333 + 68] = mem[idx + _329 + 32]
                idx = idx + 32
                continue 
            mem[_333 + 94] = 0
            revert with memory
              from mem[64]
               len _333 + -mem[64] + 100
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(brushAddress)
        call brushAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args this.address, (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            _419 = mem[64]
            mem[64] = mem[64] + 64
            mem[_419] = 26
            mem[_419 + 32] = 'SafeMath: division by zero'
            if _264:
                if poolInfo[idx].field_768 > !(0 / _264):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (0 / _264) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / _264
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _427 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _427 + 68] = mem[idx + _419 + 32]
                idx = idx + 32
                continue 
            mem[_427 + 94] = 0
            revert with memory
              from mem[64]
               len _427 + -mem[64] + 100
        if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _455 = mem[64]
        mem[64] = mem[64] + 64
        mem[_455] = 26
        mem[_455 + 32] = 'SafeMath: division by zero'
        if _264:
            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _264):
                revert with 0, 17
            if poolInfo[idx].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _264) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _264
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _465 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _465 + 68] = mem[idx + _455 + 32]
            idx = idx + 32
            continue 
        mem[_465 + 94] = 0
        revert with memory
          from mem[64]
           len _465 + -mem[64] + 100
    if totalAllocPoint > !arg1:
        revert with 0, 17
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF652[stor6.length] = arg1
    if block.timestamp > startTime:
        storF652[stor6.length] = block.timestamp
    else:
        storF652[stor6.length] = startTime
    storF652[stor6.length] = 0
}

function pendingBrush(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < startTime:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 <= startTime:
        if not block.timestamp - startTime:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if block.timestamp - startTime and brushPerSecond > -1 / block.timestamp - startTime:
            revert with 0, 17
        if not block.timestamp - startTime:
            revert with 0, 18
        if (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) / block.timestamp - startTime != brushPerSecond:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
            revert with 0, 17
        if not (block.timestamp * brushPerSecond) - (startTime * brushPerSecond):
            revert with 0, 18
        if (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / (block.timestamp * brushPerSecond) - (startTime * brushPerSecond) != poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (startTime * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.timestamp - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp - poolInfo[arg1].field_512 and brushPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 18
    if (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond) / block.timestamp - poolInfo[arg1].field_512 != brushPerSecond:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond):
        revert with 0, 17
    if not (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond):
        revert with 0, 18
    if (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero', 0
    if not (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 18
    if 10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return -userInfo[arg1][address(arg2)].field_256
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if not userInfo[arg1][address(arg2)].field_0:
        revert with 0, 18
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}



}
