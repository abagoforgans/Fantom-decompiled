contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, uint256 arg2)
#
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
        revert with 0, 'wOwnable: caller is not the owne'
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
        revert with 0, 'wOwnable: caller is not the owne'
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
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
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
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_a09c0754Address)
                    call sub_a09c0754Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_a09c0754Address)
                    call sub_a09c0754Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_a20c4ea1Address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) / block.number - poolInfo[arg1].field_512 != sub_a966dcf2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_a20c4ea1Address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_a20c4ea1Address, (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingOlive(uint256 arg1, address arg2) payable {
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
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) / block.number - poolInfo[arg1].field_512 != sub_a966dcf2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
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
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _132 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[idx].field_512:
            _148 = mem[64]
            mem[64] = mem[64] + 64
            mem[_148] = 26
            mem[_148 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _151 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _151 + 68] = mem[idx + _148 + 32]
                    idx = idx + 32
                    continue 
                mem[_151 + 68] = mem[_151 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _151 + -mem[64] + 100
            _167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_167] = 26
            mem[_167 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_a20c4ea1Address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_a20c4ea1Address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _191 = mem[64]
                mem[64] = mem[64] + 64
                mem[_191] = 26
                mem[_191 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _198 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _198 + 68] = mem[idx + _191 + 32]
                    idx = idx + 32
                    continue 
                mem[_198 + 68] = mem[_198 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _198 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _195 = mem[64]
            mem[64] = mem[64] + 64
            mem[_195] = 26
            mem[_195 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _205 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _205 + 68] = mem[idx + _195 + 32]
                idx = idx + 32
                continue 
            mem[_205 + 68] = mem[_205 + 74 len 26]
            revert with memory
              from mem[64]
               len _205 + -mem[64] + 100
        if (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2) / block.number - poolInfo[idx].field_512 != sub_a966dcf2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2):
            _149 = mem[64]
            mem[64] = mem[64] + 64
            mem[_149] = 26
            mem[_149 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _154 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _154 + 68] = mem[idx + _149 + 32]
                    idx = idx + 32
                    continue 
                mem[_154 + 68] = mem[_154 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _154 + -mem[64] + 100
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 26
            mem[_171 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_a20c4ea1Address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_a20c4ea1Address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _194 = mem[64]
                mem[64] = mem[64] + 64
                mem[_194] = 26
                mem[_194 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                    mem[idx + _202 + 68] = mem[idx + _194 + 32]
                    idx = idx + 32
                    continue 
                mem[_202 + 68] = mem[_202 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _202 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _197 = mem[64]
            mem[64] = mem[64] + 64
            mem[_197] = 26
            mem[_197 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _211 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _211 + 68] = mem[idx + _197 + 32]
                idx = idx + 32
                continue 
            mem[_211 + 68] = mem[_211 + 74 len 26]
            revert with memory
              from mem[64]
               len _211 + -mem[64] + 100
        if (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _150 = mem[64]
        mem[64] = mem[64] + 64
        mem[_150] = 26
        mem[_150 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _157 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _157 + 68] = mem[idx + _150 + 32]
                idx = idx + 32
                continue 
            mem[_157 + 68] = mem[_157 + 74 len 26]
            revert with memory
              from mem[64]
               len _157 + -mem[64] + 100
        _173 = mem[64]
        mem[64] = mem[64] + 64
        mem[_173] = 26
        mem[_173 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_a09c0754Address)
        call sub_a09c0754Address.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_a20c4ea1Address
        mem[mem[64] + 36] = (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_a09c0754Address)
        call sub_a09c0754Address.0x40c10f19 with:
             gas gas_remaining wei
            args sub_a20c4ea1Address, (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint:
            _196 = mem[64]
            mem[64] = mem[64] + 64
            mem[_196] = 26
            mem[_196 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                mem[idx + _208 + 68] = mem[idx + _196 + 32]
                idx = idx + 32
                continue 
            mem[_208 + 68] = mem[_208 + 74 len 26]
            revert with memory
              from mem[64]
               len _208 + -mem[64] + 100
        if 10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _201 = mem[64]
        mem[64] = mem[64] + 64
        mem[_201] = 26
        mem[_201 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _215 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _215 + 68] = mem[idx + _201 + 32]
            idx = idx + 32
            continue 
        mem[_215 + 68] = mem[_215 + 74 len 26]
        revert with memory
          from mem[64]
           len _215 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
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
            _190 = mem[64]
            mem[64] = mem[64] + 64
            mem[_190] = 30
            mem[_190 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _190 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _206 = mem[64]
                mem[64] = mem[64] + 64
                mem[_206] = 26
                mem[_206 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _209 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _209 + 68] = mem[idx + _206 + 32]
                        idx = idx + 32
                        continue 
                    mem[_209 + 68] = mem[_209 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _209 + -mem[64] + 100
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_a20c4ea1Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_a20c4ea1Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _249 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_249] = 26
                    mem[_249 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _256 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _256 + 68] = mem[idx + _249 + 32]
                        idx = idx + 32
                        continue 
                    mem[_256 + 68] = mem[_256 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _256 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _253 = mem[64]
                mem[64] = mem[64] + 64
                mem[_253] = 26
                mem[_253 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _263 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _263 + 68] = mem[idx + _253 + 32]
                    idx = idx + 32
                    continue 
                mem[_263 + 68] = mem[_263 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _263 + -mem[64] + 100
            if (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2) / block.number - poolInfo[idx].field_512 != sub_a966dcf2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2):
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
                    mem[_212 + 68] = mem[_212 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _212 + -mem[64] + 100
                _229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_229] = 26
                mem[_229 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_a20c4ea1Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_a20c4ea1Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _252 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_252] = 26
                    mem[_252 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _260 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _260 + 68] = mem[idx + _252 + 32]
                        idx = idx + 32
                        continue 
                    mem[_260 + 68] = mem[_260 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _260 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _255 = mem[64]
                mem[64] = mem[64] + 64
                mem[_255] = 26
                mem[_255 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _269 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _269 + 68] = mem[idx + _255 + 32]
                    idx = idx + 32
                    continue 
                mem[_269 + 68] = mem[_269 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _269 + -mem[64] + 100
            if (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _208 = mem[64]
            mem[64] = mem[64] + 64
            mem[_208] = 26
            mem[_208 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _215 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _215 + 68] = mem[idx + _208 + 32]
                    idx = idx + 32
                    continue 
                mem[_215 + 68] = mem[_215 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _215 + -mem[64] + 100
            _231 = mem[64]
            mem[64] = mem[64] + 64
            mem[_231] = 26
            mem[_231 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_a20c4ea1Address
            mem[mem[64] + 36] = (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_a20c4ea1Address, (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint:
                _254 = mem[64]
                mem[64] = mem[64] + 64
                mem[_254] = 26
                mem[_254 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _266 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _266 + 68] = mem[idx + _254 + 32]
                    idx = idx + 32
                    continue 
                mem[_266 + 68] = mem[_266 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _266 + -mem[64] + 100
            if 10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _259 = mem[64]
            mem[64] = mem[64] + 64
            mem[_259] = 26
            mem[_259 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _273 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _273 + 68] = mem[idx + _259 + 32]
                idx = idx + 32
                continue 
            mem[_273 + 68] = mem[_273 + 74 len 26]
            revert with memory
              from mem[64]
               len _273 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
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
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _187 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = 26
                mem[_203 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _206 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _206 + 68] = mem[idx + _203 + 32]
                        idx = idx + 32
                        continue 
                    mem[_206 + 68] = mem[_206 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _206 + -mem[64] + 100
                _222 = mem[64]
                mem[64] = mem[64] + 64
                mem[_222] = 26
                mem[_222 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_a20c4ea1Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_a20c4ea1Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _246 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_246] = 26
                    mem[_246 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _253 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _253 + 68] = mem[idx + _246 + 32]
                        idx = idx + 32
                        continue 
                    mem[_253 + 68] = mem[_253 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _253 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _250 = mem[64]
                mem[64] = mem[64] + 64
                mem[_250] = 26
                mem[_250 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _260 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _260 + 68] = mem[idx + _250 + 32]
                    idx = idx + 32
                    continue 
                mem[_260 + 68] = mem[_260 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _260 + -mem[64] + 100
            if (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2) / block.number - poolInfo[idx].field_512 != sub_a966dcf2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2):
                _204 = mem[64]
                mem[64] = mem[64] + 64
                mem[_204] = 26
                mem[_204 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _209 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _209 + 68] = mem[idx + _204 + 32]
                        idx = idx + 32
                        continue 
                    mem[_209 + 68] = mem[_209 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _209 + -mem[64] + 100
                _226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_226] = 26
                mem[_226 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_a20c4ea1Address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_a09c0754Address)
                call sub_a09c0754Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_a20c4ea1Address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _249 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_249] = 26
                    mem[_249 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _257 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _257 + 68] = mem[idx + _249 + 32]
                        idx = idx + 32
                        continue 
                    mem[_257 + 68] = mem[_257 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _257 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _252 = mem[64]
                mem[64] = mem[64] + 64
                mem[_252] = 26
                mem[_252 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _266 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _266 + 68] = mem[idx + _252 + 32]
                    idx = idx + 32
                    continue 
                mem[_266 + 68] = mem[_266 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _266 + -mem[64] + 100
            if (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / (block.number * sub_a966dcf2) - (poolInfo[idx].field_512 * sub_a966dcf2) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _205 = mem[64]
            mem[64] = mem[64] + 64
            mem[_205] = 26
            mem[_205 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _212 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _212 + 68] = mem[idx + _205 + 32]
                    idx = idx + 32
                    continue 
                mem[_212 + 68] = mem[_212 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _212 + -mem[64] + 100
            _228 = mem[64]
            mem[64] = mem[64] + 64
            mem[_228] = 26
            mem[_228 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_a20c4ea1Address
            mem[mem[64] + 36] = (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_a09c0754Address)
            call sub_a09c0754Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_a20c4ea1Address, (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint:
                _251 = mem[64]
                mem[64] = mem[64] + 64
                mem[_251] = 26
                mem[_251 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _263 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _263 + 68] = mem[idx + _251 + 32]
                    idx = idx + 32
                    continue 
                mem[_263 + 68] = mem[_263 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _263 + -mem[64] + 100
            if 10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _256 = mem[64]
            mem[64] = mem[64] + 64
            mem[_256] = 26
            mem[_256 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_a966dcf2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a966dcf2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _270 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _270 + 68] = mem[idx + _256 + 32]
                idx = idx + 32
                continue 
            mem[_270 + 68] = mem[_270 + 74 len 26]
            revert with memory
              from mem[64]
               len _270 + -mem[64] + 100
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor10[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF652[stor6.length] = arg1
    if block.number > startBlock:
        storF652[stor6.length] = block.number
    else:
        storF652[stor6.length] = startBlock
    storF652[stor6.length] = 0
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 'pool inexistent'
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][msg.sender].field_256:
                require ext_code.size(sub_a20c4ea1Address)
                call sub_a20c4ea1Address.0x2f33d010 with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if not ext_code.size(poolInfo[arg1].field_0):
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
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 554 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not ext_code.size(poolInfo[arg1].field_0):
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
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 554 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                require ext_code.size(sub_a20c4ea1Address)
                call sub_a20c4ea1Address.0x2f33d010 with:
                     gas gas_remaining wei
                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not ext_code.size(poolInfo[arg1].field_0):
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
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 554 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
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
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -userInfo[arg1][msg.sender].field_256:
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if arg2 > userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][msg.sender].field_0 -= arg2
                        if not ext_code.size(poolInfo[arg1].field_0):
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
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    require ext_code.size(sub_a20c4ea1Address)
                    call sub_a20c4ea1Address.0x2f33d010 with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if arg2 > userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][msg.sender].field_0 -= arg2
                        if not ext_code.size(poolInfo[arg1].field_0):
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
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if arg2 > userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][msg.sender].field_0 -= arg2
                        if not ext_code.size(poolInfo[arg1].field_0):
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
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    require ext_code.size(sub_a20c4ea1Address)
                    call sub_a20c4ea1Address.0x2f33d010 with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if arg2 > userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][msg.sender].field_0 -= arg2
                        if not ext_code.size(poolInfo[arg1].field_0):
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
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if not poolInfo[arg1].field_256:
                poolInfo[arg1].field_512 = block.number
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -userInfo[arg1][msg.sender].field_256:
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if arg2 > userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender].field_0 -= arg2
                            if not ext_code.size(poolInfo[arg1].field_0):
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
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[484]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        require ext_code.size(sub_a20c4ea1Address)
                        call sub_a20c4ea1Address.0x2f33d010 with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if arg2 > userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender].field_0 -= arg2
                            if not ext_code.size(poolInfo[arg1].field_0):
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
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[484]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if arg2 > userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender].field_0 -= arg2
                            if not ext_code.size(poolInfo[arg1].field_0):
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
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[484]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        require ext_code.size(sub_a20c4ea1Address)
                        call sub_a20c4ea1Address.0x2f33d010 with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if arg2 > userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender].field_0 -= arg2
                            if not ext_code.size(poolInfo[arg1].field_0):
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
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[484]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_a09c0754Address)
                    call sub_a09c0754Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_a09c0754Address)
                    call sub_a09c0754Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_a20c4ea1Address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if userInfo[arg1][msg.sender].field_0:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(sub_a20c4ea1Address)
                                call sub_a20c4ea1Address.0x2f33d010 with:
                                     gas gas_remaining wei
                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if arg2 > userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][msg.sender].field_0 -= arg2
                                if not ext_code.size(poolInfo[arg1].field_0):
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
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[740]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 819 len 22]
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 810 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(sub_a20c4ea1Address)
                                call sub_a20c4ea1Address.0x2f33d010 with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if arg2 > userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][msg.sender].field_0 -= arg2
                                if not ext_code.size(poolInfo[arg1].field_0):
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
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[740]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 819 len 22]
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 810 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -userInfo[arg1][msg.sender].field_256:
                                if not arg2:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][msg.sender].field_0 -= arg2
                                    if not ext_code.size(poolInfo[arg1].field_0):
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
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 810 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                require ext_code.size(sub_a20c4ea1Address)
                                call sub_a20c4ea1Address.0x2f33d010 with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not arg2:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][msg.sender].field_0 -= arg2
                                    if not ext_code.size(poolInfo[arg1].field_0):
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
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 810 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                if not arg2:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][msg.sender].field_0 -= arg2
                                    if not ext_code.size(poolInfo[arg1].field_0):
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
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 810 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                require ext_code.size(sub_a20c4ea1Address)
                                call sub_a20c4ea1Address.0x2f33d010 with:
                                     gas gas_remaining wei
                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not arg2:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][msg.sender].field_0 -= arg2
                                    if not ext_code.size(poolInfo[arg1].field_0):
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
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 810 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) / block.number - poolInfo[arg1].field_512 != sub_a966dcf2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2):
                        if (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / (block.number * sub_a966dcf2) - (poolInfo[arg1].field_512 * sub_a966dcf2) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_a20c4ea1Address, (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][msg.sender].field_0:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                    if not arg2:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][msg.sender].field_0 -= arg2
                                        if not ext_code.size(poolInfo[arg1].field_0):
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
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[740]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 819 len 22]
                                        if not userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 810 len 31]
                                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    require ext_code.size(sub_a20c4ea1Address)
                                    call sub_a20c4ea1Address.0x2f33d010 with:
                                         gas gas_remaining wei
                                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not arg2:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][msg.sender].field_0 -= arg2
                                        if not ext_code.size(poolInfo[arg1].field_0):
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
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[740]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 819 len 22]
                                        if not userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 810 len 31]
                                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if userInfo[arg1][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[arg1][msg.sender].field_256:
                                    require ext_code.size(sub_a20c4ea1Address)
                                    call sub_a20c4ea1Address.0x2f33d010 with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not arg2:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][msg.sender].field_0 -= arg2
                                    if not ext_code.size(poolInfo[arg1].field_0):
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
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 810 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if 10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * sub_a966dcf2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a966dcf2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][msg.sender].field_0:
                                if userInfo[arg1][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not -userInfo[arg1][msg.sender].field_256:
                                    if not arg2:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][msg.sender].field_0 -= arg2
                                        if not ext_code.size(poolInfo[arg1].field_0):
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
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[740]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 819 len 22]
                                        if not userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 810 len 31]
                                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    require ext_code.size(sub_a20c4ea1Address)
                                    call sub_a20c4ea1Address.0x2f33d010 with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not arg2:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][msg.sender].field_0 -= arg2
                                        if not ext_code.size(poolInfo[arg1].field_0):
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
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[740]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 819 len 22]
                                        if not userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 810 len 31]
                                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                    require ext_code.size(sub_a20c4ea1Address)
                                    call sub_a20c4ea1Address.0x2f33d010 with:
                                         gas gas_remaining wei
                                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not arg2:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][msg.sender].field_0 -= arg2
                                    if not ext_code.size(poolInfo[arg1].field_0):
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
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 810 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_a09c0754Address)
                        call sub_a09c0754Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_a20c4ea1Address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(sub_a20c4ea1Address)
                                call sub_a20c4ea1Address.0x2f33d010 with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if arg2 > userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][msg.sender].field_0 -= arg2
                                if not ext_code.size(poolInfo[arg1].field_0):
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
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[740]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 819 len 22]
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 810 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                if not arg2:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][msg.sender].field_0 -= arg2
                                    if not ext_code.size(poolInfo[arg1].field_0):
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
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 810 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                require ext_code.size(sub_a20c4ea1Address)
                                call sub_a20c4ea1Address.0x2f33d010 with:
                                     gas gas_remaining wei
                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not arg2:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][msg.sender].field_0 -= arg2
                                    if not ext_code.size(poolInfo[arg1].field_0):
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
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 810 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
    emit Withdraw(arg2, msg.sender, arg1);
    stor1 = 1
}



}
