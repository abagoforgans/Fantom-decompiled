contract main {




// =====================  Runtime code  =====================


#
#  - sub_7492a94b(?)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 stor1;
address sub_3af6bad4Address;
address devAddress;
address feeAddress;
uint256 cockPerBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
mapping of uint8 stor10;

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

function devAddress() payable {
    return devAddress
}

function sub_3af6bad4(?) payable {
    return sub_3af6bad4Address
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function cockPerBlock() payable {
    return cockPerBlock
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
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
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddress = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function sub_218069ef(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_3af6bad4Address)
    call sub_3af6bad4Address.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock <= block.number:
        revert with 0, 'Farm already started'
    startBlock = arg1
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        poolInfo[idx].field_512 = arg1
        idx = idx + 1
        continue 
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

function set(uint256 arg1, uint256 arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
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

function add(uint256 arg1, address arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor10[address(arg2)] = 1
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

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
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
        require ext_code.size(sub_3af6bad4Address)
        staticcall sub_3af6bad4Address.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == this.address:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if poolInfo[arg1].field_256:
                    require ext_code.size(sub_3af6bad4Address)
                    staticcall sub_3af6bad4Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 10000 * 10^18:
                        if poolInfo[arg1].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[arg1].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_3af6bad4Address)
                            call sub_3af6bad4Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_3af6bad4Address)
                            call sub_3af6bad4Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
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
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[arg1].field_512
                            if (block.number * cockPerBlock) - (poolInfo[arg1].field_512 * cockPerBlock) / block.number - poolInfo[arg1].field_512 != cockPerBlock:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.number * cockPerBlock) - (poolInfo[arg1].field_512 * cockPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_3af6bad4Address)
                                call sub_3af6bad4Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_3af6bad4Address)
                                call sub_3af6bad4Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
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
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * cockPerBlock) - (poolInfo[arg1].field_512 * cockPerBlock)
                                if (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / (block.number * cockPerBlock) - (poolInfo[arg1].field_512 * cockPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_3af6bad4Address)
                                call sub_3af6bad4Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_3af6bad4Address)
                                call sub_3af6bad4Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^18 * (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^18 * (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingCock(uint256 arg1, address arg2) payable {
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
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
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
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
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
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * cockPerBlock) - (poolInfo[arg1].field_512 * cockPerBlock) / block.number - poolInfo[arg1].field_512 != cockPerBlock:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * cockPerBlock) - (poolInfo[arg1].field_512 * cockPerBlock):
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
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * cockPerBlock) - (poolInfo[arg1].field_512 * cockPerBlock)
    if (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / (block.number * cockPerBlock) - (poolInfo[arg1].field_512 * cockPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
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
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^18 * (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^18 * (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(sub_3af6bad4Address)
        staticcall sub_3af6bad4Address.0x8da5cb5b with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != this.address:
            poolInfo[idx].field_512 = block.number
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
        require ext_code.size(sub_3af6bad4Address)
        staticcall sub_3af6bad4Address.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 10000 * 10^18:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _144 = mem[64]
        mem[64] = mem[64] + 64
        mem[_144] = 30
        mem[_144 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _145 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_145 + idx + 68] = mem[_144 + idx + 32]
                idx = idx + 32
                continue 
            mem[_145 + 68] = mem[_145 + 70 len 30]
            revert with memory
              from mem[64]
               len _145 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _154 = mem[64]
            mem[64] = mem[64] + 64
            mem[_154] = 26
            mem[_154 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _158 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_158 + idx + 68] = mem[_154 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_158 + 68] = mem[_158 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _158 + -mem[64] + 100
            require totalAllocPoint
            _172 = mem[64]
            mem[64] = mem[64] + 64
            mem[_172] = 26
            mem[_172 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_3af6bad4Address)
            call sub_3af6bad4Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_3af6bad4Address)
            call sub_3af6bad4Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _197 = mem[64]
                mem[64] = mem[64] + 64
                mem[_197] = 26
                mem[_197 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _202 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_202 + idx + 68] = mem[_197 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_202 + 68] = mem[_202 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _202 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _201 = mem[64]
            mem[64] = mem[64] + 64
            mem[_201] = 26
            mem[_201 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _212 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_212 + idx + 68] = mem[_201 + idx + 32]
                idx = idx + 32
                continue 
            mem[_212 + 68] = mem[_212 + 74 len 26]
            revert with memory
              from mem[64]
               len _212 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * cockPerBlock) - (poolInfo[idx].field_512 * cockPerBlock) / block.number - poolInfo[idx].field_512 != cockPerBlock:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * cockPerBlock) - (poolInfo[idx].field_512 * cockPerBlock):
            _157 = mem[64]
            mem[64] = mem[64] + 64
            mem[_157] = 26
            mem[_157 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _162 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_162 + idx + 68] = mem[_157 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_162 + 68] = mem[_162 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _162 + -mem[64] + 100
            require totalAllocPoint
            _177 = mem[64]
            mem[64] = mem[64] + 64
            mem[_177] = 26
            mem[_177 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_3af6bad4Address)
            call sub_3af6bad4Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_3af6bad4Address)
            call sub_3af6bad4Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _200 = mem[64]
                mem[64] = mem[64] + 64
                mem[_200] = 26
                mem[_200 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _209 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_209 + idx + 68] = mem[_200 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_209 + 68] = mem[_209 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _209 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _208 = mem[64]
            mem[64] = mem[64] + 64
            mem[_208] = 26
            mem[_208 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _222 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_222 + idx + 68] = mem[_208 + idx + 32]
                idx = idx + 32
                continue 
            mem[_222 + 68] = mem[_222 + 74 len 26]
            revert with memory
              from mem[64]
               len _222 + -mem[64] + 100
        require (block.number * cockPerBlock) - (poolInfo[idx].field_512 * cockPerBlock)
        if (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / (block.number * cockPerBlock) - (poolInfo[idx].field_512 * cockPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _161 = mem[64]
        mem[64] = mem[64] + 64
        mem[_161] = 26
        mem[_161 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_168 + idx + 68] = mem[_161 + idx + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 74 len 26]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        require totalAllocPoint
        _181 = mem[64]
        mem[64] = mem[64] + 64
        mem[_181] = 26
        mem[_181 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_3af6bad4Address)
        call sub_3af6bad4Address.0x40c10f19 with:
             gas gas_remaining wei
            args devAddress, (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_3af6bad4Address)
        call sub_3af6bad4Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _207 = mem[64]
            mem[64] = mem[64] + 64
            mem[_207] = 26
            mem[_207 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _219 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_219 + idx + 68] = mem[_207 + idx + 32]
                idx = idx + 32
                continue 
            mem[_219 + 68] = mem[_219 + 74 len 26]
            revert with memory
              from mem[64]
               len _219 + -mem[64] + 100
        require (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^18 * (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _218 = mem[64]
        mem[64] = mem[64] + 64
        mem[_218] = 26
        mem[_218 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^18 * (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^18 * (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _234 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_234 + idx + 68] = mem[_218 + idx + 32]
            idx = idx + 32
            continue 
        mem[_234 + 68] = mem[_234 + 74 len 26]
        revert with memory
          from mem[64]
           len _234 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(sub_3af6bad4Address)
        staticcall sub_3af6bad4Address.0x8da5cb5b with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != this.address:
            poolInfo[idx].field_512 = block.number
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
        require ext_code.size(sub_3af6bad4Address)
        staticcall sub_3af6bad4Address.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 10000 * 10^18:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _150 = mem[64]
        mem[64] = mem[64] + 64
        mem[_150] = 30
        mem[_150 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _151 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_151 + idx + 68] = mem[_150 + idx + 32]
                idx = idx + 32
                continue 
            mem[_151 + 68] = mem[_151 + 70 len 30]
            revert with memory
              from mem[64]
               len _151 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _160 = mem[64]
            mem[64] = mem[64] + 64
            mem[_160] = 26
            mem[_160 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _164 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_164 + idx + 68] = mem[_160 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_164 + 68] = mem[_164 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _164 + -mem[64] + 100
            require totalAllocPoint
            _178 = mem[64]
            mem[64] = mem[64] + 64
            mem[_178] = 26
            mem[_178 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_3af6bad4Address)
            call sub_3af6bad4Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_3af6bad4Address)
            call sub_3af6bad4Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = 26
                mem[_203 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _208 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_208 + idx + 68] = mem[_203 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_208 + 68] = mem[_208 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _208 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _207 = mem[64]
            mem[64] = mem[64] + 64
            mem[_207] = 26
            mem[_207 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _218 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_218 + idx + 68] = mem[_207 + idx + 32]
                idx = idx + 32
                continue 
            mem[_218 + 68] = mem[_218 + 74 len 26]
            revert with memory
              from mem[64]
               len _218 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * cockPerBlock) - (poolInfo[idx].field_512 * cockPerBlock) / block.number - poolInfo[idx].field_512 != cockPerBlock:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * cockPerBlock) - (poolInfo[idx].field_512 * cockPerBlock):
            _163 = mem[64]
            mem[64] = mem[64] + 64
            mem[_163] = 26
            mem[_163 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _168 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_168 + idx + 68] = mem[_163 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_168 + 68] = mem[_168 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _168 + -mem[64] + 100
            require totalAllocPoint
            _183 = mem[64]
            mem[64] = mem[64] + 64
            mem[_183] = 26
            mem[_183 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_3af6bad4Address)
            call sub_3af6bad4Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_3af6bad4Address)
            call sub_3af6bad4Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _206 = mem[64]
                mem[64] = mem[64] + 64
                mem[_206] = 26
                mem[_206 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _215 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_215 + idx + 68] = mem[_206 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_215 + 68] = mem[_215 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _215 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _214 = mem[64]
            mem[64] = mem[64] + 64
            mem[_214] = 26
            mem[_214 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _228 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_228 + idx + 68] = mem[_214 + idx + 32]
                idx = idx + 32
                continue 
            mem[_228 + 68] = mem[_228 + 74 len 26]
            revert with memory
              from mem[64]
               len _228 + -mem[64] + 100
        require (block.number * cockPerBlock) - (poolInfo[idx].field_512 * cockPerBlock)
        if (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / (block.number * cockPerBlock) - (poolInfo[idx].field_512 * cockPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _167 = mem[64]
        mem[64] = mem[64] + 64
        mem[_167] = 26
        mem[_167 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _174 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_174 + idx + 68] = mem[_167 + idx + 32]
                idx = idx + 32
                continue 
            mem[_174 + 68] = mem[_174 + 74 len 26]
            revert with memory
              from mem[64]
               len _174 + -mem[64] + 100
        require totalAllocPoint
        _187 = mem[64]
        mem[64] = mem[64] + 64
        mem[_187] = 26
        mem[_187 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_3af6bad4Address)
        call sub_3af6bad4Address.0x40c10f19 with:
             gas gas_remaining wei
            args devAddress, (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_3af6bad4Address)
        call sub_3af6bad4Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _213 = mem[64]
            mem[64] = mem[64] + 64
            mem[_213] = 26
            mem[_213 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _225 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_225 + idx + 68] = mem[_213 + idx + 32]
                idx = idx + 32
                continue 
            mem[_225 + 68] = mem[_225 + 74 len 26]
            revert with memory
              from mem[64]
               len _225 + -mem[64] + 100
        require (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^18 * (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _224 = mem[64]
        mem[64] = mem[64] + 64
        mem[_224] = 26
        mem[_224 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^18 * (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^18 * (block.number * cockPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cockPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _240 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_240 + idx + 68] = mem[_224 + idx + 32]
            idx = idx + 32
            continue 
        mem[_240 + 68] = mem[_240 + 74 len 26]
        revert with memory
          from mem[64]
           len _240 + -mem[64] + 100
    cockPerBlock = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function sub_5bbdf38e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require uint16(cd[((32 * idx) + cd[4] + 36)]) < poolInfo.length
        mem[0] = 6
        if block.number > poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512:
            require ext_code.size(sub_3af6bad4Address)
            staticcall sub_3af6bad4Address.0x8da5cb5b with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) == this.address:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_0)
                staticcall poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256:
                        require ext_code.size(sub_3af6bad4Address)
                        staticcall sub_3af6bad4Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 10000 * 10^18:
                            _163 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_163] = 30
                            mem[_163 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 > block.number:
                                _164 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_164 + idx + 68] = mem[_163 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_164 + 68] = mem[_164 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _164 + -mem[64] + 100
                            if not block.number - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512:
                                _174 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_174] = 26
                                mem[_174 + 32] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    _178 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_178 + idx + 68] = mem[_174 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_178 + 68] = mem[_178 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _178 + -mem[64] + 100
                                require totalAllocPoint
                                _192 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_192] = 26
                                mem[_192 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_3af6bad4Address)
                                call sub_3af6bad4Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_3af6bad4Address)
                                call sub_3af6bad4Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _217 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_217] = 26
                                    mem[_217 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _222 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_222 + idx + 68] = mem[_217 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_222 + 68] = mem[_222 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _222 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 + (0 / ext_call.return_data[0]) < poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _221 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_221] = 26
                                    mem[_221 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _232 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_232 + idx + 68] = mem[_221 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_232 + 68] = mem[_232 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _232 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512
                                if (block.number * cockPerBlock) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock) / block.number - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 != cockPerBlock:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * cockPerBlock) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock):
                                    _177 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_177] = 26
                                    mem[_177 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _182 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_182 + idx + 68] = mem[_177 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_182 + 68] = mem[_182 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _182 + -mem[64] + 100
                                    require totalAllocPoint
                                    _197 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_197] = 26
                                    mem[_197 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_3af6bad4Address)
                                    call sub_3af6bad4Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_3af6bad4Address)
                                    call sub_3af6bad4Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _220 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_220] = 26
                                        mem[_220 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _229 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_229 + idx + 68] = mem[_220 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_229 + 68] = mem[_229 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _229 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 + (0 / ext_call.return_data[0]) < poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _228 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_228] = 26
                                        mem[_228 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _242 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_242 + idx + 68] = mem[_228 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_242 + 68] = mem[_242 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _242 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require (block.number * cockPerBlock) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock)
                                    if (block.number * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) / (block.number * cockPerBlock) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock) != poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _181 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_181] = 26
                                    mem[_181 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _188 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_188 + idx + 68] = mem[_181 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_188 + 68] = mem[_188 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _188 + -mem[64] + 100
                                    require totalAllocPoint
                                    _201 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_201] = 26
                                    mem[_201 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_3af6bad4Address)
                                    call sub_3af6bad4Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, (block.number * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.number * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint
                                    require ext_code.size(sub_3af6bad4Address)
                                    call sub_3af6bad4Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint:
                                        _227 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_227] = 26
                                        mem[_227 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _239 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_239 + idx + 68] = mem[_227 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_239 + 68] = mem[_239 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _239 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 + (0 / ext_call.return_data[0]) < poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require (block.number * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint
                                        if 10^18 * (block.number * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint / (block.number * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _238 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_238] = 26
                                        mem[_238 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _254 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_254 + idx + 68] = mem[_238 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_254 + 68] = mem[_254 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _254 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 + (10^18 * (block.number * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 += 10^18 * (block.number * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) - (poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 * cockPerBlock * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 = block.number
        require idx < ('cd', 4).length
        require uint16(cd[((32 * idx) + cd[4] + 36)]) < poolInfo.length
        mem[0] = 6
        poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require uint16(cd[((32 * idx) + cd[36] + 36)]) < poolInfo.length
        mem[0] = 6
        require idx < ('cd', 68).length
        poolInfo[uint16(cd[((32 * idx) + cd[36] + 36)])].field_256 = cd[((32 * idx) + cd[68] + 36)]
        idx = idx + 1
        continue 
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
            if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                else:
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 554 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
            else:
                require ext_code.size(sub_3af6bad4Address)
                staticcall sub_3af6bad4Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_3af6bad4Address)
                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call sub_3af6bad4Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    else:
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 618 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                else:
                    call sub_3af6bad4Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    else:
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[580 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 618 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                else:
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 554 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
            else:
                require ext_code.size(sub_3af6bad4Address)
                staticcall sub_3af6bad4Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_3af6bad4Address)
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call sub_3af6bad4Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                else:
                    call sub_3af6bad4Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                else:
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 627 len 22]
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 618 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
    else:
        require ext_code.size(sub_3af6bad4Address)
        staticcall sub_3af6bad4Address.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            poolInfo[arg1].field_512 = block.number
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    else:
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
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
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                else:
                    require ext_code.size(sub_3af6bad4Address)
                    staticcall sub_3af6bad4Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_3af6bad4Address)
                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_3af6bad4Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_3af6bad4Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    else:
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[580 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 618 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    else:
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                else:
                    require ext_code.size(sub_3af6bad4Address)
                    staticcall sub_3af6bad4Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_3af6bad4Address)
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_3af6bad4Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 618 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    else:
                        call sub_3af6bad4Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[580 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 618 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                    if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    else:
                        require ext_code.size(sub_3af6bad4Address)
                        staticcall sub_3af6bad4Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3af6bad4Address)
                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_3af6bad4Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_3af6bad4Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[580 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 618 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
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
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    else:
                        require ext_code.size(sub_3af6bad4Address)
                        staticcall sub_3af6bad4Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3af6bad4Address)
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_3af6bad4Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_3af6bad4Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 618 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
            else:
                if not poolInfo[arg1].field_256:
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                            else:
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
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
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                        else:
                            require ext_code.size(sub_3af6bad4Address)
                            staticcall sub_3af6bad4Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_3af6bad4Address)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_3af6bad4Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_3af6bad4Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                            else:
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 618 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                            else:
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                        else:
                            require ext_code.size(sub_3af6bad4Address)
                            staticcall sub_3af6bad4Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_3af6bad4Address)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_3af6bad4Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_3af6bad4Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                            else:
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 618 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                else:
                    require ext_code.size(sub_3af6bad4Address)
                    staticcall sub_3af6bad4Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 10000 * 10^18:
                        poolInfo[arg1].field_512 = block.number
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                else:
                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                            else:
                                require ext_code.size(sub_3af6bad4Address)
                                staticcall sub_3af6bad4Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_3af6bad4Address)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_3af6bad4Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call sub_3af6bad4Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                else:
                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 618 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                else:
                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                            else:
                                require ext_code.size(sub_3af6bad4Address)
                                staticcall sub_3af6bad4Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_3af6bad4Address)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_3af6bad4Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[548]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 627 len 22]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 618 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                else:
                                    call sub_3af6bad4Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[389 len 31]
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                        mem[580 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[548]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 627 len 22]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 618 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    else:
                        if poolInfo[arg1].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[arg1].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_3af6bad4Address)
                            call sub_3af6bad4Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_3af6bad4Address)
                            call sub_3af6bad4Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        require ext_code.size(sub_3af6bad4Address)
                                        staticcall sub_3af6bad4Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_3af6bad4Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_3af6bad4Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_3af6bad4Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[804]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 883 len 22]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 874 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        require ext_code.size(sub_3af6bad4Address)
                                        staticcall sub_3af6bad4Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_3af6bad4Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_3af6bad4Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_3af6bad4Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                            mem[836 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[804]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 883 len 22]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 874 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        require ext_code.size(sub_3af6bad4Address)
                                        staticcall sub_3af6bad4Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_3af6bad4Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_3af6bad4Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_3af6bad4Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[804]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 883 len 22]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 874 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
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
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        require ext_code.size(sub_3af6bad4Address)
                                        staticcall sub_3af6bad4Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_3af6bad4Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_3af6bad4Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[804]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 883 len 22]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 874 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            call sub_3af6bad4Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                mem[836 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[804]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 883 len 22]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 874 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                        else:
                            require block.number - poolInfo[arg1].field_512
                            if (block.number * cockPerBlock) - (poolInfo[arg1].field_512 * cockPerBlock) / block.number - poolInfo[arg1].field_512 != cockPerBlock:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.number * cockPerBlock) - (poolInfo[arg1].field_512 * cockPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_3af6bad4Address)
                                call sub_3af6bad4Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_3af6bad4Address)
                                call sub_3af6bad4Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            require ext_code.size(sub_3af6bad4Address)
                                            staticcall sub_3af6bad4Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_3af6bad4Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[804]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 883 len 22]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 874 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                    mem[836 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[804]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 883 len 22]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 874 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            require ext_code.size(sub_3af6bad4Address)
                                            staticcall sub_3af6bad4Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_3af6bad4Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                mem[836 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[804]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 883 len 22]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 874 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            require ext_code.size(sub_3af6bad4Address)
                                            staticcall sub_3af6bad4Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_3af6bad4Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[804]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 883 len 22]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 874 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                    mem[836 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[804]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 883 len 22]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 874 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            require ext_code.size(sub_3af6bad4Address)
                                            staticcall sub_3af6bad4Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_3af6bad4Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[804]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 883 len 22]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 874 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                    mem[836 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[804]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 883 len 22]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 874 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                            else:
                                require (block.number * cockPerBlock) - (poolInfo[arg1].field_512 * cockPerBlock)
                                if (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / (block.number * cockPerBlock) - (poolInfo[arg1].field_512 * cockPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_3af6bad4Address)
                                call sub_3af6bad4Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_3af6bad4Address)
                                call sub_3af6bad4Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            require ext_code.size(sub_3af6bad4Address)
                                            staticcall sub_3af6bad4Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_3af6bad4Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[804]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 883 len 22]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 874 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                    mem[836 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[804]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 883 len 22]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 874 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            require ext_code.size(sub_3af6bad4Address)
                                            staticcall sub_3af6bad4Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_3af6bad4Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[804]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 883 len 22]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 874 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                else:
                                    require (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^18 * (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^18 * (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * (block.number * cockPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cockPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            require ext_code.size(sub_3af6bad4Address)
                                            staticcall sub_3af6bad4Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_3af6bad4Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[804]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 883 len 22]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 874 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                    mem[836 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[804]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 883 len 22]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 874 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(poolInfo[arg1].field_0):
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            require ext_code.size(sub_3af6bad4Address)
                                            staticcall sub_3af6bad4Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_3af6bad4Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[804]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 883 len 22]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 874 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                call sub_3af6bad4Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x7373616665436f636b5472616e736665723a205472616e73666572206661696c65, mem[645 len 31]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                                    mem[836 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[804]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 883 len 22]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 874 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
    emit Withdraw(arg2, msg.sender, arg1);
    stor1 = 1
}



}
