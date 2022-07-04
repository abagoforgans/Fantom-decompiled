contract main {




// =====================  Runtime code  =====================


#
#  - leaveStaking(uint256 arg1)
#  - enterStaking(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
const sub_b6df7739(?) = 2 * 10^18

const BONUS_MULTIPLIER = 1


address owner;
address sub_11db8392Address;
address dev_address;
uint256 sub_fe1e26b2;
address feeAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
mapping of uint8 stor10;

function poolLength() payable {
    return poolInfo.length
}

function sub_11db8392(?) payable {
    return sub_11db8392Address
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function feeAddress() payable {
    return feeAddress
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
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function sub_fe1e26b2(?) payable {
    return sub_fe1e26b2
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not arg2 - arg1:
        return 0
    require arg2 - arg1
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0, 'SafeMath: multiplication overflow'
    return (arg2 - arg1)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not block.timestamp - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require totalAllocPoint
                    require ext_code.size(sub_11db8392Address)
                    call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args dev_address, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(sub_11db8392Address)
                    call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.timestamp - poolInfo[arg1].field_512
                    if block.timestamp - poolInfo[arg1].field_512 / block.timestamp - poolInfo[arg1].field_512 != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not block.timestamp - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require totalAllocPoint
                        require ext_code.size(sub_11db8392Address)
                        call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args dev_address, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(sub_11db8392Address)
                        call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.timestamp - poolInfo[arg1].field_512
                        if (block.timestamp * sub_fe1e26b2) - (poolInfo[arg1].field_512 * sub_fe1e26b2) / block.timestamp - poolInfo[arg1].field_512 != sub_fe1e26b2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * sub_fe1e26b2) - (poolInfo[arg1].field_512 * sub_fe1e26b2):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require totalAllocPoint
                            require ext_code.size(sub_11db8392Address)
                            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args dev_address, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(sub_11db8392Address)
                            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.timestamp * sub_fe1e26b2) - (poolInfo[arg1].field_512 * sub_fe1e26b2)
                            if (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / (block.timestamp * sub_fe1e26b2) - (poolInfo[arg1].field_512 * sub_fe1e26b2) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require totalAllocPoint
                            require ext_code.size(sub_11db8392Address)
                            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args dev_address, (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(sub_11db8392Address)
                            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function sub_2b3847fc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.timestamp - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.timestamp - poolInfo[arg1].field_512
    if block.timestamp - poolInfo[arg1].field_512 / block.timestamp - poolInfo[arg1].field_512 != 1:
        revert with 0, 'SafeMath: multiplication overflow'
    if not block.timestamp - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.timestamp - poolInfo[arg1].field_512
    if (block.timestamp * sub_fe1e26b2) - (poolInfo[arg1].field_512 * sub_fe1e26b2) / block.timestamp - poolInfo[arg1].field_512 != sub_fe1e26b2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.timestamp * sub_fe1e26b2) - (poolInfo[arg1].field_512 * sub_fe1e26b2):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.timestamp * sub_fe1e26b2) - (poolInfo[arg1].field_512 * sub_fe1e26b2)
    if (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / (block.timestamp * sub_fe1e26b2) - (poolInfo[arg1].field_512 * sub_fe1e26b2) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require totalAllocPoint
    if not (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fe1e26b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        require mem[_153] == mem[_153]
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
                mem[_156 + idx + 68] = mem[_155 + idx + 32]
                idx = idx + 32
                continue 
            mem[_156 + 98] = 0
            revert with memory
              from mem[64]
               len _156 + -mem[64] + 100
        if not block.timestamp - poolInfo[idx].field_512:
            _163 = mem[64]
            mem[64] = mem[64] + 64
            mem[_163] = 26
            mem[_163 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _166 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_166 + idx + 68] = mem[_163 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_166 + 94] = 0
                revert with memory
                  from mem[64]
                   len _166 + -mem[64] + 100
            require totalAllocPoint
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 26
            mem[_174 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args dev_address, 0 / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _201 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_201] == bool(mem[_201])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _217 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_217] == bool(mem[_217])
            if not 0 / totalAllocPoint:
                _228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_228] = 26
                mem[_228 + 32] = 'SafeMath: division by zero'
                if _154 > 0:
                    require _154
                    if poolInfo[idx].field_768 + (0 / _154) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _154
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _232 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_232 + idx + 68] = mem[_228 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_232 + 94] = 0
                revert with memory
                  from mem[64]
                   len _232 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _231 = mem[64]
            mem[64] = mem[64] + 64
            mem[_231] = 26
            mem[_231 + 32] = 'SafeMath: division by zero'
            if _154 > 0:
                require _154
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _154) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _154
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _237 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_237 + idx + 68] = mem[_231 + idx + 32]
                idx = idx + 32
                continue 
            mem[_237 + 94] = 0
            revert with memory
              from mem[64]
               len _237 + -mem[64] + 100
        require block.timestamp - poolInfo[idx].field_512
        if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not block.timestamp - poolInfo[idx].field_512:
            _165 = mem[64]
            mem[64] = mem[64] + 64
            mem[_165] = 26
            mem[_165 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _170 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_170 + idx + 68] = mem[_165 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_170 + 94] = 0
                revert with memory
                  from mem[64]
                   len _170 + -mem[64] + 100
            require totalAllocPoint
            _177 = mem[64]
            mem[64] = mem[64] + 64
            mem[_177] = 26
            mem[_177 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args dev_address, 0 / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_203] == bool(mem[_203])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _219 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_219] == bool(mem[_219])
            if not 0 / totalAllocPoint:
                _230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_230] = 26
                mem[_230 + 32] = 'SafeMath: division by zero'
                if _154 > 0:
                    require _154
                    if poolInfo[idx].field_768 + (0 / _154) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _154
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _236 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_236 + idx + 68] = mem[_230 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_236 + 94] = 0
                revert with memory
                  from mem[64]
                   len _236 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _235 = mem[64]
            mem[64] = mem[64] + 64
            mem[_235] = 26
            mem[_235 + 32] = 'SafeMath: division by zero'
            if _154 > 0:
                require _154
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _154) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _154
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _244 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_244 + idx + 68] = mem[_235 + idx + 32]
                idx = idx + 32
                continue 
            mem[_244 + 94] = 0
            revert with memory
              from mem[64]
               len _244 + -mem[64] + 100
        require block.timestamp - poolInfo[idx].field_512
        if (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2) / block.timestamp - poolInfo[idx].field_512 != sub_fe1e26b2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2):
            _169 = mem[64]
            mem[64] = mem[64] + 64
            mem[_169] = 26
            mem[_169 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _173 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_173 + idx + 68] = mem[_169 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_173 + 94] = 0
                revert with memory
                  from mem[64]
                   len _173 + -mem[64] + 100
            require totalAllocPoint
            _180 = mem[64]
            mem[64] = mem[64] + 64
            mem[_180] = 26
            mem[_180 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
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
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
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
                _234 = mem[64]
                mem[64] = mem[64] + 64
                mem[_234] = 26
                mem[_234 + 32] = 'SafeMath: division by zero'
                if _154 > 0:
                    require _154
                    if poolInfo[idx].field_768 + (0 / _154) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _154
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _243 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_243 + idx + 68] = mem[_234 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_243 + 94] = 0
                revert with memory
                  from mem[64]
                   len _243 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _242 = mem[64]
            mem[64] = mem[64] + 64
            mem[_242] = 26
            mem[_242 + 32] = 'SafeMath: division by zero'
            if _154 > 0:
                require _154
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _154) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _154
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _251 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_251 + idx + 68] = mem[_242 + idx + 32]
                idx = idx + 32
                continue 
            mem[_251 + 94] = 0
            revert with memory
              from mem[64]
               len _251 + -mem[64] + 100
        require (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2)
        if (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _172 = mem[64]
        mem[64] = mem[64] + 64
        mem[_172] = 26
        mem[_172 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _176 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_176 + idx + 68] = mem[_172 + idx + 32]
                idx = idx + 32
                continue 
            mem[_176 + 94] = 0
            revert with memory
              from mem[64]
               len _176 + -mem[64] + 100
        require totalAllocPoint
        _184 = mem[64]
        mem[64] = mem[64] + 64
        mem[_184] = 26
        mem[_184 + 32] = 'SafeMath: division by zero'
        mem[mem[64] + 4] = dev_address
        mem[mem[64] + 36] = (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / 10
        require ext_code.size(sub_11db8392Address)
        call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args dev_address, (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / 10
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _208 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_208] == bool(mem[_208])
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_11db8392Address)
        call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _224 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_224] == bool(mem[_224])
        if not (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint:
            _241 = mem[64]
            mem[64] = mem[64] + 64
            mem[_241] = 26
            mem[_241 + 32] = 'SafeMath: division by zero'
            if _154 > 0:
                require _154
                if poolInfo[idx].field_768 + (0 / _154) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / _154
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _250 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_250 + idx + 68] = mem[_241 + idx + 32]
                idx = idx + 32
                continue 
            mem[_250 + 94] = 0
            revert with memory
              from mem[64]
               len _250 + -mem[64] + 100
        require (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _249 = mem[64]
        mem[64] = mem[64] + 64
        mem[_249] = 26
        mem[_249 + 32] = 'SafeMath: division by zero'
        if _154 > 0:
            require _154
            if poolInfo[idx].field_768 + (10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / _154) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / _154
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _257 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_257 + idx + 68] = mem[_249 + idx + 32]
            idx = idx + 32
            continue 
        mem[_257 + 94] = 0
        revert with memory
          from mem[64]
           len _257 + -mem[64] + 100
}

