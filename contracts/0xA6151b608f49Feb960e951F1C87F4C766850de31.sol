contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 stor1;
address sub_2541947fAddress;
address burnAddress;
uint256 sub_aada310d;
uint256 sub_d06076fd;
uint256 sub_454dab61;
uint256 startTime;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of address stor110349606679412691172957834289542550319383271247755660854362242977991410020071;

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

function sub_2541947f(?) payable {
    return sub_2541947fAddress
}

function sub_454dab61(?) payable {
    return sub_454dab61
}

function burnAddress() payable {
    return burnAddress
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_aada310d(?) payable {
    return sub_aada310d
}

function sub_d06076fd(?) payable {
    return sub_d06076fd
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_2541947fAddress)
    staticcall sub_2541947fAddress.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_d06076fd:
        return 0
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function stakedWantTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not userInfo[arg1][address(arg2)].field_0:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0 / ext_call.return_data[0])
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_2541947fAddress == arg1:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, arg2
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
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
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][msg.sender].field_0:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, 0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
        mem[388 len 0] = 0
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        emit EmergencyWithdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
    else:
        if ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0]) >> 32
        mem[388 len 0] = 0
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0]) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        emit EmergencyWithdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0]), msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.sharesTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.timestamp
        else:
            require ext_code.size(sub_2541947fAddress)
            staticcall sub_2541947fAddress.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_d06076fd:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - poolInfo[arg1].field_512 > 0:
                    if not block.timestamp - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_2541947fAddress)
                            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                        else:
                            if sub_aada310d * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_aada310d:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(sub_2541947fAddress)
                            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args owner, sub_aada310d * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_2541947fAddress)
                        call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
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
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * sub_454dab61) - (poolInfo[arg1].field_512 * sub_454dab61) / block.timestamp - poolInfo[arg1].field_512 != sub_454dab61:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * sub_454dab61) - (poolInfo[arg1].field_512 * sub_454dab61):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_2541947fAddress)
                                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                            else:
                                if sub_aada310d * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_aada310d:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_2541947fAddress)
                                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args owner, sub_aada310d * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_2541947fAddress)
                            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
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
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / (block.timestamp * sub_454dab61) - (poolInfo[arg1].field_512 * sub_454dab61) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sub_2541947fAddress)
                                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                            else:
                                if sub_aada310d * (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint != sub_aada310d:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_2541947fAddress)
                                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args owner, sub_aada310d * (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_2541947fAddress)
                            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.timestamp
}

