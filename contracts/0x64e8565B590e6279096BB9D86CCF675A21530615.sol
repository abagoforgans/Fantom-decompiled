contract main {




// =====================  Runtime code  =====================


#
#  - leaveStaking(uint256 arg1)
#  - enterStaking(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
const sub_5f6778f7(?) = 2 * 10^18

const BONUS_MULTIPLIER = 1


address owner;
address sub_39c35ca9Address;
address dev_address;
uint256 sub_4359d3cb;
address feeAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
mapping of uint8 stor10;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of uint16 stor111414077815863400510004064629973595961579173665589224203503662149373724986691;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_39c35ca9(?) payable {
    return sub_39c35ca9Address
}

function feeAddress() payable {
    return feeAddress
}

function sub_4359d3cb(?) payable {
    return sub_4359d3cb
}

function startTime() payable {
    return startTime
}

function dev_address() payable {
    return dev_address
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
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
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not arg2 - arg1:
        return 0
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0, 'SafeMath: multiplication overflow'
    return (arg2 - arg1)
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if dev_address != msg.sender:
        revert with 0, 'setDev_Address: FORBIDDEN'
    if not arg1:
        revert with 0, 'setDev_Address: ZERO'
    dev_address = arg1
    emit Setdev_address(msg.sender, arg1);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setFeeAddress: ZERO'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
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

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not block.timestamp - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(sub_39c35ca9Address)
                    call sub_39c35ca9Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args dev_address, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(sub_39c35ca9Address)
                    call sub_39c35ca9Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.timestamp - poolInfo[arg1].field_512 / block.timestamp - poolInfo[arg1].field_512 != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not block.timestamp - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(sub_39c35ca9Address)
                        call sub_39c35ca9Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args dev_address, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(sub_39c35ca9Address)
                        call sub_39c35ca9Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * sub_4359d3cb) - (poolInfo[arg1].field_512 * sub_4359d3cb) / block.timestamp - poolInfo[arg1].field_512 != sub_4359d3cb:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * sub_4359d3cb) - (poolInfo[arg1].field_512 * sub_4359d3cb):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_39c35ca9Address)
                            call sub_39c35ca9Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args dev_address, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(sub_39c35ca9Address)
                            call sub_39c35ca9Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / (block.timestamp * sub_4359d3cb) - (poolInfo[arg1].field_512 * sub_4359d3cb) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_39c35ca9Address)
                            call sub_39c35ca9Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args dev_address, (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(sub_39c35ca9Address)
                            call sub_39c35ca9Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if (10^12 * (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function sub_0e231622(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.timestamp - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp - poolInfo[arg1].field_512 / block.timestamp - poolInfo[arg1].field_512 != 1:
        revert with 0, 'SafeMath: multiplication overflow'
    if not block.timestamp - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * sub_4359d3cb) - (poolInfo[arg1].field_512 * sub_4359d3cb) / block.timestamp - poolInfo[arg1].field_512 != sub_4359d3cb:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.timestamp * sub_4359d3cb) - (poolInfo[arg1].field_512 * sub_4359d3cb):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / (block.timestamp * sub_4359d3cb) - (poolInfo[arg1].field_512 * sub_4359d3cb) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero', 0
    if not (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if (10^12 * (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (((10^12 * (block.timestamp * sub_4359d3cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4359d3cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _153 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _154 = mem[_153]
        if not mem[_153]:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _155 = mem[64]
        mem[64] = mem[64] + 64
        mem[_155] = 30
        mem[_155 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            _156 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _156 + 68] = mem[idx + _155 + 32]
                idx = idx + 32
                continue 
            mem[_156 + 98] = 0
            revert with memory
              from mem[64]
               len _156 + -mem[64] + 100
        if not block.timestamp - poolInfo[idx].field_512:
            _165 = mem[64]
            mem[64] = mem[64] + 64
            mem[_165] = 26
            mem[_165 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _169 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _169 + 68] = mem[idx + _165 + 32]
                    idx = idx + 32
                    continue 
                mem[_169 + 94] = 0
                revert with memory
                  from mem[64]
                   len _169 + -mem[64] + 100
            _179 = mem[64]
            mem[64] = mem[64] + 64
            mem[_179] = 26
            mem[_179 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args dev_address, 0 / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _202 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_202] == bool(mem[_202])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _218 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_218] == bool(mem[_218])
            if not 0 / totalAllocPoint:
                _229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_229] = 26
                mem[_229 + 32] = 'SafeMath: division by zero'
                if _154:
                    if (0 / _154) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _154
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _238 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _238 + 68] = mem[idx + _229 + 32]
                    idx = idx + 32
                    continue 
                mem[_238 + 94] = 0
                revert with memory
                  from mem[64]
                   len _238 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _232 = mem[64]
            mem[64] = mem[64] + 64
            mem[_232] = 26
            mem[_232 + 32] = 'SafeMath: division by zero'
            if _154:
                if (10^12 * 0 / totalAllocPoint / _154) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _154
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _243 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _243 + 68] = mem[idx + _232 + 32]
                idx = idx + 32
                continue 
            mem[_243 + 94] = 0
            revert with memory
              from mem[64]
               len _243 + -mem[64] + 100
        if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not block.timestamp - poolInfo[idx].field_512:
            _167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_167] = 26
            mem[_167 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _172 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _172 + 68] = mem[idx + _167 + 32]
                    idx = idx + 32
                    continue 
                mem[_172 + 94] = 0
                revert with memory
                  from mem[64]
                   len _172 + -mem[64] + 100
            _181 = mem[64]
            mem[64] = mem[64] + 64
            mem[_181] = 26
            mem[_181 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args dev_address, 0 / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_204] == bool(mem[_204])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_220] == bool(mem[_220])
            if not 0 / totalAllocPoint:
                _231 = mem[64]
                mem[64] = mem[64] + 64
                mem[_231] = 26
                mem[_231 + 32] = 'SafeMath: division by zero'
                if _154:
                    if (0 / _154) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _154
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _242 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _242 + 68] = mem[idx + _231 + 32]
                    idx = idx + 32
                    continue 
                mem[_242 + 94] = 0
                revert with memory
                  from mem[64]
                   len _242 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _236 = mem[64]
            mem[64] = mem[64] + 64
            mem[_236] = 26
            mem[_236 + 32] = 'SafeMath: division by zero'
            if _154:
                if (10^12 * 0 / totalAllocPoint / _154) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _154
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _248 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _248 + 68] = mem[idx + _236 + 32]
                idx = idx + 32
                continue 
            mem[_248 + 94] = 0
            revert with memory
              from mem[64]
               len _248 + -mem[64] + 100
        if (block.timestamp * sub_4359d3cb) - (poolInfo[idx].field_512 * sub_4359d3cb) / block.timestamp - poolInfo[idx].field_512 != sub_4359d3cb:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * sub_4359d3cb) - (poolInfo[idx].field_512 * sub_4359d3cb):
            _168 = mem[64]
            mem[64] = mem[64] + 64
            mem[_168] = 26
            mem[_168 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _174 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _174 + 68] = mem[idx + _168 + 32]
                    idx = idx + 32
                    continue 
                mem[_174 + 94] = 0
                revert with memory
                  from mem[64]
                   len _174 + -mem[64] + 100
            _183 = mem[64]
            mem[64] = mem[64] + 64
            mem[_183] = 26
            mem[_183 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args dev_address, 0 / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_205] == bool(mem[_205])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_221] == bool(mem[_221])
            if not 0 / totalAllocPoint:
                _235 = mem[64]
                mem[64] = mem[64] + 64
                mem[_235] = 26
                mem[_235 + 32] = 'SafeMath: division by zero'
                if _154:
                    if (0 / _154) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _154
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _247 + 68] = mem[idx + _235 + 32]
                    idx = idx + 32
                    continue 
                mem[_247 + 94] = 0
                revert with memory
                  from mem[64]
                   len _247 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _240 = mem[64]
            mem[64] = mem[64] + 64
            mem[_240] = 26
            mem[_240 + 32] = 'SafeMath: division by zero'
            if _154:
                if (10^12 * 0 / totalAllocPoint / _154) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _154
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _252 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _252 + 68] = mem[idx + _240 + 32]
                idx = idx + 32
                continue 
            mem[_252 + 94] = 0
            revert with memory
              from mem[64]
               len _252 + -mem[64] + 100
        if (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / (block.timestamp * sub_4359d3cb) - (poolInfo[idx].field_512 * sub_4359d3cb) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _170 = mem[64]
        mem[64] = mem[64] + 64
        mem[_170] = 26
        mem[_170 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _176 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _176 + 68] = mem[idx + _170 + 32]
                idx = idx + 32
                continue 
            mem[_176 + 94] = 0
            revert with memory
              from mem[64]
               len _176 + -mem[64] + 100
        _185 = mem[64]
        mem[64] = mem[64] + 64
        mem[_185] = 26
        mem[_185 + 32] = 'SafeMath: division by zero'
        mem[mem[64] + 4] = dev_address
        mem[mem[64] + 36] = (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / 10
        require ext_code.size(sub_39c35ca9Address)
        call sub_39c35ca9Address.0x40c10f19 with:
             gas gas_remaining wei
            args dev_address, (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / 10
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _207 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_207] == bool(mem[_207])
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_39c35ca9Address)
        call sub_39c35ca9Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_223] == bool(mem[_223])
        if not (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint:
            _239 = mem[64]
            mem[64] = mem[64] + 64
            mem[_239] = 26
            mem[_239 + 32] = 'SafeMath: division by zero'
            if _154:
                if (0 / _154) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / _154
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _251 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _251 + 68] = mem[idx + _239 + 32]
                idx = idx + 32
                continue 
            mem[_251 + 94] = 0
            revert with memory
              from mem[64]
               len _251 + -mem[64] + 100
        if 10^12 * (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _245 = mem[64]
        mem[64] = mem[64] + 64
        mem[_245] = 26
        mem[_245 + 32] = 'SafeMath: division by zero'
        if _154:
            if (10^12 * (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / _154) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / _154
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _255 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _255 + 68] = mem[idx + _245 + 32]
            idx = idx + 32
            continue 
        mem[_255 + 94] = 0
        revert with memory
          from mem[64]
           len _255 + -mem[64] + 100
}