function sub_42da6b9b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setDMDPerSecond: you are stupid? max 2!'
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
        require mem[_157] == mem[_157]
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
                mem[_160 + idx + 68] = mem[_159 + idx + 32]
                idx = idx + 32
                continue 
            mem[_160 + 98] = 0
            revert with memory
              from mem[64]
               len _160 + -mem[64] + 100
        if not block.timestamp - poolInfo[idx].field_512:
            _167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_167] = 26
            mem[_167 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _170 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_170 + idx + 68] = mem[_167 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_170 + 94] = 0
                revert with memory
                  from mem[64]
                   len _170 + -mem[64] + 100
            require totalAllocPoint
            _178 = mem[64]
            mem[64] = mem[64] + 64
            mem[_178] = 26
            mem[_178 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
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
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
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
                _232 = mem[64]
                mem[64] = mem[64] + 64
                mem[_232] = 26
                mem[_232 + 32] = 'SafeMath: division by zero'
                if _158 > 0:
                    require _158
                    if poolInfo[idx].field_768 + (0 / _158) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _158
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _236 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_236 + idx + 68] = mem[_232 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_236 + 94] = 0
                revert with memory
                  from mem[64]
                   len _236 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _235 = mem[64]
            mem[64] = mem[64] + 64
            mem[_235] = 26
            mem[_235 + 32] = 'SafeMath: division by zero'
            if _158 > 0:
                require _158
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _158) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _158
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _241 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_241 + idx + 68] = mem[_235 + idx + 32]
                idx = idx + 32
                continue 
            mem[_241 + 94] = 0
            revert with memory
              from mem[64]
               len _241 + -mem[64] + 100
        require block.timestamp - poolInfo[idx].field_512
        if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not block.timestamp - poolInfo[idx].field_512:
            _169 = mem[64]
            mem[64] = mem[64] + 64
            mem[_169] = 26
            mem[_169 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _174 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_174 + idx + 68] = mem[_169 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_174 + 94] = 0
                revert with memory
                  from mem[64]
                   len _174 + -mem[64] + 100
            require totalAllocPoint
            _181 = mem[64]
            mem[64] = mem[64] + 64
            mem[_181] = 26
            mem[_181 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args dev_address, 0 / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _207 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_207] == bool(mem[_207])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _223 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_223] == bool(mem[_223])
            if not 0 / totalAllocPoint:
                _234 = mem[64]
                mem[64] = mem[64] + 64
                mem[_234] = 26
                mem[_234 + 32] = 'SafeMath: division by zero'
                if _158 > 0:
                    require _158
                    if poolInfo[idx].field_768 + (0 / _158) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _158
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _240 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_240 + idx + 68] = mem[_234 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_240 + 94] = 0
                revert with memory
                  from mem[64]
                   len _240 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _239 = mem[64]
            mem[64] = mem[64] + 64
            mem[_239] = 26
            mem[_239 + 32] = 'SafeMath: division by zero'
            if _158 > 0:
                require _158
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _158) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _158
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _248 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_248 + idx + 68] = mem[_239 + idx + 32]
                idx = idx + 32
                continue 
            mem[_248 + 94] = 0
            revert with memory
              from mem[64]
               len _248 + -mem[64] + 100
        require block.timestamp - poolInfo[idx].field_512
        if (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2) / block.timestamp - poolInfo[idx].field_512 != sub_fe1e26b2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2):
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 26
            mem[_173 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _177 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_177 + idx + 68] = mem[_173 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_177 + 94] = 0
                revert with memory
                  from mem[64]
                   len _177 + -mem[64] + 100
            require totalAllocPoint
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 26
            mem[_184 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args dev_address, 0 / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_210] == bool(mem[_210])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _226 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_226] == bool(mem[_226])
            if not 0 / totalAllocPoint:
                _238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_238] = 26
                mem[_238 + 32] = 'SafeMath: division by zero'
                if _158 > 0:
                    require _158
                    if poolInfo[idx].field_768 + (0 / _158) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _158
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_247 + idx + 68] = mem[_238 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_247 + 94] = 0
                revert with memory
                  from mem[64]
                   len _247 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _246 = mem[64]
            mem[64] = mem[64] + 64
            mem[_246] = 26
            mem[_246 + 32] = 'SafeMath: division by zero'
            if _158 > 0:
                require _158
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _158) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _158
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _255 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_255 + idx + 68] = mem[_246 + idx + 32]
                idx = idx + 32
                continue 
            mem[_255 + 94] = 0
            revert with memory
              from mem[64]
               len _255 + -mem[64] + 100
        require (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2)
        if (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _176 = mem[64]
        mem[64] = mem[64] + 64
        mem[_176] = 26
        mem[_176 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _180 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_180 + idx + 68] = mem[_176 + idx + 32]
                idx = idx + 32
                continue 
            mem[_180 + 94] = 0
            revert with memory
              from mem[64]
               len _180 + -mem[64] + 100
        require totalAllocPoint
        _188 = mem[64]
        mem[64] = mem[64] + 64
        mem[_188] = 26
        mem[_188 + 32] = 'SafeMath: division by zero'
        mem[mem[64] + 4] = dev_address
        mem[mem[64] + 36] = (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / 10
        require ext_code.size(sub_11db8392Address)
        call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args dev_address, (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / 10
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _212 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_212] == bool(mem[_212])
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_11db8392Address)
        call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _228 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_228] == bool(mem[_228])
        if not (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint:
            _245 = mem[64]
            mem[64] = mem[64] + 64
            mem[_245] = 26
            mem[_245 + 32] = 'SafeMath: division by zero'
            if _158 > 0:
                require _158
                if poolInfo[idx].field_768 + (0 / _158) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / _158
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _254 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_254 + idx + 68] = mem[_245 + idx + 32]
                idx = idx + 32
                continue 
            mem[_254 + 94] = 0
            revert with memory
              from mem[64]
               len _254 + -mem[64] + 100
        require (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _253 = mem[64]
        mem[64] = mem[64] + 64
        mem[_253] = 26
        mem[_253 + 32] = 'SafeMath: division by zero'
        if _158 > 0:
            require _158
            if poolInfo[idx].field_768 + (10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / _158) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / _158
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _261 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_261 + idx + 68] = mem[_253 + idx + 32]
            idx = idx + 32
            continue 
        mem[_261 + 94] = 0
        revert with memory
          from mem[64]
           len _261 + -mem[64] + 100
    sub_fe1e26b2 = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
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
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _192 = mem[_189]
            require mem[_189] == mem[_189]
            if not mem[_189]:
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
                    mem[_196 + idx + 68] = mem[_195 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_196 + 98] = 0
                revert with memory
                  from mem[64]
                   len _196 + -mem[64] + 100
            if not block.timestamp - poolInfo[idx].field_512:
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = 26
                mem[_203 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _206 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_206 + idx + 68] = mem[_203 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_206 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _206 + -mem[64] + 100
                require totalAllocPoint
                _214 = mem[64]
                mem[64] = mem[64] + 64
                mem[_214] = 26
                mem[_214 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = dev_address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args dev_address, 0 / totalAllocPoint / 10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _241 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_241] == bool(mem[_241])
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_257] == bool(mem[_257])
                if not 0 / totalAllocPoint:
                    _268 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_268] = 26
                    mem[_268 + 32] = 'SafeMath: division by zero'
                    if _192 > 0:
                        require _192
                        if poolInfo[idx].field_768 + (0 / _192) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _192
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _272 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_272 + idx + 68] = mem[_268 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_272 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _272 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_271] = 26
                mem[_271 + 32] = 'SafeMath: division by zero'
                if _192 > 0:
                    require _192
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _192) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _192
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _277 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_277 + idx + 68] = mem[_271 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_277 + 94] = 0
                revert with memory
                  from mem[64]
                   len _277 + -mem[64] + 100
            require block.timestamp - poolInfo[idx].field_512
            if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _205 = mem[64]
                mem[64] = mem[64] + 64
                mem[_205] = 26
                mem[_205 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _210 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_210 + idx + 68] = mem[_205 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_210 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _210 + -mem[64] + 100
                require totalAllocPoint
                _217 = mem[64]
                mem[64] = mem[64] + 64
                mem[_217] = 26
                mem[_217 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = dev_address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args dev_address, 0 / totalAllocPoint / 10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _243 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_243] == bool(mem[_243])
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _259 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_259] == bool(mem[_259])
                if not 0 / totalAllocPoint:
                    _270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_270] = 26
                    mem[_270 + 32] = 'SafeMath: division by zero'
                    if _192 > 0:
                        require _192
                        if poolInfo[idx].field_768 + (0 / _192) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _192
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _276 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_276 + idx + 68] = mem[_270 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_276 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _276 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _275 = mem[64]
                mem[64] = mem[64] + 64
                mem[_275] = 26
                mem[_275 + 32] = 'SafeMath: division by zero'
                if _192 > 0:
                    require _192
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _192) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _192
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _284 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_284 + idx + 68] = mem[_275 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_284 + 94] = 0
                revert with memory
                  from mem[64]
                   len _284 + -mem[64] + 100
            require block.timestamp - poolInfo[idx].field_512
            if (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2) / block.timestamp - poolInfo[idx].field_512 != sub_fe1e26b2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2):
                _209 = mem[64]
                mem[64] = mem[64] + 64
                mem[_209] = 26
                mem[_209 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _213 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_213 + idx + 68] = mem[_209 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_213 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _213 + -mem[64] + 100
                require totalAllocPoint
                _220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_220] = 26
                mem[_220 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = dev_address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args dev_address, 0 / totalAllocPoint / 10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _246 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_246] == bool(mem[_246])
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_262] == bool(mem[_262])
                if not 0 / totalAllocPoint:
                    _274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_274] = 26
                    mem[_274 + 32] = 'SafeMath: division by zero'
                    if _192 > 0:
                        require _192
                        if poolInfo[idx].field_768 + (0 / _192) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _192
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _283 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_283 + idx + 68] = mem[_274 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_283 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _283 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _282 = mem[64]
                mem[64] = mem[64] + 64
                mem[_282] = 26
                mem[_282 + 32] = 'SafeMath: division by zero'
                if _192 > 0:
                    require _192
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _192) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _192
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _291 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_291 + idx + 68] = mem[_282 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_291 + 94] = 0
                revert with memory
                  from mem[64]
                   len _291 + -mem[64] + 100
            require (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2)
            if (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _212 = mem[64]
            mem[64] = mem[64] + 64
            mem[_212] = 26
            mem[_212 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _216 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_216 + idx + 68] = mem[_212 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_216 + 94] = 0
                revert with memory
                  from mem[64]
                   len _216 + -mem[64] + 100
            require totalAllocPoint
            _224 = mem[64]
            mem[64] = mem[64] + 64
            mem[_224] = 26
            mem[_224 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / 10
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args dev_address, (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _248 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_248] == bool(mem[_248])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _264 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_264] == bool(mem[_264])
            if not (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint:
                _281 = mem[64]
                mem[64] = mem[64] + 64
                mem[_281] = 26
                mem[_281 + 32] = 'SafeMath: division by zero'
                if _192 > 0:
                    require _192
                    if poolInfo[idx].field_768 + (0 / _192) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _192
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _290 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_290 + idx + 68] = mem[_281 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_290 + 94] = 0
                revert with memory
                  from mem[64]
                   len _290 + -mem[64] + 100
            require (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _289 = mem[64]
            mem[64] = mem[64] + 64
            mem[_289] = 26
            mem[_289 + 32] = 'SafeMath: division by zero'
            if _192 > 0:
                require _192
                if poolInfo[idx].field_768 + (10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / _192) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / _192
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _297 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_297 + idx + 68] = mem[_289 + idx + 32]
                idx = idx + 32
                continue 
            mem[_297 + 94] = 0
            revert with memory
              from mem[64]
               len _297 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
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
            _220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _221 = mem[_220]
            require mem[_220] == mem[_220]
            if not mem[_220]:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _222 = mem[64]
            mem[64] = mem[64] + 64
            mem[_222] = 30
            mem[_222 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                _223 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_223 + idx + 68] = mem[_222 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_223 + 98] = 0
                revert with memory
                  from mem[64]
                   len _223 + -mem[64] + 100
            if not block.timestamp - poolInfo[idx].field_512:
                _230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_230] = 26
                mem[_230 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _233 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_233 + idx + 68] = mem[_230 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_233 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _233 + -mem[64] + 100
                require totalAllocPoint
                _241 = mem[64]
                mem[64] = mem[64] + 64
                mem[_241] = 26
                mem[_241 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = dev_address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args dev_address, 0 / totalAllocPoint / 10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_268] == bool(mem[_268])
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _284 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_284] == bool(mem[_284])
                if not 0 / totalAllocPoint:
                    _295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_295] = 26
                    mem[_295 + 32] = 'SafeMath: division by zero'
                    if _221 > 0:
                        require _221
                        if poolInfo[idx].field_768 + (0 / _221) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _221
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _299 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_299 + idx + 68] = mem[_295 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_299 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _299 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _298 = mem[64]
                mem[64] = mem[64] + 64
                mem[_298] = 26
                mem[_298 + 32] = 'SafeMath: division by zero'
                if _221 > 0:
                    require _221
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _221) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _221
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _304 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_304 + idx + 68] = mem[_298 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_304 + 94] = 0
                revert with memory
                  from mem[64]
                   len _304 + -mem[64] + 100
            require block.timestamp - poolInfo[idx].field_512
            if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _232 = mem[64]
                mem[64] = mem[64] + 64
                mem[_232] = 26
                mem[_232 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _237 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_237 + idx + 68] = mem[_232 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_237 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _237 + -mem[64] + 100
                require totalAllocPoint
                _244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_244] = 26
                mem[_244 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = dev_address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args dev_address, 0 / totalAllocPoint / 10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _270 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_270] == bool(mem[_270])
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_286] == bool(mem[_286])
                if not 0 / totalAllocPoint:
                    _297 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_297] = 26
                    mem[_297 + 32] = 'SafeMath: division by zero'
                    if _221 > 0:
                        require _221
                        if poolInfo[idx].field_768 + (0 / _221) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _221
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _303 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_303 + idx + 68] = mem[_297 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_303 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _303 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _302 = mem[64]
                mem[64] = mem[64] + 64
                mem[_302] = 26
                mem[_302 + 32] = 'SafeMath: division by zero'
                if _221 > 0:
                    require _221
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _221) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _221
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _311 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_311 + idx + 68] = mem[_302 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_311 + 94] = 0
                revert with memory
                  from mem[64]
                   len _311 + -mem[64] + 100
            require block.timestamp - poolInfo[idx].field_512
            if (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2) / block.timestamp - poolInfo[idx].field_512 != sub_fe1e26b2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2):
                _236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_236] = 26
                mem[_236 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _240 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_240 + idx + 68] = mem[_236 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_240 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _240 + -mem[64] + 100
                require totalAllocPoint
                _247 = mem[64]
                mem[64] = mem[64] + 64
                mem[_247] = 26
                mem[_247 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = dev_address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args dev_address, 0 / totalAllocPoint / 10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _273 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_273] == bool(mem[_273])
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_289] == bool(mem[_289])
                if not 0 / totalAllocPoint:
                    _301 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_301] = 26
                    mem[_301 + 32] = 'SafeMath: division by zero'
                    if _221 > 0:
                        require _221
                        if poolInfo[idx].field_768 + (0 / _221) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _221
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _310 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_310 + idx + 68] = mem[_301 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_310 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _310 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _309 = mem[64]
                mem[64] = mem[64] + 64
                mem[_309] = 26
                mem[_309 + 32] = 'SafeMath: division by zero'
                if _221 > 0:
                    require _221
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _221) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _221
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _318 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_318 + idx + 68] = mem[_309 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_318 + 94] = 0
                revert with memory
                  from mem[64]
                   len _318 + -mem[64] + 100
            require (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2)
            if (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / (block.timestamp * sub_fe1e26b2) - (poolInfo[idx].field_512 * sub_fe1e26b2) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _239 = mem[64]
            mem[64] = mem[64] + 64
            mem[_239] = 26
            mem[_239 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _243 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_243 + idx + 68] = mem[_239 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_243 + 94] = 0
                revert with memory
                  from mem[64]
                   len _243 + -mem[64] + 100
            require totalAllocPoint
            _251 = mem[64]
            mem[64] = mem[64] + 64
            mem[_251] = 26
            mem[_251 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = dev_address
            mem[mem[64] + 36] = (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / 10
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args dev_address, (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / 10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_275] == bool(mem[_275])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_11db8392Address)
            call sub_11db8392Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_291] == bool(mem[_291])
            if not (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint:
                _308 = mem[64]
                mem[64] = mem[64] + 64
                mem[_308] = 26
                mem[_308 + 32] = 'SafeMath: division by zero'
                if _221 > 0:
                    require _221
                    if poolInfo[idx].field_768 + (0 / _221) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _221
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _317 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_317 + idx + 68] = mem[_308 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_317 + 94] = 0
                revert with memory
                  from mem[64]
                   len _317 + -mem[64] + 100
            require (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _316 = mem[64]
            mem[64] = mem[64] + 64
            mem[_316] = 26
            mem[_316 + 32] = 'SafeMath: division by zero'
            if _221 > 0:
                require _221
                if poolInfo[idx].field_768 + (10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / _221) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_fe1e26b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fe1e26b2 * poolInfo[idx].field_256) / totalAllocPoint / _221
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _324 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_324 + idx + 68] = mem[_316 + idx + 32]
                idx = idx + 32
                continue 
            mem[_324 + 94] = 0
            revert with memory
              from mem[64]
               len _324 + -mem[64] + 100
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor10[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp > startTime:
        poolInfo[poolInfo.length].field_512 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_512 = startTime
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
}



}