function sub_6d9e7e1d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require ext_code.size(sub_2541947fAddress)
    staticcall sub_2541947fAddress.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_d06076fd:
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
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - poolInfo[arg1].field_512:
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
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * sub_454dab61) - (poolInfo[arg1].field_512 * sub_454dab61) / block.timestamp - poolInfo[arg1].field_512 != sub_454dab61:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.timestamp * sub_454dab61) - (poolInfo[arg1].field_512 * sub_454dab61):
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
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / (block.timestamp * sub_454dab61) - (poolInfo[arg1].field_512 * sub_454dab61) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.timestamp * sub_454dab61 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_454dab61 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.timestamp <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(poolInfo[idx].field_1024)
        staticcall poolInfo[idx].field_1024.sharesTotal() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        require ext_code.size(sub_2541947fAddress)
        staticcall sub_2541947fAddress.totalSupply() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= sub_d06076fd:
            idx = idx + 1
            continue 
        _227 = mem[64]
        mem[64] = mem[64] + 64
        mem[_227] = 30
        mem[_227 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _227 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp - poolInfo[idx].field_512 <= 0:
            idx = idx + 1
            continue 
        if not block.timestamp - poolInfo[idx].field_512:
            _243 = mem[64]
            mem[64] = mem[64] + 64
            mem[_243] = 26
            mem[_243 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _246 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _246 + 68] = mem[idx + _243 + 32]
                    idx = idx + 32
                    continue 
                mem[_246 + 68] = mem[_246 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _246 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_271] = 26
                mem[_271 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _309 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_309] = 26
                    mem[_309 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _323 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _323 + 68] = mem[idx + _309 + 32]
                        idx = idx + 32
                        continue 
                    mem[_323 + 68] = mem[_323 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _323 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _316 = mem[64]
                mem[64] = mem[64] + 64
                mem[_316] = 26
                mem[_316 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _335 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _335 + 68] = mem[idx + _316 + 32]
                    idx = idx + 32
                    continue 
                mem[_335 + 68] = mem[_335 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _335 + -mem[64] + 100
            if sub_aada310d * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_aada310d:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _275 = mem[64]
            mem[64] = mem[64] + 64
            mem[_275] = 26
            mem[_275 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner, sub_aada310d * 0 / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_315] = 26
                mem[_315 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _332 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _332 + 68] = mem[idx + _315 + 32]
                    idx = idx + 32
                    continue 
                mem[_332 + 68] = mem[_332 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _332 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _322 = mem[64]
            mem[64] = mem[64] + 64
            mem[_322] = 26
            mem[_322 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _348 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _348 + 68] = mem[idx + _322 + 32]
                idx = idx + 32
                continue 
            mem[_348 + 68] = mem[_348 + 74 len 26]
            revert with memory
              from mem[64]
               len _348 + -mem[64] + 100
        if (block.timestamp * sub_454dab61) - (poolInfo[idx].field_512 * sub_454dab61) / block.timestamp - poolInfo[idx].field_512 != sub_454dab61:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * sub_454dab61) - (poolInfo[idx].field_512 * sub_454dab61):
            _244 = mem[64]
            mem[64] = mem[64] + 64
            mem[_244] = 26
            mem[_244 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _249 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _249 + 68] = mem[idx + _244 + 32]
                    idx = idx + 32
                    continue 
                mem[_249 + 68] = mem[_249 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _249 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _274 = mem[64]
                mem[64] = mem[64] + 64
                mem[_274] = 26
                mem[_274 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _314 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_314] = 26
                    mem[_314 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _329 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _329 + 68] = mem[idx + _314 + 32]
                        idx = idx + 32
                        continue 
                    mem[_329 + 68] = mem[_329 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _329 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _321 = mem[64]
                mem[64] = mem[64] + 64
                mem[_321] = 26
                mem[_321 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _345 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _345 + 68] = mem[idx + _321 + 32]
                    idx = idx + 32
                    continue 
                mem[_345 + 68] = mem[_345 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _345 + -mem[64] + 100
            if sub_aada310d * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_aada310d:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _277 = mem[64]
            mem[64] = mem[64] + 64
            mem[_277] = 26
            mem[_277 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner, sub_aada310d * 0 / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _320 = mem[64]
                mem[64] = mem[64] + 64
                mem[_320] = 26
                mem[_320 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _342 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _342 + 68] = mem[idx + _320 + 32]
                    idx = idx + 32
                    continue 
                mem[_342 + 68] = mem[_342 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _342 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _328 = mem[64]
            mem[64] = mem[64] + 64
            mem[_328] = 26
            mem[_328 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _358 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _358 + 68] = mem[idx + _328 + 32]
                idx = idx + 32
                continue 
            mem[_358 + 68] = mem[_358 + 74 len 26]
            revert with memory
              from mem[64]
               len _358 + -mem[64] + 100
        if (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / (block.timestamp * sub_454dab61) - (poolInfo[idx].field_512 * sub_454dab61) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _245 = mem[64]
        mem[64] = mem[64] + 64
        mem[_245] = 26
        mem[_245 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _252 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _252 + 68] = mem[idx + _245 + 32]
                idx = idx + 32
                continue 
            mem[_252 + 68] = mem[_252 + 74 len 26]
            revert with memory
              from mem[64]
               len _252 + -mem[64] + 100
        if not (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint:
            _276 = mem[64]
            mem[64] = mem[64] + 64
            mem[_276] = 26
            mem[_276 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint:
                _319 = mem[64]
                mem[64] = mem[64] + 64
                mem[_319] = 26
                mem[_319 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _339 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _339 + 68] = mem[idx + _319 + 32]
                    idx = idx + 32
                    continue 
                mem[_339 + 68] = mem[_339 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _339 + -mem[64] + 100
            if 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _327 = mem[64]
            mem[64] = mem[64] + 64
            mem[_327] = 26
            mem[_327 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _355 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _355 + 68] = mem[idx + _327 + 32]
                idx = idx + 32
                continue 
            mem[_355 + 68] = mem[_355 + 74 len 26]
            revert with memory
              from mem[64]
               len _355 + -mem[64] + 100
        if sub_aada310d * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint != sub_aada310d:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _278 = mem[64]
        mem[64] = mem[64] + 64
        mem[_278] = 26
        mem[_278 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_2541947fAddress)
        call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args owner, sub_aada310d * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_2541947fAddress)
        call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args this.address, (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint:
            _326 = mem[64]
            mem[64] = mem[64] + 64
            mem[_326] = 26
            mem[_326 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _352 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _352 + 68] = mem[idx + _326 + 32]
                idx = idx + 32
                continue 
            mem[_352 + 68] = mem[_352 + 74 len 26]
            revert with memory
              from mem[64]
               len _352 + -mem[64] + 100
        if 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _338 = mem[64]
        mem[64] = mem[64] + 64
        mem[_338] = 26
        mem[_338 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _366 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _366 + 68] = mem[idx + _338 + 32]
            idx = idx + 32
            continue 
        mem[_366 + 68] = mem[_366 + 74 len 26]
        revert with memory
          from mem[64]
           len _366 + -mem[64] + 100
}

function sub_26070c54(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 10^17:
        revert with 0, 'setEstPerSecond: too many ests!'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.timestamp <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(poolInfo[idx].field_1024)
        staticcall poolInfo[idx].field_1024.sharesTotal() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        require ext_code.size(sub_2541947fAddress)
        staticcall sub_2541947fAddress.totalSupply() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= sub_d06076fd:
            idx = idx + 1
            continue 
        _233 = mem[64]
        mem[64] = mem[64] + 64
        mem[_233] = 30
        mem[_233 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _233 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp - poolInfo[idx].field_512 <= 0:
            idx = idx + 1
            continue 
        if not block.timestamp - poolInfo[idx].field_512:
            _249 = mem[64]
            mem[64] = mem[64] + 64
            mem[_249] = 26
            mem[_249 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _252 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _252 + 68] = mem[idx + _249 + 32]
                    idx = idx + 32
                    continue 
                mem[_252 + 68] = mem[_252 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _252 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _277 = mem[64]
                mem[64] = mem[64] + 64
                mem[_277] = 26
                mem[_277 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _315 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_315] = 26
                    mem[_315 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _329 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _329 + 68] = mem[idx + _315 + 32]
                        idx = idx + 32
                        continue 
                    mem[_329 + 68] = mem[_329 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _329 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _322 = mem[64]
                mem[64] = mem[64] + 64
                mem[_322] = 26
                mem[_322 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _341 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _341 + 68] = mem[idx + _322 + 32]
                    idx = idx + 32
                    continue 
                mem[_341 + 68] = mem[_341 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _341 + -mem[64] + 100
            if sub_aada310d * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_aada310d:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _281 = mem[64]
            mem[64] = mem[64] + 64
            mem[_281] = 26
            mem[_281 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner, sub_aada310d * 0 / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _321 = mem[64]
                mem[64] = mem[64] + 64
                mem[_321] = 26
                mem[_321 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _338 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _338 + 68] = mem[idx + _321 + 32]
                    idx = idx + 32
                    continue 
                mem[_338 + 68] = mem[_338 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _338 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _328 = mem[64]
            mem[64] = mem[64] + 64
            mem[_328] = 26
            mem[_328 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _354 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _354 + 68] = mem[idx + _328 + 32]
                idx = idx + 32
                continue 
            mem[_354 + 68] = mem[_354 + 74 len 26]
            revert with memory
              from mem[64]
               len _354 + -mem[64] + 100
        if (block.timestamp * sub_454dab61) - (poolInfo[idx].field_512 * sub_454dab61) / block.timestamp - poolInfo[idx].field_512 != sub_454dab61:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * sub_454dab61) - (poolInfo[idx].field_512 * sub_454dab61):
            _250 = mem[64]
            mem[64] = mem[64] + 64
            mem[_250] = 26
            mem[_250 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _255 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _255 + 68] = mem[idx + _250 + 32]
                    idx = idx + 32
                    continue 
                mem[_255 + 68] = mem[_255 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _255 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _280 = mem[64]
                mem[64] = mem[64] + 64
                mem[_280] = 26
                mem[_280 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _320 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_320] = 26
                    mem[_320 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _335 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _335 + 68] = mem[idx + _320 + 32]
                        idx = idx + 32
                        continue 
                    mem[_335 + 68] = mem[_335 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _335 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _327 = mem[64]
                mem[64] = mem[64] + 64
                mem[_327] = 26
                mem[_327 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _351 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _351 + 68] = mem[idx + _327 + 32]
                    idx = idx + 32
                    continue 
                mem[_351 + 68] = mem[_351 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _351 + -mem[64] + 100
            if sub_aada310d * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_aada310d:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _283 = mem[64]
            mem[64] = mem[64] + 64
            mem[_283] = 26
            mem[_283 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner, sub_aada310d * 0 / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _326 = mem[64]
                mem[64] = mem[64] + 64
                mem[_326] = 26
                mem[_326 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _348 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _348 + 68] = mem[idx + _326 + 32]
                    idx = idx + 32
                    continue 
                mem[_348 + 68] = mem[_348 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _348 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _334 = mem[64]
            mem[64] = mem[64] + 64
            mem[_334] = 26
            mem[_334 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _364 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _364 + 68] = mem[idx + _334 + 32]
                idx = idx + 32
                continue 
            mem[_364 + 68] = mem[_364 + 74 len 26]
            revert with memory
              from mem[64]
               len _364 + -mem[64] + 100
        if (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / (block.timestamp * sub_454dab61) - (poolInfo[idx].field_512 * sub_454dab61) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _251 = mem[64]
        mem[64] = mem[64] + 64
        mem[_251] = 26
        mem[_251 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _258 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _258 + 68] = mem[idx + _251 + 32]
                idx = idx + 32
                continue 
            mem[_258 + 68] = mem[_258 + 74 len 26]
            revert with memory
              from mem[64]
               len _258 + -mem[64] + 100
        if not (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint:
            _282 = mem[64]
            mem[64] = mem[64] + 64
            mem[_282] = 26
            mem[_282 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint:
                _325 = mem[64]
                mem[64] = mem[64] + 64
                mem[_325] = 26
                mem[_325 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _345 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _345 + 68] = mem[idx + _325 + 32]
                    idx = idx + 32
                    continue 
                mem[_345 + 68] = mem[_345 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _345 + -mem[64] + 100
            if 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _333 = mem[64]
            mem[64] = mem[64] + 64
            mem[_333] = 26
            mem[_333 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _361 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _361 + 68] = mem[idx + _333 + 32]
                idx = idx + 32
                continue 
            mem[_361 + 68] = mem[_361 + 74 len 26]
            revert with memory
              from mem[64]
               len _361 + -mem[64] + 100
        if sub_aada310d * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint != sub_aada310d:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _284 = mem[64]
        mem[64] = mem[64] + 64
        mem[_284] = 26
        mem[_284 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_2541947fAddress)
        call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args owner, sub_aada310d * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_2541947fAddress)
        call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args this.address, (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint:
            _332 = mem[64]
            mem[64] = mem[64] + 64
            mem[_332] = 26
            mem[_332 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _358 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _358 + 68] = mem[idx + _332 + 32]
                idx = idx + 32
                continue 
            mem[_358 + 68] = mem[_358 + 74 len 26]
            revert with memory
              from mem[64]
               len _358 + -mem[64] + 100
        if 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _344 = mem[64]
        mem[64] = mem[64] + 64
        mem[_344] = 26
        mem[_344 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _372 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _372 + 68] = mem[idx + _344 + 32]
            idx = idx + 32
            continue 
        mem[_372 + 68] = mem[_372 + 74 len 26]
        revert with memory
          from mem[64]
           len _372 + -mem[64] + 100
    sub_454dab61 = arg1
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.timestamp <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            require ext_code.size(poolInfo[idx].field_1024)
            staticcall poolInfo[idx].field_1024.sharesTotal() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            require ext_code.size(sub_2541947fAddress)
            staticcall sub_2541947fAddress.totalSupply() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= sub_d06076fd:
                idx = idx + 1
                continue 
            _283 = mem[64]
            mem[64] = mem[64] + 64
            mem[_283] = 30
            mem[_283 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _283 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - poolInfo[idx].field_512 <= 0:
                idx = idx + 1
                continue 
            if not block.timestamp - poolInfo[idx].field_512:
                _299 = mem[64]
                mem[64] = mem[64] + 64
                mem[_299] = 26
                mem[_299 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _302 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _302 + 68] = mem[idx + _299 + 32]
                        idx = idx + 32
                        continue 
                    mem[_302 + 68] = mem[_302 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _302 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _327 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_327] = 26
                    mem[_327 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_2541947fAddress)
                    call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args owner, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_2541947fAddress)
                    call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _365 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_365] = 26
                        mem[_365 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _379 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _379 + 68] = mem[idx + _365 + 32]
                            idx = idx + 32
                            continue 
                        mem[_379 + 68] = mem[_379 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _379 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _372 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_372] = 26
                    mem[_372 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _391 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _391 + 68] = mem[idx + _372 + 32]
                        idx = idx + 32
                        continue 
                    mem[_391 + 68] = mem[_391 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _391 + -mem[64] + 100
                if sub_aada310d * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_aada310d:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _331 = mem[64]
                mem[64] = mem[64] + 64
                mem[_331] = 26
                mem[_331 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args owner, sub_aada310d * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_371] = 26
                    mem[_371 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _388 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _388 + 68] = mem[idx + _371 + 32]
                        idx = idx + 32
                        continue 
                    mem[_388 + 68] = mem[_388 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _388 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _378 = mem[64]
                mem[64] = mem[64] + 64
                mem[_378] = 26
                mem[_378 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _404 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _404 + 68] = mem[idx + _378 + 32]
                    idx = idx + 32
                    continue 
                mem[_404 + 68] = mem[_404 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _404 + -mem[64] + 100
            if (block.timestamp * sub_454dab61) - (poolInfo[idx].field_512 * sub_454dab61) / block.timestamp - poolInfo[idx].field_512 != sub_454dab61:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * sub_454dab61) - (poolInfo[idx].field_512 * sub_454dab61):
                _300 = mem[64]
                mem[64] = mem[64] + 64
                mem[_300] = 26
                mem[_300 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _305 + 68] = mem[idx + _300 + 32]
                        idx = idx + 32
                        continue 
                    mem[_305 + 68] = mem[_305 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _305 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _330 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_330] = 26
                    mem[_330 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_2541947fAddress)
                    call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args owner, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_2541947fAddress)
                    call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _370 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_370] = 26
                        mem[_370 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _385 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _385 + 68] = mem[idx + _370 + 32]
                            idx = idx + 32
                            continue 
                        mem[_385 + 68] = mem[_385 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _385 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _377 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_377] = 26
                    mem[_377 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _401 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _401 + 68] = mem[idx + _377 + 32]
                        idx = idx + 32
                        continue 
                    mem[_401 + 68] = mem[_401 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _401 + -mem[64] + 100
                if sub_aada310d * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_aada310d:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _333 = mem[64]
                mem[64] = mem[64] + 64
                mem[_333] = 26
                mem[_333 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args owner, sub_aada310d * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _376 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_376] = 26
                    mem[_376 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _398 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _398 + 68] = mem[idx + _376 + 32]
                        idx = idx + 32
                        continue 
                    mem[_398 + 68] = mem[_398 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _398 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _384 = mem[64]
                mem[64] = mem[64] + 64
                mem[_384] = 26
                mem[_384 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _414 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _414 + 68] = mem[idx + _384 + 32]
                    idx = idx + 32
                    continue 
                mem[_414 + 68] = mem[_414 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _414 + -mem[64] + 100
            if (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / (block.timestamp * sub_454dab61) - (poolInfo[idx].field_512 * sub_454dab61) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _301 = mem[64]
            mem[64] = mem[64] + 64
            mem[_301] = 26
            mem[_301 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _308 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _308 + 68] = mem[idx + _301 + 32]
                    idx = idx + 32
                    continue 
                mem[_308 + 68] = mem[_308 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _308 + -mem[64] + 100
            if not (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint:
                _332 = mem[64]
                mem[64] = mem[64] + 64
                mem[_332] = 26
                mem[_332 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint:
                    _375 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_375] = 26
                    mem[_375 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _395 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _395 + 68] = mem[idx + _375 + 32]
                        idx = idx + 32
                        continue 
                    mem[_395 + 68] = mem[_395 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _395 + -mem[64] + 100
                if 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _383 = mem[64]
                mem[64] = mem[64] + 64
                mem[_383] = 26
                mem[_383 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _411 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _411 + 68] = mem[idx + _383 + 32]
                    idx = idx + 32
                    continue 
                mem[_411 + 68] = mem[_411 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _411 + -mem[64] + 100
            if sub_aada310d * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint != sub_aada310d:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _334 = mem[64]
            mem[64] = mem[64] + 64
            mem[_334] = 26
            mem[_334 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner, sub_aada310d * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint:
                _382 = mem[64]
                mem[64] = mem[64] + 64
                mem[_382] = 26
                mem[_382 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _408 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _408 + 68] = mem[idx + _382 + 32]
                    idx = idx + 32
                    continue 
                mem[_408 + 68] = mem[_408 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _408 + -mem[64] + 100
            if 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _394 = mem[64]
            mem[64] = mem[64] + 64
            mem[_394] = 26
            mem[_394 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _422 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _422 + 68] = mem[idx + _394 + 32]
                idx = idx + 32
                continue 
            mem[_422 + 68] = mem[_422 + 74 len 26]
            revert with memory
              from mem[64]
               len _422 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3, address arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.timestamp <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            require ext_code.size(poolInfo[idx].field_1024)
            staticcall poolInfo[idx].field_1024.sharesTotal() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            require ext_code.size(sub_2541947fAddress)
            staticcall sub_2541947fAddress.totalSupply() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= sub_d06076fd:
                idx = idx + 1
                continue 
            _279 = mem[64]
            mem[64] = mem[64] + 64
            mem[_279] = 30
            mem[_279 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _279 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - poolInfo[idx].field_512 <= 0:
                idx = idx + 1
                continue 
            if not block.timestamp - poolInfo[idx].field_512:
                _295 = mem[64]
                mem[64] = mem[64] + 64
                mem[_295] = 26
                mem[_295 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _298 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _298 + 68] = mem[idx + _295 + 32]
                        idx = idx + 32
                        continue 
                    mem[_298 + 68] = mem[_298 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _298 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _323 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_323] = 26
                    mem[_323 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_2541947fAddress)
                    call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args owner, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_2541947fAddress)
                    call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _361 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_361] = 26
                        mem[_361 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _375 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _375 + 68] = mem[idx + _361 + 32]
                            idx = idx + 32
                            continue 
                        mem[_375 + 68] = mem[_375 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _375 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_368] = 26
                    mem[_368 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _387 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _387 + 68] = mem[idx + _368 + 32]
                        idx = idx + 32
                        continue 
                    mem[_387 + 68] = mem[_387 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _387 + -mem[64] + 100
                if sub_aada310d * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_aada310d:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _327 = mem[64]
                mem[64] = mem[64] + 64
                mem[_327] = 26
                mem[_327 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args owner, sub_aada310d * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _367 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_367] = 26
                    mem[_367 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _384 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _384 + 68] = mem[idx + _367 + 32]
                        idx = idx + 32
                        continue 
                    mem[_384 + 68] = mem[_384 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _384 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _374 = mem[64]
                mem[64] = mem[64] + 64
                mem[_374] = 26
                mem[_374 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _400 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _400 + 68] = mem[idx + _374 + 32]
                    idx = idx + 32
                    continue 
                mem[_400 + 68] = mem[_400 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _400 + -mem[64] + 100
            if (block.timestamp * sub_454dab61) - (poolInfo[idx].field_512 * sub_454dab61) / block.timestamp - poolInfo[idx].field_512 != sub_454dab61:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * sub_454dab61) - (poolInfo[idx].field_512 * sub_454dab61):
                _296 = mem[64]
                mem[64] = mem[64] + 64
                mem[_296] = 26
                mem[_296 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _301 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _301 + 68] = mem[idx + _296 + 32]
                        idx = idx + 32
                        continue 
                    mem[_301 + 68] = mem[_301 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _301 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _326 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_326] = 26
                    mem[_326 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_2541947fAddress)
                    call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args owner, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_2541947fAddress)
                    call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _366 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_366] = 26
                        mem[_366 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _381 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _381 + 68] = mem[idx + _366 + 32]
                            idx = idx + 32
                            continue 
                        mem[_381 + 68] = mem[_381 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _381 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _373 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_373] = 26
                    mem[_373 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _397 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _397 + 68] = mem[idx + _373 + 32]
                        idx = idx + 32
                        continue 
                    mem[_397 + 68] = mem[_397 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _397 + -mem[64] + 100
                if sub_aada310d * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_aada310d:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _329 = mem[64]
                mem[64] = mem[64] + 64
                mem[_329] = 26
                mem[_329 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args owner, sub_aada310d * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _372 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_372] = 26
                    mem[_372 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _394 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _394 + 68] = mem[idx + _372 + 32]
                        idx = idx + 32
                        continue 
                    mem[_394 + 68] = mem[_394 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _394 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _380 = mem[64]
                mem[64] = mem[64] + 64
                mem[_380] = 26
                mem[_380 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _410 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _410 + 68] = mem[idx + _380 + 32]
                    idx = idx + 32
                    continue 
                mem[_410 + 68] = mem[_410 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _410 + -mem[64] + 100
            if (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / (block.timestamp * sub_454dab61) - (poolInfo[idx].field_512 * sub_454dab61) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _297 = mem[64]
            mem[64] = mem[64] + 64
            mem[_297] = 26
            mem[_297 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _304 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _304 + 68] = mem[idx + _297 + 32]
                    idx = idx + 32
                    continue 
                mem[_304 + 68] = mem[_304 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _304 + -mem[64] + 100
            if not (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint:
                _328 = mem[64]
                mem[64] = mem[64] + 64
                mem[_328] = 26
                mem[_328 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_2541947fAddress)
                call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint:
                    _371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_371] = 26
                    mem[_371 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _391 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _391 + 68] = mem[idx + _371 + 32]
                        idx = idx + 32
                        continue 
                    mem[_391 + 68] = mem[_391 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _391 + -mem[64] + 100
                if 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _379 = mem[64]
                mem[64] = mem[64] + 64
                mem[_379] = 26
                mem[_379 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _407 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _407 + 68] = mem[idx + _379 + 32]
                    idx = idx + 32
                    continue 
                mem[_407 + 68] = mem[_407 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _407 + -mem[64] + 100
            if sub_aada310d * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint != sub_aada310d:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _330 = mem[64]
            mem[64] = mem[64] + 64
            mem[_330] = 26
            mem[_330 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner, sub_aada310d * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_2541947fAddress)
            call sub_2541947fAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint:
                _378 = mem[64]
                mem[64] = mem[64] + 64
                mem[_378] = 26
                mem[_378 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _404 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _404 + 68] = mem[idx + _378 + 32]
                    idx = idx + 32
                    continue 
                mem[_404 + 68] = mem[_404 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _404 + -mem[64] + 100
            if 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _390 = mem[64]
            mem[64] = mem[64] + 64
            mem[_390] = 26
            mem[_390 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_454dab61 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_454dab61 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _418 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _418 + 68] = mem[idx + _390 + 32]
                idx = idx + 32
                continue 
            mem[_418 + 68] = mem[_418 + 74 len 26]
            revert with memory
              from mem[64]
               len _418 + -mem[64] + 100
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF3F7[stor8.length] = arg1
    if block.timestamp > startTime:
        storF3F7[stor8.length] = block.timestamp
    else:
        storF3F7[stor8.length] = startTime
    storF3F7[stor8.length] = 0
    storF3F7[stor8.length] = arg4
}



}
