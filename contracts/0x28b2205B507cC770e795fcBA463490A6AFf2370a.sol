contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address sub_a09c0754Address;
address sub_a20c4ea1Address;
address devaddr;
uint256 sub_a966dcf2;
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
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
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

function sub_a09c0754(?) payable {
    return sub_a09c0754Address
}

function sub_a20c4ea1(?) payable {
    return sub_a20c4ea1Address
}

function sub_a966dcf2(?) payable {
    return sub_a966dcf2
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 'pool inexistent'
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
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
                    require ext_code.size(sub_a09c0754Address)
                    call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_a09c0754Address)
                    call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_a20c4ea1Address, 0 / totalAllocPoint
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
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) / block.number - poolInfo[arg1].field_512 != sub_a966dcf2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_a20c4ea1Address, 0 / totalAllocPoint
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2)
                        if (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_a20c4ea1Address, (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingOlive(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
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
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) / block.number - poolInfo[arg1].field_512 != sub_a966dcf2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2)
    if (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint:
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
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
        _128 = mem[64]
        mem[64] = mem[64] + 64
        mem[_128] = 30
        mem[_128 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _129 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_129 + idx + 68] = mem[_128 + idx + 32]
                idx = idx + 32
                continue 
            mem[_129 + 68] = mem[_129 + 70 len 30]
            revert with memory
              from mem[64]
               len _129 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _138 = mem[64]
            mem[64] = mem[64] + 64
            mem[_138] = 26
            mem[_138 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_142 + idx + 68] = mem[_138 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_142 + 68] = mem[_142 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _142 + -mem[64] + 100
            require totalAllocPoint
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_a20c4ea1Address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_a20c4ea1Address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _181 = mem[64]
                mem[64] = mem[64] + 64
                mem[_181] = 26
                mem[_181 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _186 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_186 + idx + 68] = mem[_181 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_186 + 68] = mem[_186 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _186 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _185 = mem[64]
            mem[64] = mem[64] + 64
            mem[_185] = 26
            mem[_185 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _196 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_196 + idx + 68] = mem[_185 + idx + 32]
                idx = idx + 32
                continue 
            mem[_196 + 68] = mem[_196 + 74 len 26]
            revert with memory
              from mem[64]
               len _196 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2) / block.number - poolInfo[idx].field_512 != sub_a966dcf2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2):
            _141 = mem[64]
            mem[64] = mem[64] + 64
            mem[_141] = 26
            mem[_141 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _146 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_146 + idx + 68] = mem[_141 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_146 + 68] = mem[_146 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _146 + -mem[64] + 100
            require totalAllocPoint
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_a20c4ea1Address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_a20c4ea1Address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _184 = mem[64]
                mem[64] = mem[64] + 64
                mem[_184] = 26
                mem[_184 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _193 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_193 + idx + 68] = mem[_184 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_193 + 68] = mem[_193 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _193 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _192 = mem[64]
            mem[64] = mem[64] + 64
            mem[_192] = 26
            mem[_192 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _206 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_206 + idx + 68] = mem[_192 + idx + 32]
                idx = idx + 32
                continue 
            mem[_206 + 68] = mem[_206 + 74 len 26]
            revert with memory
              from mem[64]
               len _206 + -mem[64] + 100
        require (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2)
        if (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _145 = mem[64]
        mem[64] = mem[64] + 64
        mem[_145] = 26
        mem[_145 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _152 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_152 + idx + 68] = mem[_145 + idx + 32]
                idx = idx + 32
                continue 
            mem[_152 + 68] = mem[_152 + 74 len 26]
            revert with memory
              from mem[64]
               len _152 + -mem[64] + 100
        require totalAllocPoint
        _165 = mem[64]
        mem[64] = mem[64] + 64
        mem[_165] = 26
        mem[_165 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_a09c0754Address)
        call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args devaddr, (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_a20c4ea1Address
        mem[mem[64] + 36] = (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_a09c0754Address)
        call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_a20c4ea1Address, (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint:
            _191 = mem[64]
            mem[64] = mem[64] + 64
            mem[_191] = 26
            mem[_191 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _203 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_203 + idx + 68] = mem[_191 + idx + 32]
                idx = idx + 32
                continue 
            mem[_203 + 68] = mem[_203 + 74 len 26]
            revert with memory
              from mem[64]
               len _203 + -mem[64] + 100
        require (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _202 = mem[64]
        mem[64] = mem[64] + 64
        mem[_202] = 26
        mem[_202 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _218 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_218 + idx + 68] = mem[_202 + idx + 32]
            idx = idx + 32
            continue 
        mem[_218 + 68] = mem[_218 + 74 len 26]
        revert with memory
          from mem[64]
           len _218 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 0, 'pool inexistent'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
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
                _173 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_173 + idx + 68] = mem[_171 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_173 + 68] = mem[_173 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _173 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_182] = 26
                mem[_182 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _186 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_186 + idx + 68] = mem[_182 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_186 + 68] = mem[_186 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _186 + -mem[64] + 100
                require totalAllocPoint
                _200 = mem[64]
                mem[64] = mem[64] + 64
                mem[_200] = 26
                mem[_200 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_a20c4ea1Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_a20c4ea1Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_225] = 26
                    mem[_225 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _230 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_230 + idx + 68] = mem[_225 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_230 + 68] = mem[_230 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _230 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_229] = 26
                mem[_229 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _240 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_240 + idx + 68] = mem[_229 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_240 + 68] = mem[_240 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _240 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2) / block.number - poolInfo[idx].field_512 != sub_a966dcf2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2):
                _185 = mem[64]
                mem[64] = mem[64] + 64
                mem[_185] = 26
                mem[_185 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _190 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_190 + idx + 68] = mem[_185 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_190 + 68] = mem[_190 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _190 + -mem[64] + 100
                require totalAllocPoint
                _205 = mem[64]
                mem[64] = mem[64] + 64
                mem[_205] = 26
                mem[_205 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_a20c4ea1Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_a20c4ea1Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _228 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_228] = 26
                    mem[_228 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _237 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_237 + idx + 68] = mem[_228 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_237 + 68] = mem[_237 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _237 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_236] = 26
                mem[_236 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _250 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_250 + idx + 68] = mem[_236 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_250 + 68] = mem[_250 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _250 + -mem[64] + 100
            require (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2)
            if (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _189 = mem[64]
            mem[64] = mem[64] + 64
            mem[_189] = 26
            mem[_189 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _196 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_196 + idx + 68] = mem[_189 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_196 + 68] = mem[_196 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _196 + -mem[64] + 100
            require totalAllocPoint
            _209 = mem[64]
            mem[64] = mem[64] + 64
            mem[_209] = 26
            mem[_209 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_a20c4ea1Address
            mem[mem[64] + 36] = (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_a20c4ea1Address, (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint:
                _235 = mem[64]
                mem[64] = mem[64] + 64
                mem[_235] = 26
                mem[_235 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_247 + idx + 68] = mem[_235 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_247 + 68] = mem[_247 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _247 + -mem[64] + 100
            require (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _246 = mem[64]
            mem[64] = mem[64] + 64
            mem[_246] = 26
            mem[_246 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _262 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_262 + idx + 68] = mem[_246 + idx + 32]
                idx = idx + 32
                continue 
            mem[_262 + 68] = mem[_262 + 74 len 26]
            revert with memory
              from mem[64]
               len _262 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 10
    if stor10[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
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
            _187 = mem[64]
            mem[64] = mem[64] + 64
            mem[_187] = 30
            mem[_187 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _188 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_188 + idx + 68] = mem[_187 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_188 + 68] = mem[_188 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _188 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _197 = mem[64]
                mem[64] = mem[64] + 64
                mem[_197] = 26
                mem[_197 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _201 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_201 + idx + 68] = mem[_197 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_201 + 68] = mem[_201 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _201 + -mem[64] + 100
                require totalAllocPoint
                _215 = mem[64]
                mem[64] = mem[64] + 64
                mem[_215] = 26
                mem[_215 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_a20c4ea1Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_a20c4ea1Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _240 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_240] = 26
                    mem[_240 + 32] = 'SafeMath: division by zero'
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
                        mem[_245 + idx + 68] = mem[_240 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_245 + 68] = mem[_245 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _245 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
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
                _255 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_255 + idx + 68] = mem[_244 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_255 + 68] = mem[_255 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _255 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2) / block.number - poolInfo[idx].field_512 != sub_a966dcf2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2):
                _200 = mem[64]
                mem[64] = mem[64] + 64
                mem[_200] = 26
                mem[_200 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _205 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_205 + idx + 68] = mem[_200 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_205 + 68] = mem[_205 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _205 + -mem[64] + 100
                require totalAllocPoint
                _220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_220] = 26
                mem[_220 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_a20c4ea1Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_a20c4ea1Address, 0 / totalAllocPoint
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
                    _252 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_252 + idx + 68] = mem[_243 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_252 + 68] = mem[_252 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _252 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _251 = mem[64]
                mem[64] = mem[64] + 64
                mem[_251] = 26
                mem[_251 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _265 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_265 + idx + 68] = mem[_251 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_265 + 68] = mem[_265 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _265 + -mem[64] + 100
            require (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2)
            if (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _204 = mem[64]
            mem[64] = mem[64] + 64
            mem[_204] = 26
            mem[_204 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _211 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_211 + idx + 68] = mem[_204 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_211 + 68] = mem[_211 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _211 + -mem[64] + 100
            require totalAllocPoint
            _224 = mem[64]
            mem[64] = mem[64] + 64
            mem[_224] = 26
            mem[_224 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_a20c4ea1Address
            mem[mem[64] + 36] = (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_a20c4ea1Address, (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint:
                _250 = mem[64]
                mem[64] = mem[64] + 64
                mem[_250] = 26
                mem[_250 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _262 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_262 + idx + 68] = mem[_250 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_262 + 68] = mem[_262 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _262 + -mem[64] + 100
            require (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _261 = mem[64]
            mem[64] = mem[64] + 64
            mem[_261] = 26
            mem[_261 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _277 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_277 + idx + 68] = mem[_261 + idx + 32]
                idx = idx + 32
                continue 
            mem[_277 + 68] = mem[_277 + 74 len 26]
            revert with memory
              from mem[64]
               len _277 + -mem[64] + 100
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
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 'pool inexistent'
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
            if arg2 <= 0:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                    require ext_code.size(sub_a20c4ea1Address)
                    call sub_a20c4ea1Address.0x2f33d010 with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                    require ext_code.size(sub_a20c4ea1Address)
                    call sub_a20c4ea1Address.0x2f33d010 with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if arg2 <= 0:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[544 len 4] = 0
                mem[516 len 0] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[452]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 531 len 22]
                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)].field_0 += arg2
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 522 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_a20c4ea1Address)
                        call sub_a20c4ea1Address.0x2f33d010 with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_a20c4ea1Address)
                        call sub_a20c4ea1Address.0x2f33d010 with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[544 len 4] = 0
                    mem[516 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 522 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            if not poolInfo[arg1].field_256:
                poolInfo[arg1].field_512 = block.number
                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                            require ext_code.size(sub_a20c4ea1Address)
                            call sub_a20c4ea1Address.0x2f33d010 with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                            require ext_code.size(sub_a20c4ea1Address)
                            call sub_a20c4ea1Address.0x2f33d010 with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_a09c0754Address)
                    call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_a09c0754Address)
                    call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_a20c4ea1Address, 0 / totalAllocPoint
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
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) / block.number - poolInfo[arg1].field_512 != sub_a966dcf2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_a20c4ea1Address, 0 / totalAllocPoint
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2)
                        if (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_a20c4ea1Address, (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[548 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[672 len 4] = 0
                        mem[644 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[580]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 659 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 650 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                            require ext_code.size(sub_a20c4ea1Address)
                            call sub_a20c4ea1Address.0x2f33d010 with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                            require ext_code.size(sub_a20c4ea1Address)
                            call sub_a20c4ea1Address.0x2f33d010 with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[676 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[800 len 4] = 0
                        mem[772 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 778 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
    stor1 = 1
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        stor1 = 2
        if arg1 >= poolInfo.length:
            revert with 0, 'pool inexistent'
        else:
            if userInfo[arg1][address(msg.sender)].field_0 < arg2:
                revert with 0, 'withdraw: not good'
            else:
                require arg1 < poolInfo.length
                if block.number > poolInfo[arg1].field_512:
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][address(msg.sender)].field_0:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                            if arg2 <= 0:
                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                    else:
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                        stor1 = 1
                                                else:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                    stor1 = 1
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    else:
                                                        mem[452 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                        mem[516 len 0] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                           funct uint32(msg.sender)
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: division by zero'
                                                        else:
                                                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size > 0:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                            else:
                                                                if return_data.size <= 0:
                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        33,
                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                        mem[ceil32(return_data.size) + 554 len 31]
                                                                        else:
                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                            stor1 = 1
                                                                    else:
                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                        stor1 = 1
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if not mem[484]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    42,
                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                    mem[ceil32(return_data.size) + 563 len 22]
                                                                    else:
                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[ceil32(return_data.size) + 554 len 31]
                                                                            else:
                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                stor1 = 1
                                                                        else:
                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                            stor1 = 1
                                        else:
                                            require ext_code.size(sub_a20c4ea1Address)
                                            call sub_a20c4ea1Address.0x2f33d010 with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if arg2 <= 0:
                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                        else:
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                            stor1 = 1
                                                    else:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                        stor1 = 1
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        else:
                                                            mem[452 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                            mem[516 len 0] = 0
                                                            call poolInfo[arg1].field_0 with:
                                                               funct uint32(msg.sender)
                                                                 gas gas_remaining wei
                                                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                                            if not return_data.size:
                                                                require not ext_call.success
                                                                revert with 'SafeMath: division by zero'
                                                            else:
                                                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size > 0:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                else:
                                                                    if return_data.size <= 0:
                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[ceil32(return_data.size) + 554 len 31]
                                                                            else:
                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                stor1 = 1
                                                                        else:
                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                            stor1 = 1
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not mem[484]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        42,
                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                        mem[ceil32(return_data.size) + 563 len 22]
                                                                        else:
                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                33,
                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                                                else:
                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                    stor1 = 1
                                                                            else:
                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                stor1 = 1
                            else:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                else:
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                    stor1 = 1
                                            else:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                emit Withdraw(arg2, msg.sender, arg1);
                                                stor1 = 1
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                else:
                                                    mem[452 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                    mem[516 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: division by zero'
                                                    else:
                                                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                        else:
                                                            if return_data.size <= 0:
                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    33,
                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                    mem[ceil32(return_data.size) + 554 len 31]
                                                                    else:
                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                        stor1 = 1
                                                                else:
                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                    stor1 = 1
                                                            else:
                                                                require return_data.size >= 32
                                                                if not mem[484]:
                                                                    revert with 0, 
                                                                                32,
                                                                                42,
                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                mem[ceil32(return_data.size) + 563 len 22]
                                                                else:
                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        33,
                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                        mem[ceil32(return_data.size) + 554 len 31]
                                                                        else:
                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                            stor1 = 1
                                                                    else:
                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                        stor1 = 1
                                    else:
                                        require ext_code.size(sub_a20c4ea1Address)
                                        call sub_a20c4ea1Address.0x2f33d010 with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if arg2 <= 0:
                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                    else:
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                        stor1 = 1
                                                else:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                    stor1 = 1
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    else:
                                                        mem[452 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                        mem[516 len 0] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                           funct uint32(msg.sender)
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: division by zero'
                                                        else:
                                                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size > 0:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                            else:
                                                                if return_data.size <= 0:
                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        33,
                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                        mem[ceil32(return_data.size) + 554 len 31]
                                                                        else:
                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                            stor1 = 1
                                                                    else:
                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                        stor1 = 1
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if not mem[484]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    42,
                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                    mem[ceil32(return_data.size) + 563 len 22]
                                                                    else:
                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[ceil32(return_data.size) + 554 len 31]
                                                                            else:
                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                stor1 = 1
                                                                        else:
                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                            stor1 = 1
                        else:
                            if poolInfo[arg1].field_256:
                                if poolInfo[arg1].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if block.number - poolInfo[arg1].field_512:
                                        require block.number - poolInfo[arg1].field_512
                                        if (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) / block.number - poolInfo[arg1].field_512 != sub_a966dcf2:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        else:
                                            if (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2):
                                                require (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2)
                                                if (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) != poolInfo[arg1].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                else:
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require totalAllocPoint
                                                        require ext_code.size(sub_a09c0754Address)
                                                        call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args devaddr, (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(sub_a09c0754Address)
                                                            call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args sub_a20c4ea1Address, (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                                    require (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint
                                                                    if 10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                                    else:
                                                                        if ext_call.return_data[0] <= 0:
                                                                            revert with 0, 'SafeMath: division by zero'
                                                                        else:
                                                                            require ext_call.return_data[0]
                                                                            if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                                                poolInfo[arg1].field_512 = block.number
                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                                                    else:
                                                                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                                                                if arg2 <= 0:
                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                        else:
                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                            stor1 = 1
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                        stor1 = 1
                                                                                                else:
                                                                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                            revert with 0, 'Address: call to non-contract'
                                                                                                        else:
                                                                                                            mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                            mem[772 len 0] = 0
                                                                                                            call poolInfo[arg1].field_0 with:
                                                                                                               funct uint32(msg.sender)
                                                                                                                 gas gas_remaining wei
                                                                                                                args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                            if not return_data.size:
                                                                                                                require not ext_call.success
                                                                                                                revert with 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                if not ext_call.success:
                                                                                                                    if return_data.size > 0:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                                else:
                                                                                                                    if return_data.size <= 0:
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            33,
                                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if not mem[740]:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        42,
                                                                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                        mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                        else:
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                    revert with 0, 
                                                                                                                                                32,
                                                                                                                                                33,
                                                                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                                else:
                                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                    stor1 = 1
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                                            else:
                                                                                                require ext_code.size(sub_a20c4ea1Address)
                                                                                                call sub_a20c4ea1Address.0x2f33d010 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    if arg2 <= 0:
                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                            else:
                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                stor1 = 1
                                                                                                        else:
                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                            stor1 = 1
                                                                                                    else:
                                                                                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                                revert with 0, 'Address: call to non-contract'
                                                                                                            else:
                                                                                                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                                mem[772 len 0] = 0
                                                                                                                call poolInfo[arg1].field_0 with:
                                                                                                                   funct uint32(msg.sender)
                                                                                                                     gas gas_remaining wei
                                                                                                                    args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                                if not return_data.size:
                                                                                                                    require not ext_call.success
                                                                                                                    revert with 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                    if not ext_call.success:
                                                                                                                        if return_data.size > 0:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                                                                    else:
                                                                                                                        if return_data.size <= 0:
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                    revert with 0, 
                                                                                                                                                32,
                                                                                                                                                33,
                                                                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                                else:
                                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                    stor1 = 1
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                                                                        else:
                                                                                                                            require return_data.size >= 32
                                                                                                                            if not mem[740]:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            42,
                                                                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                            mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                            else:
                                                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                        revert with 0, 
                                                                                                                                                    32,
                                                                                                                                                    33,
                                                                                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                                    else:
                                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                        stor1 = 1
                                                                                                                                else:
                                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                    stor1 = 1
                                                                                else:
                                                                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                                                            if arg2 <= 0:
                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                        stor1 = 1
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                    stor1 = 1
                                                                                            else:
                                                                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                        revert with 0, 'Address: call to non-contract'
                                                                                                    else:
                                                                                                        mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                        mem[772 len 0] = 0
                                                                                                        call poolInfo[arg1].field_0 with:
                                                                                                           funct uint32(msg.sender)
                                                                                                             gas gas_remaining wei
                                                                                                            args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                        if not return_data.size:
                                                                                                            require not ext_call.success
                                                                                                            revert with 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                            if not ext_call.success:
                                                                                                                if return_data.size > 0:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                                                            else:
                                                                                                                if return_data.size <= 0:
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if not mem[740]:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    42,
                                                                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                    mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                    else:
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            33,
                                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                        else:
                                                                                            require ext_code.size(sub_a20c4ea1Address)
                                                                                            call sub_a20c4ea1Address.0x2f33d010 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                if arg2 <= 0:
                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                        else:
                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                            stor1 = 1
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                        stor1 = 1
                                                                                                else:
                                                                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                            revert with 0, 'Address: call to non-contract'
                                                                                                        else:
                                                                                                            mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                            mem[772 len 0] = 0
                                                                                                            call poolInfo[arg1].field_0 with:
                                                                                                               funct uint32(msg.sender)
                                                                                                                 gas gas_remaining wei
                                                                                                                args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                            if not return_data.size:
                                                                                                                require not ext_call.success
                                                                                                                revert with 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                if not ext_call.success:
                                                                                                                    if return_data.size > 0:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                                else:
                                                                                                                    if return_data.size <= 0:
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            33,
                                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if not mem[740]:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        42,
                                                                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                        mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                        else:
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                    revert with 0, 
                                                                                                                                                32,
                                                                                                                                                33,
                                                                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                                else:
                                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                    stor1 = 1
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                else:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require ext_call.return_data[0]
                                                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                                            poolInfo[arg1].field_512 = block.number
                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                                                else:
                                                                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                                                            if arg2 <= 0:
                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                        stor1 = 1
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                    stor1 = 1
                                                                                            else:
                                                                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                        revert with 0, 'Address: call to non-contract'
                                                                                                    else:
                                                                                                        mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                        mem[772 len 0] = 0
                                                                                                        call poolInfo[arg1].field_0 with:
                                                                                                           funct uint32(msg.sender)
                                                                                                             gas gas_remaining wei
                                                                                                            args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                        if not return_data.size:
                                                                                                            require not ext_call.success
                                                                                                            revert with 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                            if not ext_call.success:
                                                                                                                if return_data.size > 0:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                                                            else:
                                                                                                                if return_data.size <= 0:
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if not mem[740]:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    42,
                                                                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                    mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                    else:
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            33,
                                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                        else:
                                                                                            require ext_code.size(sub_a20c4ea1Address)
                                                                                            call sub_a20c4ea1Address.0x2f33d010 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                if arg2 <= 0:
                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                        else:
                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                            stor1 = 1
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                        stor1 = 1
                                                                                                else:
                                                                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                            revert with 0, 'Address: call to non-contract'
                                                                                                        else:
                                                                                                            mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                            mem[772 len 0] = 0
                                                                                                            call poolInfo[arg1].field_0 with:
                                                                                                               funct uint32(msg.sender)
                                                                                                                 gas gas_remaining wei
                                                                                                                args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                            if not return_data.size:
                                                                                                                require not ext_call.success
                                                                                                                revert with 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                if not ext_call.success:
                                                                                                                    if return_data.size > 0:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                                else:
                                                                                                                    if return_data.size <= 0:
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            33,
                                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if not mem[740]:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        42,
                                                                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                        mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                        else:
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                    revert with 0, 
                                                                                                                                                32,
                                                                                                                                                33,
                                                                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                                else:
                                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                    stor1 = 1
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                            else:
                                                                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                                                        if arg2 <= 0:
                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                    stor1 = 1
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                stor1 = 1
                                                                                        else:
                                                                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                    revert with 0, 'Address: call to non-contract'
                                                                                                else:
                                                                                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                    mem[772 len 0] = 0
                                                                                                    call poolInfo[arg1].field_0 with:
                                                                                                       funct uint32(msg.sender)
                                                                                                         gas gas_remaining wei
                                                                                                        args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                    if not return_data.size:
                                                                                                        require not ext_call.success
                                                                                                        revert with 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        if not ext_call.success:
                                                                                                            if return_data.size > 0:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                                                        else:
                                                                                                            if return_data.size <= 0:
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    33,
                                                                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                if not mem[740]:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                42,
                                                                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                else:
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                    else:
                                                                                        require ext_code.size(sub_a20c4ea1Address)
                                                                                        call sub_a20c4ea1Address.0x2f33d010 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            if arg2 <= 0:
                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                        stor1 = 1
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                    stor1 = 1
                                                                                            else:
                                                                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                        revert with 0, 'Address: call to non-contract'
                                                                                                    else:
                                                                                                        mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                        mem[772 len 0] = 0
                                                                                                        call poolInfo[arg1].field_0 with:
                                                                                                           funct uint32(msg.sender)
                                                                                                             gas gas_remaining wei
                                                                                                            args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                        if not return_data.size:
                                                                                                            require not ext_call.success
                                                                                                            revert with 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                            if not ext_call.success:
                                                                                                                if return_data.size > 0:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                                                            else:
                                                                                                                if return_data.size <= 0:
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if not mem[740]:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    42,
                                                                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                    mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                    else:
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            33,
                                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                            else:
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                else:
                                                    require totalAllocPoint
                                                    require ext_code.size(sub_a09c0754Address)
                                                    call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0 / totalAllocPoint / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(sub_a09c0754Address)
                                                        call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args sub_a20c4ea1Address, 0 / totalAllocPoint
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if 0 / totalAllocPoint:
                                                                require 0 / totalAllocPoint
                                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                                else:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require ext_call.return_data[0]
                                                                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                                            poolInfo[arg1].field_512 = block.number
                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                                                else:
                                                                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                                                            if arg2 <= 0:
                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                        stor1 = 1
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                    stor1 = 1
                                                                                            else:
                                                                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                        revert with 0, 'Address: call to non-contract'
                                                                                                    else:
                                                                                                        mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                        mem[772 len 0] = 0
                                                                                                        call poolInfo[arg1].field_0 with:
                                                                                                           funct uint32(msg.sender)
                                                                                                             gas gas_remaining wei
                                                                                                            args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                        if not return_data.size:
                                                                                                            require not ext_call.success
                                                                                                            revert with 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                            if not ext_call.success:
                                                                                                                if return_data.size > 0:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                                                            else:
                                                                                                                if return_data.size <= 0:
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if not mem[740]:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    42,
                                                                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                    mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                    else:
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            33,
                                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                        else:
                                                                                            require ext_code.size(sub_a20c4ea1Address)
                                                                                            call sub_a20c4ea1Address.0x2f33d010 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                if arg2 <= 0:
                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                        else:
                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                            stor1 = 1
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                        stor1 = 1
                                                                                                else:
                                                                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                            revert with 0, 'Address: call to non-contract'
                                                                                                        else:
                                                                                                            mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                            mem[772 len 0] = 0
                                                                                                            call poolInfo[arg1].field_0 with:
                                                                                                               funct uint32(msg.sender)
                                                                                                                 gas gas_remaining wei
                                                                                                                args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                            if not return_data.size:
                                                                                                                require not ext_call.success
                                                                                                                revert with 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                if not ext_call.success:
                                                                                                                    if return_data.size > 0:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                                else:
                                                                                                                    if return_data.size <= 0:
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            33,
                                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if not mem[740]:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        42,
                                                                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                        mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                        else:
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                    revert with 0, 
                                                                                                                                                32,
                                                                                                                                                33,
                                                                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                                else:
                                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                    stor1 = 1
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                            else:
                                                                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                                                        if arg2 <= 0:
                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                    stor1 = 1
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                stor1 = 1
                                                                                        else:
                                                                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                    revert with 0, 'Address: call to non-contract'
                                                                                                else:
                                                                                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                    mem[772 len 0] = 0
                                                                                                    call poolInfo[arg1].field_0 with:
                                                                                                       funct uint32(msg.sender)
                                                                                                         gas gas_remaining wei
                                                                                                        args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                    if not return_data.size:
                                                                                                        require not ext_call.success
                                                                                                        revert with 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        if not ext_call.success:
                                                                                                            if return_data.size > 0:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                                                        else:
                                                                                                            if return_data.size <= 0:
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    33,
                                                                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                if not mem[740]:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                42,
                                                                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                else:
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                    else:
                                                                                        require ext_code.size(sub_a20c4ea1Address)
                                                                                        call sub_a20c4ea1Address.0x2f33d010 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            if arg2 <= 0:
                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                        stor1 = 1
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                    stor1 = 1
                                                                                            else:
                                                                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                        revert with 0, 'Address: call to non-contract'
                                                                                                    else:
                                                                                                        mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                        mem[772 len 0] = 0
                                                                                                        call poolInfo[arg1].field_0 with:
                                                                                                           funct uint32(msg.sender)
                                                                                                             gas gas_remaining wei
                                                                                                            args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                        if not return_data.size:
                                                                                                            require not ext_call.success
                                                                                                            revert with 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                            if not ext_call.success:
                                                                                                                if return_data.size > 0:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                                                            else:
                                                                                                                if return_data.size <= 0:
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if not mem[740]:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    42,
                                                                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                    mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                    else:
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            33,
                                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                            else:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require ext_call.return_data[0]
                                                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                                        poolInfo[arg1].field_512 = block.number
                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                                            else:
                                                                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                                                        if arg2 <= 0:
                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                    stor1 = 1
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                stor1 = 1
                                                                                        else:
                                                                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                    revert with 0, 'Address: call to non-contract'
                                                                                                else:
                                                                                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                    mem[772 len 0] = 0
                                                                                                    call poolInfo[arg1].field_0 with:
                                                                                                       funct uint32(msg.sender)
                                                                                                         gas gas_remaining wei
                                                                                                        args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                    if not return_data.size:
                                                                                                        require not ext_call.success
                                                                                                        revert with 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        if not ext_call.success:
                                                                                                            if return_data.size > 0:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                                                        else:
                                                                                                            if return_data.size <= 0:
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    33,
                                                                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                if not mem[740]:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                42,
                                                                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                else:
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                    else:
                                                                                        require ext_code.size(sub_a20c4ea1Address)
                                                                                        call sub_a20c4ea1Address.0x2f33d010 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            if arg2 <= 0:
                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                        stor1 = 1
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                    stor1 = 1
                                                                                            else:
                                                                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                        revert with 0, 'Address: call to non-contract'
                                                                                                    else:
                                                                                                        mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                        mem[772 len 0] = 0
                                                                                                        call poolInfo[arg1].field_0 with:
                                                                                                           funct uint32(msg.sender)
                                                                                                             gas gas_remaining wei
                                                                                                            args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                        if not return_data.size:
                                                                                                            require not ext_call.success
                                                                                                            revert with 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                            if not ext_call.success:
                                                                                                                if return_data.size > 0:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                                                            else:
                                                                                                                if return_data.size <= 0:
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if not mem[740]:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    42,
                                                                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                    mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                    else:
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            33,
                                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                            else:
                                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                                stor1 = 1
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                        else:
                                                                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                                                    if arg2 <= 0:
                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                stor1 = 1
                                                                                        else:
                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                            stor1 = 1
                                                                                    else:
                                                                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                revert with 0, 'Address: call to non-contract'
                                                                                            else:
                                                                                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                mem[772 len 0] = 0
                                                                                                call poolInfo[arg1].field_0 with:
                                                                                                   funct uint32(msg.sender)
                                                                                                     gas gas_remaining wei
                                                                                                    args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                if not return_data.size:
                                                                                                    require not ext_call.success
                                                                                                    revert with 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                    if not ext_call.success:
                                                                                                        if return_data.size > 0:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                                                    else:
                                                                                                        if return_data.size <= 0:
                                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                33,
                                                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                                            else:
                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                stor1 = 1
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if not mem[740]:
                                                                                                                revert with 0, 
                                                                                                                            32,
                                                                                                                            42,
                                                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                            mem[ceil32(return_data.size) + 819 len 22]
                                                                                                            else:
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    33,
                                                                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                else:
                                                                                    require ext_code.size(sub_a20c4ea1Address)
                                                                                    call sub_a20c4ea1Address.0x2f33d010 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        if arg2 <= 0:
                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                    stor1 = 1
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                stor1 = 1
                                                                                        else:
                                                                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                    revert with 0, 'Address: call to non-contract'
                                                                                                else:
                                                                                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                    mem[772 len 0] = 0
                                                                                                    call poolInfo[arg1].field_0 with:
                                                                                                       funct uint32(msg.sender)
                                                                                                         gas gas_remaining wei
                                                                                                        args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                    if not return_data.size:
                                                                                                        require not ext_call.success
                                                                                                        revert with 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        if not ext_call.success:
                                                                                                            if return_data.size > 0:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                                                        else:
                                                                                                            if return_data.size <= 0:
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    33,
                                                                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                if not mem[740]:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                42,
                                                                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                else:
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                    else:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        else:
                                            require totalAllocPoint
                                            require ext_code.size(sub_a09c0754Address)
                                            call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(sub_a09c0754Address)
                                                call sub_a09c0754Address.mint(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args sub_a20c4ea1Address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 0 / totalAllocPoint:
                                                        require 0 / totalAllocPoint
                                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                        else:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require ext_call.return_data[0]
                                                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                                    poolInfo[arg1].field_512 = block.number
                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                                        else:
                                                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                                                    if arg2 <= 0:
                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                stor1 = 1
                                                                                        else:
                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                            stor1 = 1
                                                                                    else:
                                                                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                revert with 0, 'Address: call to non-contract'
                                                                                            else:
                                                                                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                mem[772 len 0] = 0
                                                                                                call poolInfo[arg1].field_0 with:
                                                                                                   funct uint32(msg.sender)
                                                                                                     gas gas_remaining wei
                                                                                                    args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                if not return_data.size:
                                                                                                    require not ext_call.success
                                                                                                    revert with 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                    if not ext_call.success:
                                                                                                        if return_data.size > 0:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                                                    else:
                                                                                                        if return_data.size <= 0:
                                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                33,
                                                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                                            else:
                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                stor1 = 1
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if not mem[740]:
                                                                                                                revert with 0, 
                                                                                                                            32,
                                                                                                                            42,
                                                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                            mem[ceil32(return_data.size) + 819 len 22]
                                                                                                            else:
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    33,
                                                                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                else:
                                                                                    require ext_code.size(sub_a20c4ea1Address)
                                                                                    call sub_a20c4ea1Address.0x2f33d010 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        if arg2 <= 0:
                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                                else:
                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                    stor1 = 1
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                stor1 = 1
                                                                                        else:
                                                                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                    revert with 0, 'Address: call to non-contract'
                                                                                                else:
                                                                                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                    mem[772 len 0] = 0
                                                                                                    call poolInfo[arg1].field_0 with:
                                                                                                       funct uint32(msg.sender)
                                                                                                         gas gas_remaining wei
                                                                                                        args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                    if not return_data.size:
                                                                                                        require not ext_call.success
                                                                                                        revert with 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        if not ext_call.success:
                                                                                                            if return_data.size > 0:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                                                        else:
                                                                                                            if return_data.size <= 0:
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    33,
                                                                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                if not mem[740]:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                42,
                                                                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                mem[ceil32(return_data.size) + 819 len 22]
                                                                                                                else:
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                        else:
                                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                            stor1 = 1
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                    else:
                                                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                                                if arg2 <= 0:
                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                        else:
                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                            stor1 = 1
                                                                                    else:
                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                        stor1 = 1
                                                                                else:
                                                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                            revert with 0, 'Address: call to non-contract'
                                                                                        else:
                                                                                            mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                            mem[772 len 0] = 0
                                                                                            call poolInfo[arg1].field_0 with:
                                                                                               funct uint32(msg.sender)
                                                                                                 gas gas_remaining wei
                                                                                                args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                            if not return_data.size:
                                                                                                require not ext_call.success
                                                                                                revert with 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                if not ext_call.success:
                                                                                                    if return_data.size > 0:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                else:
                                                                                                    if return_data.size <= 0:
                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                revert with 0, 
                                                                                                                            32,
                                                                                                                            33,
                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                            else:
                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                stor1 = 1
                                                                                                        else:
                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                            stor1 = 1
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if not mem[740]:
                                                                                                            revert with 0, 
                                                                                                                        32,
                                                                                                                        42,
                                                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                        mem[ceil32(return_data.size) + 819 len 22]
                                                                                                        else:
                                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                33,
                                                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                                            else:
                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                stor1 = 1
                                                                            else:
                                                                                require ext_code.size(sub_a20c4ea1Address)
                                                                                call sub_a20c4ea1Address.0x2f33d010 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    if arg2 <= 0:
                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                stor1 = 1
                                                                                        else:
                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                            stor1 = 1
                                                                                    else:
                                                                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                revert with 0, 'Address: call to non-contract'
                                                                                            else:
                                                                                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                mem[772 len 0] = 0
                                                                                                call poolInfo[arg1].field_0 with:
                                                                                                   funct uint32(msg.sender)
                                                                                                     gas gas_remaining wei
                                                                                                    args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                if not return_data.size:
                                                                                                    require not ext_call.success
                                                                                                    revert with 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                    if not ext_call.success:
                                                                                                        if return_data.size > 0:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                                                    else:
                                                                                                        if return_data.size <= 0:
                                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                33,
                                                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                                            else:
                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                stor1 = 1
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if not mem[740]:
                                                                                                                revert with 0, 
                                                                                                                            32,
                                                                                                                            42,
                                                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                            mem[ceil32(return_data.size) + 819 len 22]
                                                                                                            else:
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    33,
                                                                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                    else:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                                poolInfo[arg1].field_512 = block.number
                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                                    else:
                                                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                                                if arg2 <= 0:
                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                        else:
                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                            stor1 = 1
                                                                                    else:
                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                        stor1 = 1
                                                                                else:
                                                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                            revert with 0, 'Address: call to non-contract'
                                                                                        else:
                                                                                            mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                            mem[772 len 0] = 0
                                                                                            call poolInfo[arg1].field_0 with:
                                                                                               funct uint32(msg.sender)
                                                                                                 gas gas_remaining wei
                                                                                                args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                            if not return_data.size:
                                                                                                require not ext_call.success
                                                                                                revert with 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                if not ext_call.success:
                                                                                                    if return_data.size > 0:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                else:
                                                                                                    if return_data.size <= 0:
                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                revert with 0, 
                                                                                                                            32,
                                                                                                                            33,
                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                            else:
                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                stor1 = 1
                                                                                                        else:
                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                            stor1 = 1
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if not mem[740]:
                                                                                                            revert with 0, 
                                                                                                                        32,
                                                                                                                        42,
                                                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                        mem[ceil32(return_data.size) + 819 len 22]
                                                                                                        else:
                                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                33,
                                                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                                            else:
                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                stor1 = 1
                                                                            else:
                                                                                require ext_code.size(sub_a20c4ea1Address)
                                                                                call sub_a20c4ea1Address.0x2f33d010 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    if arg2 <= 0:
                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                            else:
                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                stor1 = 1
                                                                                        else:
                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                            stor1 = 1
                                                                                    else:
                                                                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                                revert with 0, 'Address: call to non-contract'
                                                                                            else:
                                                                                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                                mem[772 len 0] = 0
                                                                                                call poolInfo[arg1].field_0 with:
                                                                                                   funct uint32(msg.sender)
                                                                                                     gas gas_remaining wei
                                                                                                    args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                                if not return_data.size:
                                                                                                    require not ext_call.success
                                                                                                    revert with 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                    if not ext_call.success:
                                                                                                        if return_data.size > 0:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                                                    else:
                                                                                                        if return_data.size <= 0:
                                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                33,
                                                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                                            else:
                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                stor1 = 1
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if not mem[740]:
                                                                                                                revert with 0, 
                                                                                                                            32,
                                                                                                                            42,
                                                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                            mem[ceil32(return_data.size) + 819 len 22]
                                                                                                            else:
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    33,
                                                                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                    else:
                                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                        stor1 = 1
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                else:
                                                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                                            if arg2 <= 0:
                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                    else:
                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                        stor1 = 1
                                                                                else:
                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                    stor1 = 1
                                                                            else:
                                                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                        revert with 0, 'Address: call to non-contract'
                                                                                    else:
                                                                                        mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                        mem[772 len 0] = 0
                                                                                        call poolInfo[arg1].field_0 with:
                                                                                           funct uint32(msg.sender)
                                                                                             gas gas_remaining wei
                                                                                            args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                        if not return_data.size:
                                                                                            require not ext_call.success
                                                                                            revert with 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                            if not ext_call.success:
                                                                                                if return_data.size > 0:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                                            else:
                                                                                                if return_data.size <= 0:
                                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                            revert with 0, 
                                                                                                                        32,
                                                                                                                        33,
                                                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                        mem[ceil32(return_data.size) + 810 len 31]
                                                                                                        else:
                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                            stor1 = 1
                                                                                                    else:
                                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                                        stor1 = 1
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if not mem[740]:
                                                                                                        revert with 0, 
                                                                                                                    32,
                                                                                                                    42,
                                                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                    mem[ceil32(return_data.size) + 819 len 22]
                                                                                                    else:
                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                revert with 0, 
                                                                                                                            32,
                                                                                                                            33,
                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                            else:
                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                stor1 = 1
                                                                                                        else:
                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                            stor1 = 1
                                                                        else:
                                                                            require ext_code.size(sub_a20c4ea1Address)
                                                                            call sub_a20c4ea1Address.0x2f33d010 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if arg2 <= 0:
                                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                                        else:
                                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                            stor1 = 1
                                                                                    else:
                                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                        stor1 = 1
                                                                                else:
                                                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                                            revert with 0, 'Address: call to non-contract'
                                                                                        else:
                                                                                            mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                                            mem[772 len 0] = 0
                                                                                            call poolInfo[arg1].field_0 with:
                                                                                               funct uint32(msg.sender)
                                                                                                 gas gas_remaining wei
                                                                                                args Mask(224, 32, arg2) << 224, mem[772 len 4]
                                                                                            if not return_data.size:
                                                                                                require not ext_call.success
                                                                                                revert with 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                if not ext_call.success:
                                                                                                    if return_data.size > 0:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                else:
                                                                                                    if return_data.size <= 0:
                                                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                revert with 0, 
                                                                                                                            32,
                                                                                                                            33,
                                                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                            mem[ceil32(return_data.size) + 810 len 31]
                                                                                                            else:
                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                stor1 = 1
                                                                                                        else:
                                                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                                                            stor1 = 1
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if not mem[740]:
                                                                                                            revert with 0, 
                                                                                                                        32,
                                                                                                                        42,
                                                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                        mem[ceil32(return_data.size) + 819 len 22]
                                                                                                        else:
                                                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                33,
                                                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                mem[ceil32(return_data.size) + 810 len 31]
                                                                                                                else:
                                                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                    stor1 = 1
                                                                                                            else:
                                                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                                                stor1 = 1
                            else:
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    else:
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                if arg2 <= 0:
                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                        else:
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                            stor1 = 1
                                                    else:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                        stor1 = 1
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        else:
                                                            mem[452 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                            mem[516 len 0] = 0
                                                            call poolInfo[arg1].field_0 with:
                                                               funct uint32(msg.sender)
                                                                 gas gas_remaining wei
                                                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                                            if not return_data.size:
                                                                require not ext_call.success
                                                                revert with 'SafeMath: division by zero'
                                                            else:
                                                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size > 0:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                else:
                                                                    if return_data.size <= 0:
                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[ceil32(return_data.size) + 554 len 31]
                                                                            else:
                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                stor1 = 1
                                                                        else:
                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                            stor1 = 1
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not mem[484]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        42,
                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                        mem[ceil32(return_data.size) + 563 len 22]
                                                                        else:
                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                33,
                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                                                else:
                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                    stor1 = 1
                                                                            else:
                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                stor1 = 1
                                            else:
                                                require ext_code.size(sub_a20c4ea1Address)
                                                call sub_a20c4ea1Address.0x2f33d010 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if arg2 <= 0:
                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                            else:
                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                stor1 = 1
                                                        else:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                            stor1 = 1
                                                    else:
                                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[452 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                                mem[516 len 0] = 0
                                                                call poolInfo[arg1].field_0 with:
                                                                   funct uint32(msg.sender)
                                                                     gas gas_remaining wei
                                                                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                                                if not return_data.size:
                                                                    require not ext_call.success
                                                                    revert with 'SafeMath: division by zero'
                                                                else:
                                                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size > 0:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if return_data.size <= 0:
                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                33,
                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                                                else:
                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                    stor1 = 1
                                                                            else:
                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                stor1 = 1
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not mem[484]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            42,
                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                            mem[ceil32(return_data.size) + 563 len 22]
                                                                            else:
                                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                        revert with 0, 
                                                                                                    32,
                                                                                                    33,
                                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                    mem[ceil32(return_data.size) + 554 len 31]
                                                                                    else:
                                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                                        stor1 = 1
                                                                                else:
                                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                    stor1 = 1
                                else:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                            if arg2 <= 0:
                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                    else:
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                        stor1 = 1
                                                else:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                    stor1 = 1
                                            else:
                                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    else:
                                                        mem[452 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                        mem[516 len 0] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                           funct uint32(msg.sender)
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: division by zero'
                                                        else:
                                                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size > 0:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                            else:
                                                                if return_data.size <= 0:
                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        33,
                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                        mem[ceil32(return_data.size) + 554 len 31]
                                                                        else:
                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                            stor1 = 1
                                                                    else:
                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                        stor1 = 1
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if not mem[484]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    42,
                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                    mem[ceil32(return_data.size) + 563 len 22]
                                                                    else:
                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[ceil32(return_data.size) + 554 len 31]
                                                                            else:
                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                stor1 = 1
                                                                        else:
                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                            stor1 = 1
                                        else:
                                            require ext_code.size(sub_a20c4ea1Address)
                                            call sub_a20c4ea1Address.0x2f33d010 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if arg2 <= 0:
                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                        else:
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                            stor1 = 1
                                                    else:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                        stor1 = 1
                                                else:
                                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        else:
                                                            mem[452 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                            mem[516 len 0] = 0
                                                            call poolInfo[arg1].field_0 with:
                                                               funct uint32(msg.sender)
                                                                 gas gas_remaining wei
                                                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                                            if not return_data.size:
                                                                require not ext_call.success
                                                                revert with 'SafeMath: division by zero'
                                                            else:
                                                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size > 0:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                else:
                                                                    if return_data.size <= 0:
                                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[ceil32(return_data.size) + 554 len 31]
                                                                            else:
                                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                stor1 = 1
                                                                        else:
                                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                            stor1 = 1
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not mem[484]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        42,
                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                        mem[ceil32(return_data.size) + 563 len 22]
                                                                        else:
                                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                33,
                                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                                                else:
                                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                                    stor1 = 1
                                                                            else:
                                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                                stor1 = 1
                else:
                    if userInfo[arg1][address(msg.sender)].field_0:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        else:
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                    if arg2 <= 0:
                                        if userInfo[arg1][address(msg.sender)].field_0:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            else:
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Withdraw(arg2, msg.sender, arg1);
                                                stor1 = 1
                                        else:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                            emit Withdraw(arg2, msg.sender, arg1);
                                            stor1 = 1
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            else:
                                                mem[452 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                mem[516 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: division by zero'
                                                else:
                                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                    else:
                                                        if return_data.size <= 0:
                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                                else:
                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                    stor1 = 1
                                                            else:
                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                stor1 = 1
                                                        else:
                                                            require return_data.size >= 32
                                                            if not mem[484]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 563 len 22]
                                                            else:
                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    33,
                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                    mem[ceil32(return_data.size) + 554 len 31]
                                                                    else:
                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                        stor1 = 1
                                                                else:
                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                    stor1 = 1
                                else:
                                    require ext_code.size(sub_a20c4ea1Address)
                                    call sub_a20c4ea1Address.0x2f33d010 with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if arg2 <= 0:
                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                else:
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                    stor1 = 1
                                            else:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                emit Withdraw(arg2, msg.sender, arg1);
                                                stor1 = 1
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                else:
                                                    mem[452 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                    mem[516 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: division by zero'
                                                    else:
                                                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                        else:
                                                            if return_data.size <= 0:
                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    33,
                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                    mem[ceil32(return_data.size) + 554 len 31]
                                                                    else:
                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                        stor1 = 1
                                                                else:
                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                    stor1 = 1
                                                            else:
                                                                require return_data.size >= 32
                                                                if not mem[484]:
                                                                    revert with 0, 
                                                                                32,
                                                                                42,
                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                mem[ceil32(return_data.size) + 563 len 22]
                                                                else:
                                                                    if userInfo[arg1][address(msg.sender)].field_0:
                                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        33,
                                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                        mem[ceil32(return_data.size) + 554 len 31]
                                                                        else:
                                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                                            stor1 = 1
                                                                    else:
                                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                        stor1 = 1
                    else:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                if arg2 <= 0:
                                    if userInfo[arg1][address(msg.sender)].field_0:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        else:
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            emit Withdraw(arg2, msg.sender, arg1);
                                            stor1 = 1
                                    else:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                        emit Withdraw(arg2, msg.sender, arg1);
                                        stor1 = 1
                                else:
                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        else:
                                            mem[452 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                            mem[516 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: division by zero'
                                            else:
                                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                else:
                                                    if return_data.size <= 0:
                                                        if userInfo[arg1][address(msg.sender)].field_0:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 554 len 31]
                                                            else:
                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                stor1 = 1
                                                        else:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                            emit Withdraw(arg2, msg.sender, arg1);
                                                            stor1 = 1
                                                    else:
                                                        require return_data.size >= 32
                                                        if not mem[484]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 563 len 22]
                                                        else:
                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                                else:
                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                    stor1 = 1
                                                            else:
                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                stor1 = 1
                            else:
                                require ext_code.size(sub_a20c4ea1Address)
                                call sub_a20c4ea1Address.0x2f33d010 with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if arg2 <= 0:
                                        if userInfo[arg1][address(msg.sender)].field_0:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            else:
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Withdraw(arg2, msg.sender, arg1);
                                                stor1 = 1
                                        else:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                            emit Withdraw(arg2, msg.sender, arg1);
                                            stor1 = 1
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            else:
                                                mem[452 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                                mem[516 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: division by zero'
                                                else:
                                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                    else:
                                                        if return_data.size <= 0:
                                                            if userInfo[arg1][address(msg.sender)].field_0:
                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                                else:
                                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                    stor1 = 1
                                                            else:
                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                emit Withdraw(arg2, msg.sender, arg1);
                                                                stor1 = 1
                                                        else:
                                                            require return_data.size >= 32
                                                            if not mem[484]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 563 len 22]
                                                            else:
                                                                if userInfo[arg1][address(msg.sender)].field_0:
                                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    33,
                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                    mem[ceil32(return_data.size) + 554 len 31]
                                                                    else:
                                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                                        emit Withdraw(arg2, msg.sender, arg1);
                                                                        stor1 = 1
                                                                else:
                                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                                    emit Withdraw(arg2, msg.sender, arg1);
                                                                    stor1 = 1
}



}
