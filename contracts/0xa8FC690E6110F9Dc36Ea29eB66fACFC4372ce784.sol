contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2, uint256 arg3)
#  - withdraw(address arg1, uint256 arg2, uint256 arg3)
#  - withdrawAll(address arg1, uint256 arg2)
#  - harvest(uint256 arg1)
#
address owner;
uint256 stor1;
address meowAddress;
address devaddr;
uint256 meowPerSecond;
array of struct poolInfo;
mapping of struct userInfo;
mapping of uint8 stor7;
uint256 totalAllocPoint;
uint256 startTime;
uint256 lockPeriod;
uint256 totalLock;
uint256 sub_20f79efd;
uint256 sub_a44d6505;
address developmentFundAddress;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;

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

function sub_20f79efd(?) payable {
    return sub_20f79efd
}

function totalLock() payable {
    return totalLock
}

function lockPeriod() payable {
    return lockPeriod
}

function isPoolExist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function startTime() payable {
    return startTime
}

function developmentFund() payable {
    return developmentFundAddress
}

function meowPerSecond() payable {
    return meowPerSecond
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768,
           userInfo[arg1][arg2].field_1024,
           userInfo[arg1][arg2].field_1280
}

function sub_a44d6505(?) payable {
    return sub_a44d6505
}

function meow() payable {
    return meowAddress
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
    emit 0x2e8be007: owner, 0
    owner = 0
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'MeowMining::setDev:: Forbidden.'
    devaddr = arg1
}

function sub_d3653365(?) payable {
    require ext_code.size(meowAddress)
    staticcall meowAddress.0xd3653365 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x2e8be007: owner, arg1
    owner = arg1
}

function manualMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(meowAddress)
    staticcall meowAddress.0xd3653365 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x2e4d656f774d696e696e673a3a6d616e75616c4d696e743a3a206d616e75616c206d696e74206c696d6974206578636565646564,
                    mem[216 len 12]
    require ext_code.size(meowAddress)
    call meowAddress.0xe4c5ff46 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function availableUnlock(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp >= userInfo[arg1][address(arg2)].field_1280:
        return userInfo[arg1][address(arg2)].field_768
    if userInfo[arg1][address(arg2)].field_1024 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[arg1][address(arg2)].field_1024 > userInfo[arg1][address(arg2)].field_1280:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg1][address(arg2)].field_768:
        if userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_1024:
            return (0 / userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_1024)
    else:
        if (block.timestamp * userInfo[arg1][address(arg2)].field_768) - (userInfo[arg1][address(arg2)].field_1024 * userInfo[arg1][address(arg2)].field_768) / userInfo[arg1][address(arg2)].field_768 != block.timestamp - userInfo[arg1][address(arg2)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_1024:
            return ((block.timestamp * userInfo[arg1][address(arg2)].field_768) - (userInfo[arg1][address(arg2)].field_1024 * userInfo[arg1][address(arg2)].field_768) / userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_1024)
    ('iszero', ('add', ('field', 1280, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userInfo', 6))))), ('mul', -1, ('field', 1024, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userInfo', 6))))))))
    revert
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, '.ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if userInfo[arg1][msg.sender].field_512 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734d656f774d696e696e673a3a656d657267656e637957697468647261773a3a206f6e6c792066756e646572,
                    mem[208 len 20]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][msg.sender].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][msg.sender].field_0
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    userInfo[arg1][msg.sender].field_512 = 0
    stor1 = 1
}

