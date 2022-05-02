contract main {




// =====================  Runtime code  =====================


#
#  - harvestFor(uint256 arg1, address arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


address owner;
uint256 stor1;
address sub_1b4bc102Address;
address devaddr;
uint256 sub_1fabca96;
address feeAddress;
address sub_72789c05Address;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
mapping of uint8 stor11;

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

function sub_1b4bc102(?) payable {
    return sub_1b4bc102Address
}

function sub_1fabca96(?) payable {
    return sub_1fabca96
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function sub_72789c05(?) payable {
    return sub_72789c05Address
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
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
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    require arg2 - arg1
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (arg2 - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_1b4bc102Address)
                    call sub_1b4bc102Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_1b4bc102Address)
                    call sub_1b4bc102Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_72789c05Address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_1b4bc102Address)
                        call sub_1b4bc102Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_1b4bc102Address)
                        call sub_1b4bc102Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_72789c05Address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_1fabca96) - (poolInfo[arg1].field_512 * sub_1fabca96) / block.number - poolInfo[arg1].field_512 != sub_1fabca96:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_1fabca96) - (poolInfo[arg1].field_512 * sub_1fabca96):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_1b4bc102Address)
                            call sub_1b4bc102Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_1b4bc102Address)
                            call sub_1b4bc102Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_72789c05Address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_1fabca96) - (poolInfo[arg1].field_512 * sub_1fabca96)
                            if (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / (block.number * sub_1fabca96) - (poolInfo[arg1].field_512 * sub_1fabca96) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_1b4bc102Address)
                            call sub_1b4bc102Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_1b4bc102Address)
                            call sub_1b4bc102Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_72789c05Address, (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_65a26bf7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * sub_1fabca96) - (poolInfo[arg1].field_512 * sub_1fabca96) / block.number - poolInfo[arg1].field_512 != sub_1fabca96:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_1fabca96) - (poolInfo[arg1].field_512 * sub_1fabca96):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * sub_1fabca96) - (poolInfo[arg1].field_512 * sub_1fabca96)
    if (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / (block.number * sub_1fabca96) - (poolInfo[arg1].field_512 * sub_1fabca96) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number <= poolInfo[idx].field_512:
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
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _165 = mem[64]
        mem[64] = mem[64] + 64
        mem[_165] = 30
        mem[_165 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _166 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_166 + idx + 68] = mem[_165 + idx + 32]
                idx = idx + 32
                continue 
            mem[_166 + 68] = mem[_166 + 70 len 30]
            revert with memory
              from mem[64]
               len _166 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _177 = mem[64]
            mem[64] = mem[64] + 64
            mem[_177] = 26
            mem[_177 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _179 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_179 + idx + 68] = mem[_177 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_179 + 68] = mem[_179 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _179 + -mem[64] + 100
            require totalAllocPoint
            _196 = mem[64]
            mem[64] = mem[64] + 64
            mem[_196] = 26
            mem[_196 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_72789c05Address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_72789c05Address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _233 = mem[64]
                mem[64] = mem[64] + 64
                mem[_233] = 26
                mem[_233 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _238 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_238 + idx + 68] = mem[_233 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_238 + 68] = mem[_238 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _238 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _237 = mem[64]
            mem[64] = mem[64] + 64
            mem[_237] = 26
            mem[_237 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _248 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_248 + idx + 68] = mem[_237 + idx + 32]
                idx = idx + 32
                continue 
            mem[_248 + 68] = mem[_248 + 74 len 26]
            revert with memory
              from mem[64]
               len _248 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _178 = mem[64]
            mem[64] = mem[64] + 64
            mem[_178] = 26
            mem[_178 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_185 + idx + 68] = mem[_178 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_185 + 68] = mem[_185 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _185 + -mem[64] + 100
            require totalAllocPoint
            _204 = mem[64]
            mem[64] = mem[64] + 64
            mem[_204] = 26
            mem[_204 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_72789c05Address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_72789c05Address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_236] = 26
                mem[_236 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _245 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_245 + idx + 68] = mem[_236 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_245 + 68] = mem[_245 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _245 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _244 = mem[64]
            mem[64] = mem[64] + 64
            mem[_244] = 26
            mem[_244 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _261 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_261 + idx + 68] = mem[_244 + idx + 32]
                idx = idx + 32
                continue 
            mem[_261 + 68] = mem[_261 + 74 len 26]
            revert with memory
              from mem[64]
               len _261 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96) / block.number - poolInfo[idx].field_512 != sub_1fabca96:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96):
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 26
            mem[_184 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _192 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_192 + idx + 68] = mem[_184 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_192 + 68] = mem[_192 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _192 + -mem[64] + 100
            require totalAllocPoint
            _209 = mem[64]
            mem[64] = mem[64] + 64
            mem[_209] = 26
            mem[_209 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_72789c05Address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_72789c05Address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_243] = 26
                mem[_243 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _258 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_258 + idx + 68] = mem[_243 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_258 + 68] = mem[_258 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _258 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 26
            mem[_257 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _277 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_277 + idx + 68] = mem[_257 + idx + 32]
                idx = idx + 32
                continue 
            mem[_277 + 68] = mem[_277 + 74 len 26]
            revert with memory
              from mem[64]
               len _277 + -mem[64] + 100
        require (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96)
        if (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _191 = mem[64]
        mem[64] = mem[64] + 64
        mem[_191] = 26
        mem[_191 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _200 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_200 + idx + 68] = mem[_191 + idx + 32]
                idx = idx + 32
                continue 
            mem[_200 + 68] = mem[_200 + 74 len 26]
            revert with memory
              from mem[64]
               len _200 + -mem[64] + 100
        require totalAllocPoint
        _215 = mem[64]
        mem[64] = mem[64] + 64
        mem[_215] = 26
        mem[_215 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_1b4bc102Address)
        call sub_1b4bc102Address.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_72789c05Address
        mem[mem[64] + 36] = (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_1b4bc102Address)
        call sub_1b4bc102Address.0x40c10f19 with:
             gas gas_remaining wei
            args sub_72789c05Address, (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint:
            _256 = mem[64]
            mem[64] = mem[64] + 64
            mem[_256] = 26
            mem[_256 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _274 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_274 + idx + 68] = mem[_256 + idx + 32]
                idx = idx + 32
                continue 
            mem[_274 + 68] = mem[_274 + 74 len 26]
            revert with memory
              from mem[64]
               len _274 + -mem[64] + 100
        require (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _273 = mem[64]
        mem[64] = mem[64] + 64
        mem[_273] = 26
        mem[_273 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _292 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_292 + idx + 68] = mem[_273 + idx + 32]
            idx = idx + 32
            continue 
        mem[_292 + 68] = mem[_292 + 74 len 26]
        revert with memory
          from mem[64]
           len _292 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number <= poolInfo[idx].field_512:
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
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _171 = mem[64]
        mem[64] = mem[64] + 64
        mem[_171] = 30
        mem[_171 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _172 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_172 + idx + 68] = mem[_171 + idx + 32]
                idx = idx + 32
                continue 
            mem[_172 + 68] = mem[_172 + 70 len 30]
            revert with memory
              from mem[64]
               len _172 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _183 = mem[64]
            mem[64] = mem[64] + 64
            mem[_183] = 26
            mem[_183 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_185 + idx + 68] = mem[_183 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_185 + 68] = mem[_185 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _185 + -mem[64] + 100
            require totalAllocPoint
            _202 = mem[64]
            mem[64] = mem[64] + 64
            mem[_202] = 26
            mem[_202 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_72789c05Address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_72789c05Address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _239 = mem[64]
                mem[64] = mem[64] + 64
                mem[_239] = 26
                mem[_239 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _244 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_244 + idx + 68] = mem[_239 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_244 + 68] = mem[_244 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _244 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _243 = mem[64]
            mem[64] = mem[64] + 64
            mem[_243] = 26
            mem[_243 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _254 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_254 + idx + 68] = mem[_243 + idx + 32]
                idx = idx + 32
                continue 
            mem[_254 + 68] = mem[_254 + 74 len 26]
            revert with memory
              from mem[64]
               len _254 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 26
            mem[_184 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _191 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_191 + idx + 68] = mem[_184 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_191 + 68] = mem[_191 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _191 + -mem[64] + 100
            require totalAllocPoint
            _210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_210] = 26
            mem[_210 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_72789c05Address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_72789c05Address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _242 = mem[64]
                mem[64] = mem[64] + 64
                mem[_242] = 26
                mem[_242 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
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
                mem[_251 + 68] = mem[_251 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _251 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _250 = mem[64]
            mem[64] = mem[64] + 64
            mem[_250] = 26
            mem[_250 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _267 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_267 + idx + 68] = mem[_250 + idx + 32]
                idx = idx + 32
                continue 
            mem[_267 + 68] = mem[_267 + 74 len 26]
            revert with memory
              from mem[64]
               len _267 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96) / block.number - poolInfo[idx].field_512 != sub_1fabca96:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96):
            _190 = mem[64]
            mem[64] = mem[64] + 64
            mem[_190] = 26
            mem[_190 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _198 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_198 + idx + 68] = mem[_190 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_198 + 68] = mem[_198 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _198 + -mem[64] + 100
            require totalAllocPoint
            _215 = mem[64]
            mem[64] = mem[64] + 64
            mem[_215] = 26
            mem[_215 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_72789c05Address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_72789c05Address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_249] = 26
                mem[_249 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _264 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_264 + idx + 68] = mem[_249 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_264 + 68] = mem[_264 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _264 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _263 = mem[64]
            mem[64] = mem[64] + 64
            mem[_263] = 26
            mem[_263 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _283 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_283 + idx + 68] = mem[_263 + idx + 32]
                idx = idx + 32
                continue 
            mem[_283 + 68] = mem[_283 + 74 len 26]
            revert with memory
              from mem[64]
               len _283 + -mem[64] + 100
        require (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96)
        if (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _197 = mem[64]
        mem[64] = mem[64] + 64
        mem[_197] = 26
        mem[_197 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _206 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_206 + idx + 68] = mem[_197 + idx + 32]
                idx = idx + 32
                continue 
            mem[_206 + 68] = mem[_206 + 74 len 26]
            revert with memory
              from mem[64]
               len _206 + -mem[64] + 100
        require totalAllocPoint
        _221 = mem[64]
        mem[64] = mem[64] + 64
        mem[_221] = 26
        mem[_221 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_1b4bc102Address)
        call sub_1b4bc102Address.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_72789c05Address
        mem[mem[64] + 36] = (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_1b4bc102Address)
        call sub_1b4bc102Address.0x40c10f19 with:
             gas gas_remaining wei
            args sub_72789c05Address, (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint:
            _262 = mem[64]
            mem[64] = mem[64] + 64
            mem[_262] = 26
            mem[_262 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _280 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_280 + idx + 68] = mem[_262 + idx + 32]
                idx = idx + 32
                continue 
            mem[_280 + 68] = mem[_280 + 74 len 26]
            revert with memory
              from mem[64]
               len _280 + -mem[64] + 100
        require (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _279 = mem[64]
        mem[64] = mem[64] + 64
        mem[_279] = 26
        mem[_279 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _298 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_298 + idx + 68] = mem[_279 + idx + 32]
            idx = idx + 32
            continue 
        mem[_298 + 68] = mem[_298 + 74 len 26]
        revert with memory
          from mem[64]
           len _298 + -mem[64] + 100
    sub_1fabca96 = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number <= poolInfo[idx].field_512:
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
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_210] = 30
            mem[_210 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _213 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_213 + idx + 68] = mem[_210 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_213 + 68] = mem[_213 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _213 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _224 = mem[64]
                mem[64] = mem[64] + 64
                mem[_224] = 26
                mem[_224 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _226 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_226 + idx + 68] = mem[_224 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_226 + 68] = mem[_226 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _226 + -mem[64] + 100
                require totalAllocPoint
                _243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_243] = 26
                mem[_243 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_1b4bc102Address)
                call sub_1b4bc102Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_72789c05Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_1b4bc102Address)
                call sub_1b4bc102Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_72789c05Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _280 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_280] = 26
                    mem[_280 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _285 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_285 + idx + 68] = mem[_280 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_285 + 68] = mem[_285 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _285 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _284 = mem[64]
                mem[64] = mem[64] + 64
                mem[_284] = 26
                mem[_284 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _295 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_295 + idx + 68] = mem[_284 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_295 + 68] = mem[_295 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _295 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _232 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_232 + idx + 68] = mem[_225 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_232 + 68] = mem[_232 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _232 + -mem[64] + 100
                require totalAllocPoint
                _251 = mem[64]
                mem[64] = mem[64] + 64
                mem[_251] = 26
                mem[_251 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_1b4bc102Address)
                call sub_1b4bc102Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_72789c05Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_1b4bc102Address)
                call sub_1b4bc102Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_72789c05Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _283 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_283] = 26
                    mem[_283 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _292 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_292 + idx + 68] = mem[_283 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_292 + 68] = mem[_292 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _292 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _291 = mem[64]
                mem[64] = mem[64] + 64
                mem[_291] = 26
                mem[_291 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _308 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_308 + idx + 68] = mem[_291 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_308 + 68] = mem[_308 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _308 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96) / block.number - poolInfo[idx].field_512 != sub_1fabca96:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96):
                _231 = mem[64]
                mem[64] = mem[64] + 64
                mem[_231] = 26
                mem[_231 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _239 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_239 + idx + 68] = mem[_231 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_239 + 68] = mem[_239 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _239 + -mem[64] + 100
                require totalAllocPoint
                _256 = mem[64]
                mem[64] = mem[64] + 64
                mem[_256] = 26
                mem[_256 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_1b4bc102Address)
                call sub_1b4bc102Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_72789c05Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_1b4bc102Address)
                call sub_1b4bc102Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_72789c05Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_290] = 26
                    mem[_290 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_305 + idx + 68] = mem[_290 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_305 + 68] = mem[_305 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _305 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _304 = mem[64]
                mem[64] = mem[64] + 64
                mem[_304] = 26
                mem[_304 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _324 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_324 + idx + 68] = mem[_304 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_324 + 68] = mem[_324 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _324 + -mem[64] + 100
            require (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96)
            if (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _238 = mem[64]
            mem[64] = mem[64] + 64
            mem[_238] = 26
            mem[_238 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_247 + idx + 68] = mem[_238 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_247 + 68] = mem[_247 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _247 + -mem[64] + 100
            require totalAllocPoint
            _262 = mem[64]
            mem[64] = mem[64] + 64
            mem[_262] = 26
            mem[_262 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_72789c05Address
            mem[mem[64] + 36] = (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_72789c05Address, (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint:
                _303 = mem[64]
                mem[64] = mem[64] + 64
                mem[_303] = 26
                mem[_303 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _321 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_321 + idx + 68] = mem[_303 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_321 + 68] = mem[_321 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _321 + -mem[64] + 100
            require (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _320 = mem[64]
            mem[64] = mem[64] + 64
            mem[_320] = 26
            mem[_320 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _339 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_339 + idx + 68] = mem[_320 + idx + 32]
                idx = idx + 32
                continue 
            mem[_339 + 68] = mem[_339 + 74 len 26]
            revert with memory
              from mem[64]
               len _339 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 11
    if stor11[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number <= poolInfo[idx].field_512:
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
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _232 = mem[64]
            mem[64] = mem[64] + 64
            mem[_232] = 30
            mem[_232 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _233 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_233 + idx + 68] = mem[_232 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_233 + 68] = mem[_233 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _233 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_244] = 26
                mem[_244 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _246 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_246 + idx + 68] = mem[_244 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_246 + 68] = mem[_246 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _246 + -mem[64] + 100
                require totalAllocPoint
                _263 = mem[64]
                mem[64] = mem[64] + 64
                mem[_263] = 26
                mem[_263 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_1b4bc102Address)
                call sub_1b4bc102Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_72789c05Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_1b4bc102Address)
                call sub_1b4bc102Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_72789c05Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _300 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_300] = 26
                    mem[_300 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_305 + idx + 68] = mem[_300 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_305 + 68] = mem[_305 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _305 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _304 = mem[64]
                mem[64] = mem[64] + 64
                mem[_304] = 26
                mem[_304 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _315 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_315 + idx + 68] = mem[_304 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_315 + 68] = mem[_315 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _315 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _245 = mem[64]
                mem[64] = mem[64] + 64
                mem[_245] = 26
                mem[_245 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _252 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_252 + idx + 68] = mem[_245 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_252 + 68] = mem[_252 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _252 + -mem[64] + 100
                require totalAllocPoint
                _271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_271] = 26
                mem[_271 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_1b4bc102Address)
                call sub_1b4bc102Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_72789c05Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_1b4bc102Address)
                call sub_1b4bc102Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_72789c05Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _303 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_303] = 26
                    mem[_303 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _312 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_312 + idx + 68] = mem[_303 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_312 + 68] = mem[_312 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _312 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_311] = 26
                mem[_311 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _328 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_328 + idx + 68] = mem[_311 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_328 + 68] = mem[_328 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _328 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96) / block.number - poolInfo[idx].field_512 != sub_1fabca96:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96):
                _251 = mem[64]
                mem[64] = mem[64] + 64
                mem[_251] = 26
                mem[_251 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _259 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_259 + idx + 68] = mem[_251 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_259 + 68] = mem[_259 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _259 + -mem[64] + 100
                require totalAllocPoint
                _276 = mem[64]
                mem[64] = mem[64] + 64
                mem[_276] = 26
                mem[_276 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_1b4bc102Address)
                call sub_1b4bc102Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_72789c05Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_1b4bc102Address)
                call sub_1b4bc102Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_72789c05Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _310 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_310] = 26
                    mem[_310 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _325 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_325 + idx + 68] = mem[_310 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_325 + 68] = mem[_325 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _325 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _324 = mem[64]
                mem[64] = mem[64] + 64
                mem[_324] = 26
                mem[_324 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _344 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_344 + idx + 68] = mem[_324 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_344 + 68] = mem[_344 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _344 + -mem[64] + 100
            require (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96)
            if (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / (block.number * sub_1fabca96) - (poolInfo[idx].field_512 * sub_1fabca96) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _258 = mem[64]
            mem[64] = mem[64] + 64
            mem[_258] = 26
            mem[_258 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _267 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_267 + idx + 68] = mem[_258 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_267 + 68] = mem[_267 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _267 + -mem[64] + 100
            require totalAllocPoint
            _282 = mem[64]
            mem[64] = mem[64] + 64
            mem[_282] = 26
            mem[_282 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_72789c05Address
            mem[mem[64] + 36] = (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_1b4bc102Address)
            call sub_1b4bc102Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_72789c05Address, (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint:
                _323 = mem[64]
                mem[64] = mem[64] + 64
                mem[_323] = 26
                mem[_323 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _341 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_341 + idx + 68] = mem[_323 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_341 + 68] = mem[_341 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _341 + -mem[64] + 100
            require (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _340 = mem[64]
            mem[64] = mem[64] + 64
            mem[_340] = 26
            mem[_340 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_1fabca96 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1fabca96 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _359 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_359 + idx + 68] = mem[_340 + idx + 32]
                idx = idx + 32
                continue 
            mem[_359 + 68] = mem[_359 + 74 len 26]
            revert with memory
              from mem[64]
               len _359 + -mem[64] + 100
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor11[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if userInfo[arg1][address(msg.sender)].field_0 < arg2:
        revert with 0, 'withdraw: not good'
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                require ext_code.size(sub_72789c05Address)
                call sub_72789c05Address.0x7a240b29 with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Harvest(-userInfo[arg1][address(msg.sender)].field_256, msg.sender, arg1);
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                require ext_code.size(sub_72789c05Address)
                call sub_72789c05Address.0x7a240b29 with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Harvest(((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
        if arg2 <= 0:
            if not userInfo[arg1][address(msg.sender)].field_0:
                userInfo[arg1][address(msg.sender)].field_256 = 0
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[arg1][address(msg.sender)].field_0 -= arg2
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            mem[516 len 0] = 0
            call poolInfo[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
            if not userInfo[arg1][address(msg.sender)].field_0:
                userInfo[arg1][address(msg.sender)].field_256 = 0
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 554 len 31]
                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                    require ext_code.size(sub_72789c05Address)
                    call sub_72789c05Address.0x7a240b29 with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Harvest(-userInfo[arg1][address(msg.sender)].field_256, msg.sender, arg1);
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                    require ext_code.size(sub_72789c05Address)
                    call sub_72789c05Address.0x7a240b29 with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Harvest(((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
            if arg2 <= 0:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                mem[516 len 0] = 0
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 554 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            if not poolInfo[arg1].field_256:
                poolInfo[arg1].field_512 = block.number
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_72789c05Address)
                        call sub_72789c05Address.0x7a240b29 with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Harvest(-userInfo[arg1][address(msg.sender)].field_256, msg.sender, arg1);
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_72789c05Address)
                        call sub_72789c05Address.0x7a240b29 with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Harvest(((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[516 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 554 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_1b4bc102Address)
                    call sub_1b4bc102Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_1b4bc102Address)
                    call sub_1b4bc102Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_72789c05Address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_1b4bc102Address)
                        call sub_1b4bc102Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_1b4bc102Address)
                        call sub_1b4bc102Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_72789c05Address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_1fabca96) - (poolInfo[arg1].field_512 * sub_1fabca96) / block.number - poolInfo[arg1].field_512 != sub_1fabca96:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_1fabca96) - (poolInfo[arg1].field_512 * sub_1fabca96):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_1b4bc102Address)
                            call sub_1b4bc102Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_1b4bc102Address)
                            call sub_1b4bc102Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_72789c05Address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_1fabca96) - (poolInfo[arg1].field_512 * sub_1fabca96)
                            if (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / (block.number * sub_1fabca96) - (poolInfo[arg1].field_512 * sub_1fabca96) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_1b4bc102Address)
                            call sub_1b4bc102Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_1b4bc102Address)
                            call sub_1b4bc102Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_72789c05Address, (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_1fabca96 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1fabca96 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_72789c05Address)
                        call sub_72789c05Address.0x7a240b29 with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Harvest(-userInfo[arg1][address(msg.sender)].field_256, msg.sender, arg1);
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_72789c05Address)
                        call sub_72789c05Address.0x7a240b29 with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Harvest(((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[772 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[740]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 819 len 22]
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 810 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    emit Withdraw(arg2, msg.sender, arg1);
    stor1 = 1
}

function bulkHarvestFor(uint256[] arg1, address arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
        if msg.sender == arg2:
            require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
            mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 8)
            mem[0] = 7
            if block.number <= poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                        _1232 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1232] = 26
                        mem[_1232 + 32] = 'SafeMath: division by zero'
                        _1258 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1258] = 30
                        mem[_1258 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                            _1272 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1272 + idx + 68] = mem[_1258 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1272 + 68] = mem[_1272 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1272 + -mem[64] + 100
                        if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                            require ext_code.size(sub_72789c05Address)
                            call sub_72789c05Address.0x7a240b29 with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                _1397 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1397] = 26
                                mem[_1397 + 32] = 'SafeMath: division by zero'
                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                            else:
                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1423 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1423] = 26
                                mem[_1423 + 32] = 'SafeMath: division by zero'
                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                            mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                            emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                    else:
                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1240 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1240] = 26
                        mem[_1240 + 32] = 'SafeMath: division by zero'
                        _1271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1271] = 30
                        mem[_1271 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                            _1283 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1283 + idx + 68] = mem[_1271 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1283 + 68] = mem[_1283 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1283 + -mem[64] + 100
                        if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                            require ext_code.size(sub_72789c05Address)
                            call sub_72789c05Address.0x7a240b29 with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                _1422 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1422] = 26
                                mem[_1422 + 32] = 'SafeMath: division by zero'
                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                            else:
                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1446 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1446] = 26
                                mem[_1446 + 32] = 'SafeMath: division by zero'
                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                            mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                            emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
            else:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0)
                staticcall poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                        if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                            _1248 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1248] = 26
                            mem[_1248 + 32] = 'SafeMath: division by zero'
                            _1287 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1287] = 30
                            mem[_1287 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                _1303 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1303 + idx + 68] = mem[_1287 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1303 + 68] = mem[_1303 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1303 + -mem[64] + 100
                            if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                require ext_code.size(sub_72789c05Address)
                                call sub_72789c05Address.0x7a240b29 with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                    _1449 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1449] = 26
                                    mem[_1449 + 32] = 'SafeMath: division by zero'
                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                else:
                                    require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1483 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1483] = 26
                                    mem[_1483 + 32] = 'SafeMath: division by zero'
                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                        else:
                            require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1264 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1264] = 26
                            mem[_1264 + 32] = 'SafeMath: division by zero'
                            _1302 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1302] = 30
                            mem[_1302 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                _1326 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1326 + idx + 68] = mem[_1302 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1326 + 68] = mem[_1326 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1326 + -mem[64] + 100
                            if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                require ext_code.size(sub_72789c05Address)
                                call sub_72789c05Address.0x7a240b29 with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                    _1482 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1482] = 26
                                    mem[_1482 + 32] = 'SafeMath: division by zero'
                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                else:
                                    require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1516 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1516] = 26
                                    mem[_1516 + 32] = 'SafeMath: division by zero'
                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                else:
                    if not poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                _1257 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1257] = 26
                                mem[_1257 + 32] = 'SafeMath: division by zero'
                                _1294 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1294] = 30
                                mem[_1294 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                    _1314 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1314 + idx + 68] = mem[_1294 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1314 + 68] = mem[_1314 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1314 + -mem[64] + 100
                                if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                    require ext_code.size(sub_72789c05Address)
                                    call sub_72789c05Address.0x7a240b29 with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                        _1474 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1474] = 26
                                        mem[_1474 + 32] = 'SafeMath: division by zero'
                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                    else:
                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1505 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1505] = 26
                                        mem[_1505 + 32] = 'SafeMath: division by zero'
                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                    mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                    emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1270 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1270] = 26
                                mem[_1270 + 32] = 'SafeMath: division by zero'
                                _1313 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1313] = 30
                                mem[_1313 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                    _1341 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1341 + idx + 68] = mem[_1313 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1341 + 68] = mem[_1341 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1341 + -mem[64] + 100
                                if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                    require ext_code.size(sub_72789c05Address)
                                    call sub_72789c05Address.0x7a240b29 with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                        _1504 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1504] = 26
                                        mem[_1504 + 32] = 'SafeMath: division by zero'
                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                    else:
                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1532 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1532] = 26
                                        mem[_1532 + 32] = 'SafeMath: division by zero'
                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                    mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                    emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                    else:
                        _1231 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1231] = 30
                        mem[_1231 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 > block.number:
                            _1237 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1237 + idx + 68] = mem[_1231 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1237 + 68] = mem[_1237 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1237 + -mem[64] + 100
                        if not block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                            _1365 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1365] = 26
                            mem[_1365 + 32] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                _1391 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1391 + idx + 68] = mem[_1365 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1391 + 68] = mem[_1391 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1391 + -mem[64] + 100
                            require totalAllocPoint
                            _1444 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1444] = 26
                            mem[_1444 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_1b4bc102Address)
                            call sub_1b4bc102Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_72789c05Address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_1b4bc102Address)
                            call sub_1b4bc102Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_72789c05Address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1601 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1601] = 26
                                mem[_1601 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    _1611 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1611 + idx + 68] = mem[_1601 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1611 + 68] = mem[_1611 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1611 + -mem[64] + 100
                                require ext_call.return_data[0]
                                if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (0 / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                        _1777 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1777] = 26
                                        mem[_1777 + 32] = 'SafeMath: division by zero'
                                        _1821 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1821] = 30
                                        mem[_1821 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                            _1839 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_1839 + idx + 68] = mem[_1821 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1839 + 68] = mem[_1839 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _1839 + -mem[64] + 100
                                        if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            require ext_code.size(sub_72789c05Address)
                                            call sub_72789c05Address.0x7a240b29 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _2137 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2137] = 26
                                                mem[_2137 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _2171 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2171] = 26
                                                mem[_2171 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                            mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                    else:
                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1789 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1789] = 26
                                        mem[_1789 + 32] = 'SafeMath: division by zero'
                                        _1838 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1838] = 30
                                        mem[_1838 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                            _1864 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_1864 + idx + 68] = mem[_1838 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1864 + 68] = mem[_1864 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _1864 + -mem[64] + 100
                                        if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            require ext_code.size(sub_72789c05Address)
                                            call sub_72789c05Address.0x7a240b29 with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _2170 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2170] = 26
                                                mem[_2170 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _2201 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2201] = 26
                                                mem[_2201 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                            mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1610 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1610] = 26
                                mem[_1610 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    _1628 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1628 + idx + 68] = mem[_1610 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1628 + 68] = mem[_1628 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1628 + -mem[64] + 100
                                require ext_call.return_data[0]
                                if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                        _1788 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1788] = 26
                                        mem[_1788 + 32] = 'SafeMath: division by zero'
                                        _1837 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1837] = 30
                                        mem[_1837 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                            _1861 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_1861 + idx + 68] = mem[_1837 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1861 + 68] = mem[_1861 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _1861 + -mem[64] + 100
                                        if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            require ext_code.size(sub_72789c05Address)
                                            call sub_72789c05Address.0x7a240b29 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _2169 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2169] = 26
                                                mem[_2169 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _2200 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2200] = 26
                                                mem[_2200 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                            mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                    else:
                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1804 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1804] = 26
                                        mem[_1804 + 32] = 'SafeMath: division by zero'
                                        _1860 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1860] = 30
                                        mem[_1860 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                            _1899 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_1899 + idx + 68] = mem[_1860 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1899 + 68] = mem[_1899 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _1899 + -mem[64] + 100
                                        if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            require ext_code.size(sub_72789c05Address)
                                            call sub_72789c05Address.0x7a240b29 with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _2199 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2199] = 26
                                                mem[_2199 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _2234 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2234] = 26
                                                mem[_2234 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                            mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                        else:
                            require block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512
                            if block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 / block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 != 1:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                                _1390 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1390] = 26
                                mem[_1390 + 32] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    _1418 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1418 + idx + 68] = mem[_1390 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1418 + 68] = mem[_1418 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1418 + -mem[64] + 100
                                require totalAllocPoint
                                _1472 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1472] = 26
                                mem[_1472 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_1b4bc102Address)
                                call sub_1b4bc102Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_72789c05Address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_1b4bc102Address)
                                call sub_1b4bc102Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_72789c05Address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1609 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1609] = 26
                                    mem[_1609 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _1625 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1625 + idx + 68] = mem[_1609 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1625 + 68] = mem[_1625 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1625 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (0 / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                        if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                            _1787 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1787] = 26
                                            mem[_1787 + 32] = 'SafeMath: division by zero'
                                            _1836 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1836] = 30
                                            mem[_1836 + 32] = 'SafeMath: subtraction overflow'
                                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                _1857 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1857 + idx + 68] = mem[_1836 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1857 + 68] = mem[_1857 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1857 + -mem[64] + 100
                                            if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                require ext_code.size(sub_72789c05Address)
                                                call sub_72789c05Address.0x7a240b29 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                    _2168 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2168] = 26
                                                    mem[_2168 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                else:
                                                    require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2198 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2198] = 26
                                                    mem[_2198 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                        else:
                                            require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1803 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1803] = 26
                                            mem[_1803 + 32] = 'SafeMath: division by zero'
                                            _1856 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1856] = 30
                                            mem[_1856 + 32] = 'SafeMath: subtraction overflow'
                                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                                _1895 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1895 + idx + 68] = mem[_1856 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1895 + 68] = mem[_1895 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1895 + -mem[64] + 100
                                            if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                require ext_code.size(sub_72789c05Address)
                                                call sub_72789c05Address.0x7a240b29 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                    _2197 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2197] = 26
                                                    mem[_2197 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                else:
                                                    require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2233 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2233] = 26
                                                    mem[_2233 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1624 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1624] = 26
                                    mem[_1624 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _1652 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1652 + idx + 68] = mem[_1624 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1652 + 68] = mem[_1652 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1652 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                        if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                            _1802 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1802] = 26
                                            mem[_1802 + 32] = 'SafeMath: division by zero'
                                            _1855 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1855] = 30
                                            mem[_1855 + 32] = 'SafeMath: subtraction overflow'
                                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                _1892 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1892 + idx + 68] = mem[_1855 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1892 + 68] = mem[_1892 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1892 + -mem[64] + 100
                                            if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                require ext_code.size(sub_72789c05Address)
                                                call sub_72789c05Address.0x7a240b29 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                    _2196 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2196] = 26
                                                    mem[_2196 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                else:
                                                    require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2232 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2232] = 26
                                                    mem[_2232 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                        else:
                                            require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1820 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1820] = 26
                                            mem[_1820 + 32] = 'SafeMath: division by zero'
                                            _1891 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1891] = 30
                                            mem[_1891 + 32] = 'SafeMath: subtraction overflow'
                                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                                _1950 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1950 + idx + 68] = mem[_1891 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1950 + 68] = mem[_1950 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1950 + -mem[64] + 100
                                            if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                require ext_code.size(sub_72789c05Address)
                                                call sub_72789c05Address.0x7a240b29 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                    _2231 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2231] = 26
                                                    mem[_2231 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                else:
                                                    require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2273 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2273] = 26
                                                    mem[_2273 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                require block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512
                                if (block.number * sub_1fabca96) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96) / block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 != sub_1fabca96:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * sub_1fabca96) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96):
                                    _1417 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1417] = 26
                                    mem[_1417 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _1440 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1440 + idx + 68] = mem[_1417 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1440 + 68] = mem[_1440 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1440 + -mem[64] + 100
                                    require totalAllocPoint
                                    _1502 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1502] = 26
                                    mem[_1502 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_1b4bc102Address)
                                    call sub_1b4bc102Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = sub_72789c05Address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_1b4bc102Address)
                                    call sub_1b4bc102Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_72789c05Address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1623 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1623] = 26
                                        mem[_1623 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _1649 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1649 + idx + 68] = mem[_1623 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1649 + 68] = mem[_1649 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1649 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (0 / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _1801 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1801] = 26
                                                mem[_1801 + 32] = 'SafeMath: division by zero'
                                                _1854 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1854] = 30
                                                mem[_1854 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    _1888 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_1888 + idx + 68] = mem[_1854 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1888 + 68] = mem[_1888 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1888 + -mem[64] + 100
                                                if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2195 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2195] = 26
                                                        mem[_2195 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2230 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2230] = 26
                                                        mem[_2230 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1819 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1819] = 26
                                                mem[_1819 + 32] = 'SafeMath: division by zero'
                                                _1887 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1887] = 30
                                                mem[_1887 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                                    _1946 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_1946 + idx + 68] = mem[_1887 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1946 + 68] = mem[_1946 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1946 + -mem[64] + 100
                                                if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2229 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2229] = 26
                                                        mem[_2229 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2272 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2272] = 26
                                                        mem[_2272 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1648 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1648] = 26
                                        mem[_1648 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _1683 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1683 + idx + 68] = mem[_1648 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1683 + 68] = mem[_1683 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1683 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _1818 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1818] = 26
                                                mem[_1818 + 32] = 'SafeMath: division by zero'
                                                _1886 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1886] = 30
                                                mem[_1886 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    _1943 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_1943 + idx + 68] = mem[_1886 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1943 + 68] = mem[_1943 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1943 + -mem[64] + 100
                                                if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2228 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2228] = 26
                                                        mem[_2228 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2271 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2271] = 26
                                                        mem[_2271 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1835 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1835] = 26
                                                mem[_1835 + 32] = 'SafeMath: division by zero'
                                                _1942 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1942] = 30
                                                mem[_1942 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                                    _2015 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2015 + idx + 68] = mem[_1942 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2015 + 68] = mem[_2015 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _2015 + -mem[64] + 100
                                                if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2270 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2270] = 26
                                                        mem[_2270 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2314 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2314] = 26
                                                        mem[_2314 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                                else:
                                    require (block.number * sub_1fabca96) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96)
                                    if (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / (block.number * sub_1fabca96) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96) != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1439 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1439] = 26
                                    mem[_1439 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _1468 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        s = 0
                                        while s < 26:
                                            mem[_1468 + s + 68] = mem[_1439 + s + 32]
                                            s = s + 32
                                            continue 
                                        mem[_1468 + 68] = mem[_1468 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1468 + -mem[64] + 100
                                    require totalAllocPoint
                                    _1530 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1530] = 26
                                    mem[_1530 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_1b4bc102Address)
                                    call sub_1b4bc102Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = sub_72789c05Address
                                    mem[mem[64] + 36] = (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint
                                    require ext_code.size(sub_1b4bc102Address)
                                    call sub_1b4bc102Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_72789c05Address, (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint:
                                        _1647 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1647] = 26
                                        mem[_1647 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _1680 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1680 + idx + 68] = mem[_1647 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1680 + 68] = mem[_1680 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1680 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (0 / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _1817 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1817] = 26
                                                mem[_1817 + 32] = 'SafeMath: division by zero'
                                                _1885 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1885] = 30
                                                mem[_1885 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    _1939 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_1939 + idx + 68] = mem[_1885 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1939 + 68] = mem[_1939 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1939 + -mem[64] + 100
                                                if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2227 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2227] = 26
                                                        mem[_2227 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2269 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2269] = 26
                                                        mem[_2269 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1834 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1834] = 26
                                                mem[_1834 + 32] = 'SafeMath: division by zero'
                                                _1938 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1938] = 30
                                                mem[_1938 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                                    _2011 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2011 + idx + 68] = mem[_1938 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2011 + 68] = mem[_2011 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _2011 + -mem[64] + 100
                                                if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2268 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2268] = 26
                                                        mem[_2268 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2313 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2313] = 26
                                                        mem[_2313 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                                    else:
                                        require (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint
                                        if 10^12 * (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint / (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1679 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1679] = 26
                                        mem[_1679 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _1715 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1715 + idx + 68] = mem[_1679 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1715 + 68] = mem[_1715 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1715 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (10^12 * (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 10^12 * (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _1833 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1833] = 26
                                                mem[_1833 + 32] = 'SafeMath: division by zero'
                                                _1937 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1937] = 30
                                                mem[_1937 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    _2008 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2008 + idx + 68] = mem[_1937 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2008 + 68] = mem[_2008 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _2008 + -mem[64] + 100
                                                if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2267 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2267] = 26
                                                        mem[_2267 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2312 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2312] = 26
                                                        mem[_2312 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1853 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1853] = 26
                                                mem[_1853 + 32] = 'SafeMath: division by zero'
                                                _2007 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2007] = 30
                                                mem[_2007 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                                    _2075 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2075 + idx + 68] = mem[_2007 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2075 + 68] = mem[_2075 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _2075 + -mem[64] + 100
                                                if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2311 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2311] = 26
                                                        mem[_2311 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2351 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2351] = 26
                                                        mem[_2351 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
        else:
            if arg2 != tx.origin:
                revert with 0, 'harvestFor: FORBIDDEN'
            require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
            mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 8)
            mem[0] = 7
            if block.number <= poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                        _1236 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1236] = 26
                        mem[_1236 + 32] = 'SafeMath: division by zero'
                        _1267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1267] = 30
                        mem[_1267 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                            _1280 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1280 + idx + 68] = mem[_1267 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1280 + 68] = mem[_1280 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1280 + -mem[64] + 100
                        if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                            require ext_code.size(sub_72789c05Address)
                            call sub_72789c05Address.0x7a240b29 with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                _1416 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1416] = 26
                                mem[_1416 + 32] = 'SafeMath: division by zero'
                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                            else:
                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1436 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1436] = 26
                                mem[_1436 + 32] = 'SafeMath: division by zero'
                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                            mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                            emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                    else:
                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1244 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1244] = 26
                        mem[_1244 + 32] = 'SafeMath: division by zero'
                        _1279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1279] = 30
                        mem[_1279 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                            _1290 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1290 + idx + 68] = mem[_1279 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1290 + 68] = mem[_1290 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1290 + -mem[64] + 100
                        if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                            require ext_code.size(sub_72789c05Address)
                            call sub_72789c05Address.0x7a240b29 with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                _1435 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1435] = 26
                                mem[_1435 + 32] = 'SafeMath: division by zero'
                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                            else:
                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1465 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1465] = 26
                                mem[_1465 + 32] = 'SafeMath: division by zero'
                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                            mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                            emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
            else:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0)
                staticcall poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                        if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                            _1259 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1259] = 26
                            mem[_1259 + 32] = 'SafeMath: division by zero'
                            _1299 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1299] = 30
                            mem[_1299 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                _1321 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1321 + idx + 68] = mem[_1299 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1321 + 68] = mem[_1321 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1321 + -mem[64] + 100
                            if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                require ext_code.size(sub_72789c05Address)
                                call sub_72789c05Address.0x7a240b29 with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                    _1475 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1475] = 26
                                    mem[_1475 + 32] = 'SafeMath: division by zero'
                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                else:
                                    require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1507 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1507] = 26
                                    mem[_1507 + 32] = 'SafeMath: division by zero'
                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                        else:
                            require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1275 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1275] = 26
                            mem[_1275 + 32] = 'SafeMath: division by zero'
                            _1320 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1320] = 30
                            mem[_1320 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                _1345 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1345 + idx + 68] = mem[_1320 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1345 + 68] = mem[_1345 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1345 + -mem[64] + 100
                            if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                require ext_code.size(sub_72789c05Address)
                                call sub_72789c05Address.0x7a240b29 with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                    _1506 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1506] = 26
                                    mem[_1506 + 32] = 'SafeMath: division by zero'
                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                else:
                                    require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1533 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1533] = 26
                                    mem[_1533 + 32] = 'SafeMath: division by zero'
                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                else:
                    if not poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                _1266 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1266] = 26
                                mem[_1266 + 32] = 'SafeMath: division by zero'
                                _1308 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1308] = 30
                                mem[_1308 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                    _1333 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1333 + idx + 68] = mem[_1308 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1333 + 68] = mem[_1333 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1333 + -mem[64] + 100
                                if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                    require ext_code.size(sub_72789c05Address)
                                    call sub_72789c05Address.0x7a240b29 with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                        _1500 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1500] = 26
                                        mem[_1500 + 32] = 'SafeMath: division by zero'
                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                    else:
                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1527 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1527] = 26
                                        mem[_1527 + 32] = 'SafeMath: division by zero'
                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                    mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                    emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1278 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1278] = 26
                                mem[_1278 + 32] = 'SafeMath: division by zero'
                                _1332 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1332] = 30
                                mem[_1332 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                    _1359 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1359 + idx + 68] = mem[_1332 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1359 + 68] = mem[_1359 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1359 + -mem[64] + 100
                                if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                    require ext_code.size(sub_72789c05Address)
                                    call sub_72789c05Address.0x7a240b29 with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                        _1526 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1526] = 26
                                        mem[_1526 + 32] = 'SafeMath: division by zero'
                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                    else:
                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1550 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1550] = 26
                                        mem[_1550 + 32] = 'SafeMath: division by zero'
                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                    mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                    emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                    else:
                        _1235 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1235] = 30
                        mem[_1235 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 > block.number:
                            _1241 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1241 + idx + 68] = mem[_1235 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1241 + 68] = mem[_1241 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1241 + -mem[64] + 100
                        if not block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                            _1385 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1385] = 26
                            mem[_1385 + 32] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                _1410 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1410 + idx + 68] = mem[_1385 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1410 + 68] = mem[_1410 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1410 + -mem[64] + 100
                            require totalAllocPoint
                            _1463 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1463] = 26
                            mem[_1463 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_1b4bc102Address)
                            call sub_1b4bc102Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_72789c05Address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_1b4bc102Address)
                            call sub_1b4bc102Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_72789c05Address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1608 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1608] = 26
                                mem[_1608 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    _1620 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1620 + idx + 68] = mem[_1608 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1620 + 68] = mem[_1620 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1620 + -mem[64] + 100
                                require ext_call.return_data[0]
                                if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (0 / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                        _1786 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1786] = 26
                                        mem[_1786 + 32] = 'SafeMath: division by zero'
                                        _1832 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1832] = 30
                                        mem[_1832 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                            _1850 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_1850 + idx + 68] = mem[_1832 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1850 + 68] = mem[_1850 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _1850 + -mem[64] + 100
                                        if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            require ext_code.size(sub_72789c05Address)
                                            call sub_72789c05Address.0x7a240b29 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _2164 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2164] = 26
                                                mem[_2164 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _2194 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2194] = 26
                                                mem[_2194 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                            mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                    else:
                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1800 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1800] = 26
                                        mem[_1800 + 32] = 'SafeMath: division by zero'
                                        _1849 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1849] = 30
                                        mem[_1849 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                            _1881 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_1881 + idx + 68] = mem[_1849 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1881 + 68] = mem[_1881 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _1881 + -mem[64] + 100
                                        if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            require ext_code.size(sub_72789c05Address)
                                            call sub_72789c05Address.0x7a240b29 with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _2193 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2193] = 26
                                                mem[_2193 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _2226 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2226] = 26
                                                mem[_2226 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                            mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1619 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1619] = 26
                                mem[_1619 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    _1643 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1643 + idx + 68] = mem[_1619 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1643 + 68] = mem[_1643 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1643 + -mem[64] + 100
                                require ext_call.return_data[0]
                                if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                        _1799 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1799] = 26
                                        mem[_1799 + 32] = 'SafeMath: division by zero'
                                        _1848 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1848] = 30
                                        mem[_1848 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                            _1878 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_1878 + idx + 68] = mem[_1848 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1878 + 68] = mem[_1878 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _1878 + -mem[64] + 100
                                        if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            require ext_code.size(sub_72789c05Address)
                                            call sub_72789c05Address.0x7a240b29 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _2192 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2192] = 26
                                                mem[_2192 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _2225 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2225] = 26
                                                mem[_2225 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                            mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                    else:
                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1816 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1816] = 26
                                        mem[_1816 + 32] = 'SafeMath: division by zero'
                                        _1877 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1877] = 30
                                        mem[_1877 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                            _1929 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_1929 + idx + 68] = mem[_1877 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1929 + 68] = mem[_1929 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _1929 + -mem[64] + 100
                                        if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            require ext_code.size(sub_72789c05Address)
                                            call sub_72789c05Address.0x7a240b29 with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _2224 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2224] = 26
                                                mem[_2224 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _2266 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2266] = 26
                                                mem[_2266 + 32] = 'SafeMath: division by zero'
                                                userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                            mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                            emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                        else:
                            require block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512
                            if block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 / block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 != 1:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                                _1409 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1409] = 26
                                mem[_1409 + 32] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    _1431 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1431 + idx + 68] = mem[_1409 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1431 + 68] = mem[_1431 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1431 + -mem[64] + 100
                                require totalAllocPoint
                                _1498 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1498] = 26
                                mem[_1498 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_1b4bc102Address)
                                call sub_1b4bc102Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_72789c05Address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_1b4bc102Address)
                                call sub_1b4bc102Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_72789c05Address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1618 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1618] = 26
                                    mem[_1618 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _1640 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1640 + idx + 68] = mem[_1618 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1640 + 68] = mem[_1640 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1640 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (0 / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                        if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                            _1798 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1798] = 26
                                            mem[_1798 + 32] = 'SafeMath: division by zero'
                                            _1847 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1847] = 30
                                            mem[_1847 + 32] = 'SafeMath: subtraction overflow'
                                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                _1874 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1874 + idx + 68] = mem[_1847 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1874 + 68] = mem[_1874 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1874 + -mem[64] + 100
                                            if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                require ext_code.size(sub_72789c05Address)
                                                call sub_72789c05Address.0x7a240b29 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                    _2191 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2191] = 26
                                                    mem[_2191 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                else:
                                                    require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2223 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2223] = 26
                                                    mem[_2223 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                        else:
                                            require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1815 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1815] = 26
                                            mem[_1815 + 32] = 'SafeMath: division by zero'
                                            _1873 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1873] = 30
                                            mem[_1873 + 32] = 'SafeMath: subtraction overflow'
                                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                                _1925 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1925 + idx + 68] = mem[_1873 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1925 + 68] = mem[_1925 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1925 + -mem[64] + 100
                                            if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                require ext_code.size(sub_72789c05Address)
                                                call sub_72789c05Address.0x7a240b29 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                    _2222 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2222] = 26
                                                    mem[_2222 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                else:
                                                    require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2265 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2265] = 26
                                                    mem[_2265 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1639 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1639] = 26
                                    mem[_1639 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _1673 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1673 + idx + 68] = mem[_1639 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1673 + 68] = mem[_1673 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1673 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                        if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                            _1814 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1814] = 26
                                            mem[_1814 + 32] = 'SafeMath: division by zero'
                                            _1872 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1872] = 30
                                            mem[_1872 + 32] = 'SafeMath: subtraction overflow'
                                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                _1922 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1922 + idx + 68] = mem[_1872 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1922 + 68] = mem[_1922 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1922 + -mem[64] + 100
                                            if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                require ext_code.size(sub_72789c05Address)
                                                call sub_72789c05Address.0x7a240b29 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                    _2221 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2221] = 26
                                                    mem[_2221 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                else:
                                                    require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2264 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2264] = 26
                                                    mem[_2264 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                        else:
                                            require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1831 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1831] = 26
                                            mem[_1831 + 32] = 'SafeMath: division by zero'
                                            _1921 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1921] = 30
                                            mem[_1921 + 32] = 'SafeMath: subtraction overflow'
                                            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                                _1992 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1992 + idx + 68] = mem[_1921 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1992 + 68] = mem[_1992 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1992 + -mem[64] + 100
                                            if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                require ext_code.size(sub_72789c05Address)
                                                call sub_72789c05Address.0x7a240b29 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                    _2263 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2263] = 26
                                                    mem[_2263 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                else:
                                                    require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _2310 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2310] = 26
                                                    mem[_2310 + 32] = 'SafeMath: division by zero'
                                                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                require block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512
                                if (block.number * sub_1fabca96) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96) / block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 != sub_1fabca96:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * sub_1fabca96) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96):
                                    _1430 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1430] = 26
                                    mem[_1430 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _1459 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1459 + idx + 68] = mem[_1430 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1459 + 68] = mem[_1459 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1459 + -mem[64] + 100
                                    require totalAllocPoint
                                    _1524 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1524] = 26
                                    mem[_1524 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_1b4bc102Address)
                                    call sub_1b4bc102Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = sub_72789c05Address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_1b4bc102Address)
                                    call sub_1b4bc102Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_72789c05Address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1638 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1638] = 26
                                        mem[_1638 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _1670 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1670 + idx + 68] = mem[_1638 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1670 + 68] = mem[_1670 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1670 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (0 / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _1813 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1813] = 26
                                                mem[_1813 + 32] = 'SafeMath: division by zero'
                                                _1871 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1871] = 30
                                                mem[_1871 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    _1918 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_1918 + idx + 68] = mem[_1871 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1918 + 68] = mem[_1918 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1918 + -mem[64] + 100
                                                if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2220 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2220] = 26
                                                        mem[_2220 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2262 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2262] = 26
                                                        mem[_2262 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1830 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1830] = 26
                                                mem[_1830 + 32] = 'SafeMath: division by zero'
                                                _1917 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1917] = 30
                                                mem[_1917 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                                    _1988 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_1988 + idx + 68] = mem[_1917 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1988 + 68] = mem[_1988 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1988 + -mem[64] + 100
                                                if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2261 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2261] = 26
                                                        mem[_2261 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2309 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2309] = 26
                                                        mem[_2309 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1669 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1669] = 26
                                        mem[_1669 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _1708 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1708 + idx + 68] = mem[_1669 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1708 + 68] = mem[_1708 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1708 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _1829 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1829] = 26
                                                mem[_1829 + 32] = 'SafeMath: division by zero'
                                                _1916 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1916] = 30
                                                mem[_1916 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    _1985 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_1985 + idx + 68] = mem[_1916 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1985 + 68] = mem[_1985 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1985 + -mem[64] + 100
                                                if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2260 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2260] = 26
                                                        mem[_2260 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2308 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2308] = 26
                                                        mem[_2308 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1846 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1846] = 26
                                                mem[_1846 + 32] = 'SafeMath: division by zero'
                                                _1984 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1984] = 30
                                                mem[_1984 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                                    _2057 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2057 + idx + 68] = mem[_1984 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2057 + 68] = mem[_2057 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _2057 + -mem[64] + 100
                                                if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2307 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2307] = 26
                                                        mem[_2307 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2350 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2350] = 26
                                                        mem[_2350 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                                else:
                                    require (block.number * sub_1fabca96) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96)
                                    if (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / (block.number * sub_1fabca96) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96) != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1458 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1458] = 26
                                    mem[_1458 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _1494 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1494 + idx + 68] = mem[_1458 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1494 + 68] = mem[_1494 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1494 + -mem[64] + 100
                                    require totalAllocPoint
                                    _1548 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1548] = 26
                                    mem[_1548 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_1b4bc102Address)
                                    call sub_1b4bc102Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = sub_72789c05Address
                                    mem[mem[64] + 36] = (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint
                                    require ext_code.size(sub_1b4bc102Address)
                                    call sub_1b4bc102Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_72789c05Address, (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint:
                                        _1668 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1668] = 26
                                        mem[_1668 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _1705 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1705 + idx + 68] = mem[_1668 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1705 + 68] = mem[_1705 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1705 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (0 / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _1828 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1828] = 26
                                                mem[_1828 + 32] = 'SafeMath: division by zero'
                                                _1915 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1915] = 30
                                                mem[_1915 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    _1981 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_1981 + idx + 68] = mem[_1915 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1981 + 68] = mem[_1981 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1981 + -mem[64] + 100
                                                if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2259 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2259] = 26
                                                        mem[_2259 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2306 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2306] = 26
                                                        mem[_2306 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1845 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1845] = 26
                                                mem[_1845 + 32] = 'SafeMath: division by zero'
                                                _1980 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1980] = 30
                                                mem[_1980 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                                    _2053 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2053 + idx + 68] = mem[_1980 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2053 + 68] = mem[_2053 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _2053 + -mem[64] + 100
                                                if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2305 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2305] = 26
                                                        mem[_2305 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2349 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2349] = 26
                                                        mem[_2349 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
                                    else:
                                        require (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint
                                        if 10^12 * (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint / (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1704 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1704] = 26
                                        mem[_1704 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _1738 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1738 + idx + 68] = mem[_1704 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1738 + 68] = mem[_1738 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1738 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (10^12 * (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 += 10^12 * (block.number * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * sub_1fabca96 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.number
                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 > 0:
                                            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                _1844 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1844] = 26
                                                mem[_1844 + 32] = 'SafeMath: division by zero'
                                                _1979 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1979] = 30
                                                mem[_1979 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    _2050 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2050 + idx + 68] = mem[_1979 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2050 + 68] = mem[_2050 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _2050 + -mem[64] + 100
                                                if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2304 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2304] = 26
                                                        mem[_2304 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2348 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2348] = 26
                                                        mem[_2348 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(-userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256, arg2, cd[((32 * idx) + arg1 + 36)]);
                                            else:
                                                require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1870 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1870] = 26
                                                mem[_1870 + 32] = 'SafeMath: division by zero'
                                                _2049 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2049] = 30
                                                mem[_2049 + 32] = 'SafeMath: subtraction overflow'
                                                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12:
                                                    _2109 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2109 + idx + 68] = mem[_2049 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2109 + 68] = mem[_2109 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _2109 + -mem[64] + 100
                                                if (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 > 0:
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    require ext_code.size(sub_72789c05Address)
                                                    call sub_72789c05Address.0x7a240b29 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0:
                                                        _2347 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2347] = 26
                                                        mem[_2347 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = 0
                                                    else:
                                                        require userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0
                                                        if userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _2382 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2382] = 26
                                                        mem[_2382 + 32] = 'SafeMath: division by zero'
                                                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256 = userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12
                                                    mem[mem[64]] = (userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256
                                                    emit Harvest(((userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_0 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(arg2)].field_256), arg2, cd[((32 * idx) + arg1 + 36)]);
        stor1 = 1
        idx = idx + 1
        continue 
}



}