function sub_150a5a6f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setKUZOPerSecond: you are stupid? max 2!'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _157 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _158 = mem[_157]
        if not mem[_157]:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _159 = mem[64]
        mem[64] = mem[64] + 64
        mem[_159] = 30
        mem[_159 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            _160 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _160 + 68] = mem[idx + _159 + 32]
                idx = idx + 32
                continue 
            mem[_160 + 98] = 0
            revert with memory
              from mem[64]
               len _160 + -mem[64] + 100
        if not block.timestamp - poolInfo[idx].field_512:
            _169 = mem[64]
            mem[64] = mem[64] + 64
            mem[_169] = 26
            mem[_169 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _173 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _173 + 68] = mem[idx + _169 + 32]
                    idx = idx + 32
                    continue 
                mem[_173 + 94] = 0
                revert with memory
                  from mem[64]
                   len _173 + -mem[64] + 100
            _183 = mem[64]
            mem[64] = mem[64] + 64
            mem[_183] = 26
            mem[_183 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args dev_address, 0 / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_206] == bool(mem[_206])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _222 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_222] == bool(mem[_222])
            if not 0 / totalAllocPoint:
                _233 = mem[64]
                mem[64] = mem[64] + 64
                mem[_233] = 26
                mem[_233 + 32] = 'SafeMath: division by zero'
                if _158:
                    if (0 / _158) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _158
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _242 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _242 + 68] = mem[idx + _233 + 32]
                    idx = idx + 32
                    continue 
                mem[_242 + 94] = 0
                revert with memory
                  from mem[64]
                   len _242 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _236 = mem[64]
            mem[64] = mem[64] + 64
            mem[_236] = 26
            mem[_236 + 32] = 'SafeMath: division by zero'
            if _158:
                if (10^12 * 0 / totalAllocPoint / _158) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _158
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _247 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _247 + 68] = mem[idx + _236 + 32]
                idx = idx + 32
                continue 
            mem[_247 + 94] = 0
            revert with memory
              from mem[64]
               len _247 + -mem[64] + 100
        if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not block.timestamp - poolInfo[idx].field_512:
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 26
            mem[_171 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _176 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _176 + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
                mem[_176 + 94] = 0
                revert with memory
                  from mem[64]
                   len _176 + -mem[64] + 100
            _185 = mem[64]
            mem[64] = mem[64] + 64
            mem[_185] = 26
            mem[_185 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args dev_address, 0 / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _208 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_208] == bool(mem[_208])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_224] == bool(mem[_224])
            if not 0 / totalAllocPoint:
                _235 = mem[64]
                mem[64] = mem[64] + 64
                mem[_235] = 26
                mem[_235 + 32] = 'SafeMath: division by zero'
                if _158:
                    if (0 / _158) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _158
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _246 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _246 + 68] = mem[idx + _235 + 32]
                    idx = idx + 32
                    continue 
                mem[_246 + 94] = 0
                revert with memory
                  from mem[64]
                   len _246 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _240 = mem[64]
            mem[64] = mem[64] + 64
            mem[_240] = 26
            mem[_240 + 32] = 'SafeMath: division by zero'
            if _158:
                if (10^12 * 0 / totalAllocPoint / _158) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _158
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _252 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _252 + 68] = mem[idx + _240 + 32]
                idx = idx + 32
                continue 
            mem[_252 + 94] = 0
            revert with memory
              from mem[64]
               len _252 + -mem[64] + 100
        if (block.timestamp * sub_4359d3cb) - (poolInfo[idx].field_512 * sub_4359d3cb) / block.timestamp - poolInfo[idx].field_512 != sub_4359d3cb:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * sub_4359d3cb) - (poolInfo[idx].field_512 * sub_4359d3cb):
            _172 = mem[64]
            mem[64] = mem[64] + 64
            mem[_172] = 26
            mem[_172 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _178 + 68] = mem[idx + _172 + 32]
                    idx = idx + 32
                    continue 
                mem[_178 + 94] = 0
                revert with memory
                  from mem[64]
                   len _178 + -mem[64] + 100
            _187 = mem[64]
            mem[64] = mem[64] + 64
            mem[_187] = 26
            mem[_187 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args dev_address, 0 / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_209] == bool(mem[_209])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_225] == bool(mem[_225])
            if not 0 / totalAllocPoint:
                _239 = mem[64]
                mem[64] = mem[64] + 64
                mem[_239] = 26
                mem[_239 + 32] = 'SafeMath: division by zero'
                if _158:
                    if (0 / _158) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _158
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _251 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _251 + 68] = mem[idx + _239 + 32]
                    idx = idx + 32
                    continue 
                mem[_251 + 94] = 0
                revert with memory
                  from mem[64]
                   len _251 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _244 = mem[64]
            mem[64] = mem[64] + 64
            mem[_244] = 26
            mem[_244 + 32] = 'SafeMath: division by zero'
            if _158:
                if (10^12 * 0 / totalAllocPoint / _158) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _158
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _256 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _256 + 68] = mem[idx + _244 + 32]
                idx = idx + 32
                continue 
            mem[_256 + 94] = 0
            revert with memory
              from mem[64]
               len _256 + -mem[64] + 100
        if (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / (block.timestamp * sub_4359d3cb) - (poolInfo[idx].field_512 * sub_4359d3cb) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _174 = mem[64]
        mem[64] = mem[64] + 64
        mem[_174] = 26
        mem[_174 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _180 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _180 + 68] = mem[idx + _174 + 32]
                idx = idx + 32
                continue 
            mem[_180 + 94] = 0
            revert with memory
              from mem[64]
               len _180 + -mem[64] + 100
        _189 = mem[64]
        mem[64] = mem[64] + 64
        mem[_189] = 26
        mem[_189 + 32] = 'SafeMath: division by zero'
        mem[mem[64] + 4] = dev_address
        mem[mem[64] + 36] = (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / 10
        require ext_code.size(sub_39c35ca9Address)
        call sub_39c35ca9Address.0x40c10f19 with:
             gas gas_remaining wei
            args dev_address, (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / 10
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_211] == bool(mem[_211])
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_39c35ca9Address)
        call sub_39c35ca9Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _227 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_227] == bool(mem[_227])
        if not (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint:
            _243 = mem[64]
            mem[64] = mem[64] + 64
            mem[_243] = 26
            mem[_243 + 32] = 'SafeMath: division by zero'
            if _158:
                if (0 / _158) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / _158
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _255 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _255 + 68] = mem[idx + _243 + 32]
                idx = idx + 32
                continue 
            mem[_255 + 94] = 0
            revert with memory
              from mem[64]
               len _255 + -mem[64] + 100
        if 10^12 * (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _249 = mem[64]
        mem[64] = mem[64] + 64
        mem[_249] = 26
        mem[_249 + 32] = 'SafeMath: division by zero'
        if _158:
            if (10^12 * (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / _158) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / _158
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _259 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _259 + 68] = mem[idx + _249 + 32]
            idx = idx + 32
            continue 
        mem[_259 + 94] = 0
        revert with memory
          from mem[64]
           len _259 + -mem[64] + 100
    sub_4359d3cb = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: invalid deposit fee basis points'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.timestamp <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _186 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _189 = mem[_186]
            if not mem[_186]:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _195 = mem[64]
            mem[64] = mem[64] + 64
            mem[_195] = 30
            mem[_195 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                _196 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _196 + 68] = mem[idx + _195 + 32]
                    idx = idx + 32
                    continue 
                mem[_196 + 98] = 0
                revert with memory
                  from mem[64]
                   len _196 + -mem[64] + 100
            if not block.timestamp - poolInfo[idx].field_512:
                _205 = mem[64]
                mem[64] = mem[64] + 64
                mem[_205] = 26
                mem[_205 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _209 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _209 + 68] = mem[idx + _205 + 32]
                        idx = idx + 32
                        continue 
                    mem[_209 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _209 + -mem[64] + 100
                _219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_219] = 26
                mem[_219 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = dev_address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_39c35ca9Address)
                call sub_39c35ca9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args dev_address, 0 / totalAllocPoint / 10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _242 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_242] == bool(mem[_242])
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_39c35ca9Address)
                call sub_39c35ca9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _258 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_258] == bool(mem[_258])
                if not 0 / totalAllocPoint:
                    _269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_269] = 26
                    mem[_269 + 32] = 'SafeMath: division by zero'
                    if _189:
                        if (0 / _189) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _189
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _278 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _278 + 68] = mem[idx + _269 + 32]
                        idx = idx + 32
                        continue 
                    mem[_278 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _278 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_272] = 26
                mem[_272 + 32] = 'SafeMath: division by zero'
                if _189:
                    if (10^12 * 0 / totalAllocPoint / _189) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _189
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _283 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _283 + 68] = mem[idx + _272 + 32]
                    idx = idx + 32
                    continue 
                mem[_283 + 94] = 0
                revert with memory
                  from mem[64]
                   len _283 + -mem[64] + 100
            if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_207] = 26
                mem[_207 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _212 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _212 + 68] = mem[idx + _207 + 32]
                        idx = idx + 32
                        continue 
                    mem[_212 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _212 + -mem[64] + 100
                _221 = mem[64]
                mem[64] = mem[64] + 64
                mem[_221] = 26
                mem[_221 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = dev_address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_39c35ca9Address)
                call sub_39c35ca9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args dev_address, 0 / totalAllocPoint / 10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _244 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_244] == bool(mem[_244])
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_39c35ca9Address)
                call sub_39c35ca9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_260] == bool(mem[_260])
                if not 0 / totalAllocPoint:
                    _271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_271] = 26
                    mem[_271 + 32] = 'SafeMath: division by zero'
                    if _189:
                        if (0 / _189) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _189
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _282 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _282 + 68] = mem[idx + _271 + 32]
                        idx = idx + 32
                        continue 
                    mem[_282 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _282 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _276 = mem[64]
                mem[64] = mem[64] + 64
                mem[_276] = 26
                mem[_276 + 32] = 'SafeMath: division by zero'
                if _189:
                    if (10^12 * 0 / totalAllocPoint / _189) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _189
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _288 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _288 + 68] = mem[idx + _276 + 32]
                    idx = idx + 32
                    continue 
                mem[_288 + 94] = 0
                revert with memory
                  from mem[64]
                   len _288 + -mem[64] + 100
            if (block.timestamp * sub_4359d3cb) - (poolInfo[idx].field_512 * sub_4359d3cb) / block.timestamp - poolInfo[idx].field_512 != sub_4359d3cb:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * sub_4359d3cb) - (poolInfo[idx].field_512 * sub_4359d3cb):
                _208 = mem[64]
                mem[64] = mem[64] + 64
                mem[_208] = 26
                mem[_208 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _214 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _214 + 68] = mem[idx + _208 + 32]
                        idx = idx + 32
                        continue 
                    mem[_214 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _214 + -mem[64] + 100
                _223 = mem[64]
                mem[64] = mem[64] + 64
                mem[_223] = 26
                mem[_223 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = dev_address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_39c35ca9Address)
                call sub_39c35ca9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args dev_address, 0 / totalAllocPoint / 10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _245 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_245] == bool(mem[_245])
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_39c35ca9Address)
                call sub_39c35ca9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _261 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_261] == bool(mem[_261])
                if not 0 / totalAllocPoint:
                    _275 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_275] = 26
                    mem[_275 + 32] = 'SafeMath: division by zero'
                    if _189:
                        if (0 / _189) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _189
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _287 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _287 + 68] = mem[idx + _275 + 32]
                        idx = idx + 32
                        continue 
                    mem[_287 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _287 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _280 = mem[64]
                mem[64] = mem[64] + 64
                mem[_280] = 26
                mem[_280 + 32] = 'SafeMath: division by zero'
                if _189:
                    if (10^12 * 0 / totalAllocPoint / _189) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _189
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _292 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _292 + 68] = mem[idx + _280 + 32]
                    idx = idx + 32
                    continue 
                mem[_292 + 94] = 0
                revert with memory
                  from mem[64]
                   len _292 + -mem[64] + 100
            if (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / (block.timestamp * sub_4359d3cb) - (poolInfo[idx].field_512 * sub_4359d3cb) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_210] = 26
            mem[_210 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _216 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _216 + 68] = mem[idx + _210 + 32]
                    idx = idx + 32
                    continue 
                mem[_216 + 94] = 0
                revert with memory
                  from mem[64]
                   len _216 + -mem[64] + 100
            _225 = mem[64]
            mem[64] = mem[64] + 64
            mem[_225] = 26
            mem[_225 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / 10
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args dev_address, (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _247 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_247] == bool(mem[_247])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_263] == bool(mem[_263])
            if not (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint:
                _279 = mem[64]
                mem[64] = mem[64] + 64
                mem[_279] = 26
                mem[_279 + 32] = 'SafeMath: division by zero'
                if _189:
                    if (0 / _189) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _189
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _291 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _291 + 68] = mem[idx + _279 + 32]
                    idx = idx + 32
                    continue 
                mem[_291 + 94] = 0
                revert with memory
                  from mem[64]
                   len _291 + -mem[64] + 100
            if 10^12 * (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _285 = mem[64]
            mem[64] = mem[64] + 64
            mem[_285] = 26
            mem[_285 + 32] = 'SafeMath: division by zero'
            if _189:
                if (10^12 * (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / _189) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / _189
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _295 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _295 + 68] = mem[idx + _285 + 32]
                idx = idx + 32
                continue 
            mem[_295 + 94] = 0
            revert with memory
              from mem[64]
               len _295 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 10
    if stor10[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: invalid deposit fee basis points'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.timestamp <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _214 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _215 = mem[_214]
            if not mem[_214]:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _216 = mem[64]
            mem[64] = mem[64] + 64
            mem[_216] = 30
            mem[_216 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                _217 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _217 + 68] = mem[idx + _216 + 32]
                    idx = idx + 32
                    continue 
                mem[_217 + 98] = 0
                revert with memory
                  from mem[64]
                   len _217 + -mem[64] + 100
            if not block.timestamp - poolInfo[idx].field_512:
                _226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_226] = 26
                mem[_226 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _230 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _230 + 68] = mem[idx + _226 + 32]
                        idx = idx + 32
                        continue 
                    mem[_230 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _230 + -mem[64] + 100
                _240 = mem[64]
                mem[64] = mem[64] + 64
                mem[_240] = 26
                mem[_240 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = dev_address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_39c35ca9Address)
                call sub_39c35ca9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args dev_address, 0 / totalAllocPoint / 10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _263 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_263] == bool(mem[_263])
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_39c35ca9Address)
                call sub_39c35ca9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _279 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_279] == bool(mem[_279])
                if not 0 / totalAllocPoint:
                    _290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_290] = 26
                    mem[_290 + 32] = 'SafeMath: division by zero'
                    if _215:
                        if (0 / _215) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _215
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _299 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _299 + 68] = mem[idx + _290 + 32]
                        idx = idx + 32
                        continue 
                    mem[_299 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _299 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _293 = mem[64]
                mem[64] = mem[64] + 64
                mem[_293] = 26
                mem[_293 + 32] = 'SafeMath: division by zero'
                if _215:
                    if (10^12 * 0 / totalAllocPoint / _215) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _215
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _304 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _304 + 68] = mem[idx + _293 + 32]
                    idx = idx + 32
                    continue 
                mem[_304 + 94] = 0
                revert with memory
                  from mem[64]
                   len _304 + -mem[64] + 100
            if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_228] = 26
                mem[_228 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _233 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _233 + 68] = mem[idx + _228 + 32]
                        idx = idx + 32
                        continue 
                    mem[_233 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _233 + -mem[64] + 100
                _242 = mem[64]
                mem[64] = mem[64] + 64
                mem[_242] = 26
                mem[_242 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = dev_address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_39c35ca9Address)
                call sub_39c35ca9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args dev_address, 0 / totalAllocPoint / 10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _265 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_265] == bool(mem[_265])
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_39c35ca9Address)
                call sub_39c35ca9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _281 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_281] == bool(mem[_281])
                if not 0 / totalAllocPoint:
                    _292 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_292] = 26
                    mem[_292 + 32] = 'SafeMath: division by zero'
                    if _215:
                        if (0 / _215) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _215
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _303 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _303 + 68] = mem[idx + _292 + 32]
                        idx = idx + 32
                        continue 
                    mem[_303 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _303 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _297 = mem[64]
                mem[64] = mem[64] + 64
                mem[_297] = 26
                mem[_297 + 32] = 'SafeMath: division by zero'
                if _215:
                    if (10^12 * 0 / totalAllocPoint / _215) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _215
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _309 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _309 + 68] = mem[idx + _297 + 32]
                    idx = idx + 32
                    continue 
                mem[_309 + 94] = 0
                revert with memory
                  from mem[64]
                   len _309 + -mem[64] + 100
            if (block.timestamp * sub_4359d3cb) - (poolInfo[idx].field_512 * sub_4359d3cb) / block.timestamp - poolInfo[idx].field_512 != sub_4359d3cb:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * sub_4359d3cb) - (poolInfo[idx].field_512 * sub_4359d3cb):
                _229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_229] = 26
                mem[_229 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _235 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _235 + 68] = mem[idx + _229 + 32]
                        idx = idx + 32
                        continue 
                    mem[_235 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _235 + -mem[64] + 100
                _244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_244] = 26
                mem[_244 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = dev_address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_39c35ca9Address)
                call sub_39c35ca9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args dev_address, 0 / totalAllocPoint / 10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_266] == bool(mem[_266])
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_39c35ca9Address)
                call sub_39c35ca9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _282 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_282] == bool(mem[_282])
                if not 0 / totalAllocPoint:
                    _296 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_296] = 26
                    mem[_296 + 32] = 'SafeMath: division by zero'
                    if _215:
                        if (0 / _215) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _215
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _308 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _308 + 68] = mem[idx + _296 + 32]
                        idx = idx + 32
                        continue 
                    mem[_308 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _308 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _301 = mem[64]
                mem[64] = mem[64] + 64
                mem[_301] = 26
                mem[_301 + 32] = 'SafeMath: division by zero'
                if _215:
                    if (10^12 * 0 / totalAllocPoint / _215) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _215
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _313 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _313 + 68] = mem[idx + _301 + 32]
                    idx = idx + 32
                    continue 
                mem[_313 + 94] = 0
                revert with memory
                  from mem[64]
                   len _313 + -mem[64] + 100
            if (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / (block.timestamp * sub_4359d3cb) - (poolInfo[idx].field_512 * sub_4359d3cb) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _231 = mem[64]
            mem[64] = mem[64] + 64
            mem[_231] = 26
            mem[_231 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _237 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _237 + 68] = mem[idx + _231 + 32]
                    idx = idx + 32
                    continue 
                mem[_237 + 94] = 0
                revert with memory
                  from mem[64]
                   len _237 + -mem[64] + 100
            _246 = mem[64]
            mem[64] = mem[64] + 64
            mem[_246] = 26
            mem[_246 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / 10
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args dev_address, (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_268] == bool(mem[_268])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_39c35ca9Address)
            call sub_39c35ca9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _284 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_284] == bool(mem[_284])
            if not (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint:
                _300 = mem[64]
                mem[64] = mem[64] + 64
                mem[_300] = 26
                mem[_300 + 32] = 'SafeMath: division by zero'
                if _215:
                    if (0 / _215) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _215
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _312 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _312 + 68] = mem[idx + _300 + 32]
                    idx = idx + 32
                    continue 
                mem[_312 + 94] = 0
                revert with memory
                  from mem[64]
                   len _312 + -mem[64] + 100
            if 10^12 * (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _306 = mem[64]
            mem[64] = mem[64] + 64
            mem[_306] = 26
            mem[_306 + 32] = 'SafeMath: division by zero'
            if _215:
                if (10^12 * (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / _215) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_4359d3cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4359d3cb * poolInfo[idx].field_256) / totalAllocPoint / _215
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _316 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _316 + 68] = mem[idx + _306 + 32]
                idx = idx + 32
                continue 
            mem[_316 + 94] = 0
            revert with memory
              from mem[64]
               len _316 + -mem[64] + 100
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor10[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF652[stor6.length] = arg1
    if block.timestamp > startTime:
        storF652[stor6.length] = block.timestamp
    else:
        storF652[stor6.length] = startTime
    storF652[stor6.length] = 0
    storF652[stor6.length] = arg3
}



}