function pendingMeow(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if ext_call.return_data[0] <= 0:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if totalAllocPoint <= 0:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * meowPerSecond) - (poolInfo[arg1].field_512 * meowPerSecond) / block.timestamp - poolInfo[arg1].field_512 != meowPerSecond:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.timestamp * meowPerSecond) - (poolInfo[arg1].field_512 * meowPerSecond):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / (block.timestamp * meowPerSecond) - (poolInfo[arg1].field_512 * meowPerSecond) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function unlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    userInfo[arg1][address(msg.sender)].field_1024 = block.timestamp
    if block.timestamp >= userInfo[arg1][address(msg.sender)].field_1280:
        if userInfo[arg1][address(msg.sender)].field_768:
            require ext_code.size(meowAddress)
            staticcall meowAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][address(msg.sender)].field_768 <= ext_call.return_data[0]:
                if userInfo[arg1][address(msg.sender)].field_768 > userInfo[arg1][address(msg.sender)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][address(msg.sender)].field_768 = 0
                if userInfo[arg1][address(msg.sender)].field_768 > totalLock:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalLock -= userInfo[arg1][address(msg.sender)].field_768
                require ext_code.size(meowAddress)
                staticcall meowAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(meowAddress)
                if userInfo[arg1][address(msg.sender)].field_768 <= ext_call.return_data[0]:
                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[arg1][address(msg.sender)].field_768
                else:
                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                55,
                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                mem[219 len 9]
                emit Unlock(userInfo[arg1][address(msg.sender)].field_768, msg.sender, arg1);
            else:
                require ext_code.size(meowAddress)
                staticcall meowAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > userInfo[arg1][address(msg.sender)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][address(msg.sender)].field_768 -= ext_call.return_data[0]
                if ext_call.return_data[0] > totalLock:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalLock -= ext_call.return_data[0]
                require ext_code.size(meowAddress)
                staticcall meowAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(meowAddress)
                call meowAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                55,
                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                mem[219 len 9]
                emit Unlock(ext_call.return_data[0], msg.sender, arg1);
    else:
        if userInfo[arg1][address(msg.sender)].field_1024 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(msg.sender)].field_1024 > userInfo[arg1][address(msg.sender)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1][address(msg.sender)].field_768:
            if userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024
            if 0 / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024:
                require ext_code.size(meowAddress)
                staticcall meowAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024 <= ext_call.return_data[0]:
                    if 0 / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024 > userInfo[arg1][address(msg.sender)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_768 -= 0 / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024
                    if 0 / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024 > totalLock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLock -= 0 / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024
                    require ext_code.size(meowAddress)
                    staticcall meowAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(meowAddress)
                    if 0 / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024 <= ext_call.return_data[0]:
                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024
                    else:
                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    55,
                                    0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                    mem[219 len 9]
                    emit Unlock((0 / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024), msg.sender, arg1);
                else:
                    require ext_code.size(meowAddress)
                    staticcall meowAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > userInfo[arg1][address(msg.sender)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_768 -= ext_call.return_data[0]
                    if ext_call.return_data[0] > totalLock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLock -= ext_call.return_data[0]
                    require ext_code.size(meowAddress)
                    staticcall meowAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(meowAddress)
                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    55,
                                    0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                    mem[219 len 9]
                    emit Unlock(ext_call.return_data[0], msg.sender, arg1);
        else:
            if (block.timestamp * userInfo[arg1][address(msg.sender)].field_768) - (userInfo[arg1][address(msg.sender)].field_1024 * userInfo[arg1][address(msg.sender)].field_768) / userInfo[arg1][address(msg.sender)].field_768 != block.timestamp - userInfo[arg1][address(msg.sender)].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024
            if (block.timestamp * userInfo[arg1][address(msg.sender)].field_768) - (userInfo[arg1][address(msg.sender)].field_1024 * userInfo[arg1][address(msg.sender)].field_768) / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024:
                require ext_code.size(meowAddress)
                staticcall meowAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (block.timestamp * userInfo[arg1][address(msg.sender)].field_768) - (userInfo[arg1][address(msg.sender)].field_1024 * userInfo[arg1][address(msg.sender)].field_768) / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024 <= ext_call.return_data[0]:
                    if (block.timestamp * userInfo[arg1][address(msg.sender)].field_768) - (userInfo[arg1][address(msg.sender)].field_1024 * userInfo[arg1][address(msg.sender)].field_768) / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024 > userInfo[arg1][address(msg.sender)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_768 -= (block.timestamp * userInfo[arg1][address(msg.sender)].field_768) - (userInfo[arg1][address(msg.sender)].field_1024 * userInfo[arg1][address(msg.sender)].field_768) / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024
                    if (block.timestamp * userInfo[arg1][address(msg.sender)].field_768) - (userInfo[arg1][address(msg.sender)].field_1024 * userInfo[arg1][address(msg.sender)].field_768) / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024 > totalLock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLock -= (block.timestamp * userInfo[arg1][address(msg.sender)].field_768) - (userInfo[arg1][address(msg.sender)].field_1024 * userInfo[arg1][address(msg.sender)].field_768) / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024
                    require ext_code.size(meowAddress)
                    staticcall meowAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(meowAddress)
                    if (block.timestamp * userInfo[arg1][address(msg.sender)].field_768) - (userInfo[arg1][address(msg.sender)].field_1024 * userInfo[arg1][address(msg.sender)].field_768) / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024 <= ext_call.return_data[0]:
                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * userInfo[arg1][address(msg.sender)].field_768) - (userInfo[arg1][address(msg.sender)].field_1024 * userInfo[arg1][address(msg.sender)].field_768) / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024
                    else:
                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    55,
                                    0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                    mem[219 len 9]
                    emit Unlock(((block.timestamp * userInfo[arg1][address(msg.sender)].field_768) - (userInfo[arg1][address(msg.sender)].field_1024 * userInfo[arg1][address(msg.sender)].field_768) / userInfo[arg1][address(msg.sender)].field_1280 - userInfo[arg1][address(msg.sender)].field_1024), msg.sender, arg1);
                else:
                    require ext_code.size(meowAddress)
                    staticcall meowAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > userInfo[arg1][address(msg.sender)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_768 -= ext_call.return_data[0]
                    if ext_call.return_data[0] > totalLock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLock -= ext_call.return_data[0]
                    require ext_code.size(meowAddress)
                    staticcall meowAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(meowAddress)
                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    55,
                                    0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                    mem[219 len 9]
                    emit Unlock(ext_call.return_data[0], msg.sender, arg1);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if totalAllocPoint > 0:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(meowAddress)
                        call meowAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args this.address, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(meowAddress)
                        call meowAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(meowAddress)
                        staticcall meowAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(meowAddress)
                        if 0 <= ext_call.return_data[0]:
                            call meowAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call meowAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        55,
                                        0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                        mem[219 len 9]
                        require ext_code.size(developmentFundAddress)
                        call developmentFundAddress.0xdd467064 with:
                             gas gas_remaining wei
                            args 0
                    else:
                        if 10000 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(meowAddress)
                        call meowAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args this.address, 10000 * 0 / totalAllocPoint / 114286
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(meowAddress)
                        call meowAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 10000 * 0 / totalAllocPoint / 114286:
                            require ext_code.size(meowAddress)
                            staticcall meowAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(meowAddress)
                            if 0 <= ext_call.return_data[0]:
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, ext_call.return_data[0]
                        else:
                            if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_20f79efd:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(meowAddress)
                            staticcall meowAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(meowAddress)
                            if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                            else:
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        55,
                                        0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                        mem[219 len 9]
                        if not 10000 * 0 / totalAllocPoint / 114286:
                            require ext_code.size(developmentFundAddress)
                            call developmentFundAddress.0xdd467064 with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            if sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_a44d6505:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(developmentFundAddress)
                            call developmentFundAddress.0xdd467064 with:
                                 gas gas_remaining wei
                                args (sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * meowPerSecond) - (poolInfo[arg1].field_512 * meowPerSecond) / block.timestamp - poolInfo[arg1].field_512 != meowPerSecond:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * meowPerSecond) - (poolInfo[arg1].field_512 * meowPerSecond):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            staticcall meowAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(meowAddress)
                            if 0 <= ext_call.return_data[0]:
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            55,
                                            0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                            mem[219 len 9]
                            require ext_code.size(developmentFundAddress)
                            call developmentFundAddress.0xdd467064 with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            if 10000 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 10000 * 0 / totalAllocPoint / 114286
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 10000 * 0 / totalAllocPoint / 114286:
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(meowAddress)
                                if 0 <= ext_call.return_data[0]:
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                            else:
                                if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_20f79efd:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(meowAddress)
                                if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                else:
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            55,
                                            0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                            mem[219 len 9]
                            if not 10000 * 0 / totalAllocPoint / 114286:
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_a44d6505:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args (sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / (block.timestamp * meowPerSecond) - (poolInfo[arg1].field_512 * meowPerSecond) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            staticcall meowAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(meowAddress)
                            if 0 <= ext_call.return_data[0]:
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            55,
                                            0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                            mem[219 len 9]
                            require ext_code.size(developmentFundAddress)
                            call developmentFundAddress.0xdd467064 with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            if 10000 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 10000 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 114286
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 10000 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 114286:
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(meowAddress)
                                if 0 <= ext_call.return_data[0]:
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                            else:
                                if sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 114286 / 10000 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 114286 != sub_20f79efd:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(meowAddress)
                                if sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 114286 / 10000
                                else:
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            55,
                                            0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                            mem[219 len 9]
                            if not 10000 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 114286:
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 114286 / 10000 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 114286 != sub_a44d6505:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args (sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 114286 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * meowPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * meowPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.timestamp > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if totalAllocPoint > 0:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            staticcall meowAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 <= ext_call.return_data[0]:
                                mem[132] = 0
                                require ext_code.size(meowAddress)
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                mem[132] = ext_call.return_data[0]
                                require ext_code.size(meowAddress)
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                            mem[219 len 9]
                            mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                            mem[100] = 0
                            require ext_code.size(developmentFundAddress)
                            call developmentFundAddress.0xdd467064 with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            if 10000 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10000:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 10000 * 0 / totalAllocPoint / 114286
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 10000 * 0 / totalAllocPoint / 114286:
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 <= ext_call.return_data[0]:
                                    mem[132] = 0
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                            else:
                                if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_20f79efd:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                    mem[132] = sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                            mem[219 len 9]
                            if not 10000 * 0 / totalAllocPoint / 114286:
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = 0
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_a44d6505:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args (sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * meowPerSecond) - (poolInfo[idx].field_512 * meowPerSecond) / block.timestamp - poolInfo[idx].field_512 != meowPerSecond:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.timestamp * meowPerSecond) - (poolInfo[idx].field_512 * meowPerSecond):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 <= ext_call.return_data[0]:
                                    mem[132] = 0
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = 0
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 10000 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10000:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 10000 * 0 / totalAllocPoint / 114286
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 10000 * 0 / totalAllocPoint / 114286:
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 <= ext_call.return_data[0]:
                                        mem[132] = 0
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                else:
                                    if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_20f79efd:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                        mem[132] = sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                if not 10000 * 0 / totalAllocPoint / 114286:
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = 0
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    if sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_a44d6505:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args (sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / (block.timestamp * meowPerSecond) - (poolInfo[idx].field_512 * meowPerSecond) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 <= ext_call.return_data[0]:
                                    mem[132] = 0
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = 0
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10000:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286:
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 <= ext_call.return_data[0]:
                                        mem[132] = 0
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                else:
                                    if sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 != sub_20f79efd:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                        mem[132] = sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                if not 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286:
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = 0
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    if sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 != sub_a44d6505:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args (sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
}

function setMeowPerSecond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.timestamp > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if totalAllocPoint > 0:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            staticcall meowAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 <= ext_call.return_data[0]:
                                mem[132] = 0
                                require ext_code.size(meowAddress)
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                mem[132] = ext_call.return_data[0]
                                require ext_code.size(meowAddress)
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                            mem[219 len 9]
                            mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                            mem[100] = 0
                            require ext_code.size(developmentFundAddress)
                            call developmentFundAddress.0xdd467064 with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            if 10000 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10000:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 10000 * 0 / totalAllocPoint / 114286
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 10000 * 0 / totalAllocPoint / 114286:
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 <= ext_call.return_data[0]:
                                    mem[132] = 0
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                            else:
                                if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_20f79efd:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                    mem[132] = sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                            mem[219 len 9]
                            if not 10000 * 0 / totalAllocPoint / 114286:
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = 0
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_a44d6505:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args (sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * meowPerSecond) - (poolInfo[idx].field_512 * meowPerSecond) / block.timestamp - poolInfo[idx].field_512 != meowPerSecond:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.timestamp * meowPerSecond) - (poolInfo[idx].field_512 * meowPerSecond):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 <= ext_call.return_data[0]:
                                    mem[132] = 0
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = 0
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 10000 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10000:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 10000 * 0 / totalAllocPoint / 114286
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 10000 * 0 / totalAllocPoint / 114286:
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 <= ext_call.return_data[0]:
                                        mem[132] = 0
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                else:
                                    if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_20f79efd:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                        mem[132] = sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                if not 10000 * 0 / totalAllocPoint / 114286:
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = 0
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    if sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_a44d6505:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args (sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / (block.timestamp * meowPerSecond) - (poolInfo[idx].field_512 * meowPerSecond) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 <= ext_call.return_data[0]:
                                    mem[132] = 0
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = 0
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10000:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286:
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 <= ext_call.return_data[0]:
                                        mem[132] = 0
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                else:
                                    if sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 != sub_20f79efd:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                        mem[132] = sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                if not 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286:
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = 0
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    if sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 != sub_a44d6505:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args (sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
    meowPerSecond = arg1
}

function setPool(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.timestamp > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if totalAllocPoint > 0:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            staticcall meowAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 <= ext_call.return_data[0]:
                                mem[132] = 0
                                require ext_code.size(meowAddress)
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                mem[132] = ext_call.return_data[0]
                                require ext_code.size(meowAddress)
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                            mem[219 len 9]
                            mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                            mem[100] = 0
                            require ext_code.size(developmentFundAddress)
                            call developmentFundAddress.0xdd467064 with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            if 10000 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10000:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 10000 * 0 / totalAllocPoint / 114286
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 10000 * 0 / totalAllocPoint / 114286:
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 <= ext_call.return_data[0]:
                                    mem[132] = 0
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                            else:
                                if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_20f79efd:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                    mem[132] = sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                            mem[219 len 9]
                            if not 10000 * 0 / totalAllocPoint / 114286:
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = 0
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_a44d6505:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args (sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * meowPerSecond) - (poolInfo[idx].field_512 * meowPerSecond) / block.timestamp - poolInfo[idx].field_512 != meowPerSecond:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.timestamp * meowPerSecond) - (poolInfo[idx].field_512 * meowPerSecond):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 <= ext_call.return_data[0]:
                                    mem[132] = 0
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = 0
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 10000 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10000:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 10000 * 0 / totalAllocPoint / 114286
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 10000 * 0 / totalAllocPoint / 114286:
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 <= ext_call.return_data[0]:
                                        mem[132] = 0
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                else:
                                    if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_20f79efd:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                        mem[132] = sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                if not 10000 * 0 / totalAllocPoint / 114286:
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = 0
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    if sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_a44d6505:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args (sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / (block.timestamp * meowPerSecond) - (poolInfo[idx].field_512 * meowPerSecond) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 <= ext_call.return_data[0]:
                                    mem[132] = 0
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = 0
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10000:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286:
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 <= ext_call.return_data[0]:
                                        mem[132] = 0
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                else:
                                    if sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 != sub_20f79efd:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                        mem[132] = sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                if not 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286:
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = 0
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    if sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 != sub_a44d6505:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args (sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function addPool(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.timestamp > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if totalAllocPoint > 0:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            staticcall meowAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 <= ext_call.return_data[0]:
                                mem[132] = 0
                                require ext_code.size(meowAddress)
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                mem[132] = ext_call.return_data[0]
                                require ext_code.size(meowAddress)
                                call meowAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                            mem[219 len 9]
                            mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                            mem[100] = 0
                            require ext_code.size(developmentFundAddress)
                            call developmentFundAddress.0xdd467064 with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            if 10000 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10000:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 10000 * 0 / totalAllocPoint / 114286
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(meowAddress)
                            call meowAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 10000 * 0 / totalAllocPoint / 114286:
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 <= ext_call.return_data[0]:
                                    mem[132] = 0
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                            else:
                                if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_20f79efd:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                    mem[132] = sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                            mem[219 len 9]
                            if not 10000 * 0 / totalAllocPoint / 114286:
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = 0
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_a44d6505:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args (sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * meowPerSecond) - (poolInfo[idx].field_512 * meowPerSecond) / block.timestamp - poolInfo[idx].field_512 != meowPerSecond:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.timestamp * meowPerSecond) - (poolInfo[idx].field_512 * meowPerSecond):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 <= ext_call.return_data[0]:
                                    mem[132] = 0
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = 0
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 10000 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10000:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 10000 * 0 / totalAllocPoint / 114286
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 10000 * 0 / totalAllocPoint / 114286:
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 <= ext_call.return_data[0]:
                                        mem[132] = 0
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                else:
                                    if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_20f79efd:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                        mem[132] = sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, sub_20f79efd * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                if not 10000 * 0 / totalAllocPoint / 114286:
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = 0
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    if sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000 * 0 / totalAllocPoint / 114286 != sub_a44d6505:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args (sub_a44d6505 * 10000 * 0 / totalAllocPoint / 114286 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / (block.timestamp * meowPerSecond) - (poolInfo[idx].field_512 * meowPerSecond) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                staticcall meowAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 <= ext_call.return_data[0]:
                                    mem[132] = 0
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    mem[132] = ext_call.return_data[0]
                                    require ext_code.size(meowAddress)
                                    call meowAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                mem[100] = 0
                                require ext_code.size(developmentFundAddress)
                                call developmentFundAddress.0xdd467064 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10000:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(meowAddress)
                                call meowAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286:
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 <= ext_call.return_data[0]:
                                        mem[132] = 0
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                else:
                                    if sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 != sub_20f79efd:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(meowAddress)
                                    staticcall meowAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000 <= ext_call.return_data[0]:
                                        mem[132] = sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, sub_20f79efd * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000
                                    else:
                                        mem[132] = ext_call.return_data[0]
                                        require ext_code.size(meowAddress)
                                        call meowAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args devaddr, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                55,
                                                0xfe4d656f774d696e696e673a3a736166654d656f775472616e736665723a3a206661696c656420746f207472616e73666572204d454f57,
                                                mem[219 len 9]
                                if not 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286:
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = 0
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    if sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 != sub_a44d6505:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    mem[96] = 0xdd46706400000000000000000000000000000000000000000000000000000000
                                    mem[100] = sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000
                                    require ext_code.size(developmentFundAddress)
                                    call developmentFundAddress.0xdd467064 with:
                                         gas gas_remaining wei
                                        args (sub_a44d6505 * 10000 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 114286 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.timestamp * meowPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * meowPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
    if not arg2:
        revert with 0, 32, 39, 0x724d656f774d696e696e673a3a616464506f6f6c3a3a206e6f74205a45524f2061646472657373, mem[203 len 25]
    if stor7[address(arg2)]:
        revert with 0, 32, 43, 0x2e4d656f774d696e696e673a3a616464506f6f6c3a3a207374616b65546f6b656e206475706c6963617465, mem[207 len 21]
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg1
    if block.timestamp > startTime:
        stor36B6[stor5.length] = block.timestamp
    else:
        stor36B6[stor5.length] = startTime
    stor36B6[stor5.length] = 0
    stor7[address(arg2)] = 1
}



}
