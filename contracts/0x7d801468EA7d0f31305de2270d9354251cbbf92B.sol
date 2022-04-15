contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#  - withdrawAll(uint256 arg1)
#
address owner;
uint256 stor1;
address NATIVEAddress;
address lotteryAddress;
address sub_d3dc7539Address;
uint256 ownerNATIVEReward;
uint256 sub_97ba9de9;
uint256 stor7;
uint256 nATIVEPerBlock;
uint256 nATIVEMaxSupply;
uint256 startBlock;
uint256 startTime;
uint256 sub_422e3385;
uint256 sub_92972a07;
uint256 sub_4bba327f;
uint256 sub_8250fe95;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727731;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727732;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727733;
array of address stor12396694973890998440467380340983585058878106250672390494374587083972727727734;

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

function sub_422e3385(?) payable {
    return sub_422e3385
}

function startBlock() payable {
    return startBlock
}

function sub_4bba327f(?) payable {
    return sub_4bba327f
}

function ownerNATIVEReward() payable {
    return ownerNATIVEReward
}

function startTime() payable {
    return startTime
}

function sub_8250fe95(?) payable {
    return sub_8250fe95
}

function owner() payable {
    return owner
}

function sub_92972a07(?) payable {
    return sub_92972a07
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_97ba9de9(?) payable {
    return sub_97ba9de9
}

function NATIVEMaxSupply() payable {
    return nATIVEMaxSupply
}

function NATIVE() payable {
    return NATIVEAddress
}

function lottery() payable {
    return lotteryAddress
}

function sub_d3dc7539(?) payable {
    return sub_d3dc7539Address
}

function NATIVEPerBlock() payable {
    return nATIVEPerBlock
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

function getWantLockedTotal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(NATIVEAddress)
    staticcall NATIVEAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= nATIVEMaxSupply:
        return 0
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0 / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if NATIVEAddress == arg1:
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
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
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
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, 0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), msg.sender, 0 / ext_call.return_data[0]
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
        emit EmergencyWithdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
    else:
        if ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0]) >> 32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0]) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), 
                            msg.sender,
                            ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0]
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
        emit EmergencyWithdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0]), msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    stor1 = 1
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 16
        if block.number > poolInfo[idx].field_512:
            require ext_code.size(poolInfo[idx].field_1024)
            staticcall poolInfo[idx].field_1024.sharesTotal() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
            else:
                require ext_code.size(NATIVEAddress)
                staticcall NATIVEAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < nATIVEMaxSupply:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number - poolInfo[idx].field_512 > 0:
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                            else:
                                if ownerNATIVEReward * 0 / totalAllocPoint / 0 / totalAllocPoint != ownerNATIVEReward:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args owner, ownerNATIVEReward * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args lotteryAddress, 0
                            else:
                                if sub_97ba9de9 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_97ba9de9:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args lotteryAddress, sub_97ba9de9 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(NATIVEAddress)
                            call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
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
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * nATIVEPerBlock) - (poolInfo[idx].field_512 * nATIVEPerBlock) / block.number - poolInfo[idx].field_512 != nATIVEPerBlock:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * nATIVEPerBlock) - (poolInfo[idx].field_512 * nATIVEPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args owner, 0
                                else:
                                    if ownerNATIVEReward * 0 / totalAllocPoint / 0 / totalAllocPoint != ownerNATIVEReward:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args owner, ownerNATIVEReward * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args lotteryAddress, 0
                                else:
                                    if sub_97ba9de9 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_97ba9de9:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args lotteryAddress, sub_97ba9de9 * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
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
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / (block.number * nATIVEPerBlock) - (poolInfo[idx].field_512 * nATIVEPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args owner, 0
                                else:
                                    if ownerNATIVEReward * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint != ownerNATIVEReward:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args owner, ownerNATIVEReward * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args lotteryAddress, 0
                                else:
                                    if sub_97ba9de9 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_97ba9de9:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args lotteryAddress, sub_97ba9de9 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.sharesTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
        else:
            require ext_code.size(NATIVEAddress)
            staticcall NATIVEAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < nATIVEMaxSupply:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.number - poolInfo[arg1].field_512 > 0:
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(NATIVEAddress)
                            call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                        else:
                            if ownerNATIVEReward * 0 / totalAllocPoint / 0 / totalAllocPoint != ownerNATIVEReward:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(NATIVEAddress)
                            call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args owner, ownerNATIVEReward * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(NATIVEAddress)
                            call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args lotteryAddress, 0
                        else:
                            if sub_97ba9de9 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_97ba9de9:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(NATIVEAddress)
                            call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args lotteryAddress, sub_97ba9de9 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(NATIVEAddress)
                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
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
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * nATIVEPerBlock) - (poolInfo[arg1].field_512 * nATIVEPerBlock) / block.number - poolInfo[arg1].field_512 != nATIVEPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * nATIVEPerBlock) - (poolInfo[arg1].field_512 * nATIVEPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                            else:
                                if ownerNATIVEReward * 0 / totalAllocPoint / 0 / totalAllocPoint != ownerNATIVEReward:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args owner, ownerNATIVEReward * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args lotteryAddress, 0
                            else:
                                if sub_97ba9de9 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_97ba9de9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args lotteryAddress, sub_97ba9de9 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(NATIVEAddress)
                            call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
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
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / (block.number * nATIVEPerBlock) - (poolInfo[arg1].field_512 * nATIVEPerBlock) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                            else:
                                if ownerNATIVEReward * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != ownerNATIVEReward:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args owner, ownerNATIVEReward * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args lotteryAddress, 0
                            else:
                                if sub_97ba9de9 * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_97ba9de9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args lotteryAddress, sub_97ba9de9 * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(NATIVEAddress)
                            call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 16
            if block.number > poolInfo[idx].field_512:
                require ext_code.size(poolInfo[idx].field_1024)
                staticcall poolInfo[idx].field_1024.sharesTotal() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                else:
                    require ext_code.size(NATIVEAddress)
                    staticcall NATIVEAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < nATIVEMaxSupply:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number - poolInfo[idx].field_512 > 0:
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args owner, 0
                                else:
                                    if ownerNATIVEReward * 0 / totalAllocPoint / 0 / totalAllocPoint != ownerNATIVEReward:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args owner, ownerNATIVEReward * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args lotteryAddress, 0
                                else:
                                    if sub_97ba9de9 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_97ba9de9:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args lotteryAddress, sub_97ba9de9 * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
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
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * nATIVEPerBlock) - (poolInfo[idx].field_512 * nATIVEPerBlock) / block.number - poolInfo[idx].field_512 != nATIVEPerBlock:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * nATIVEPerBlock) - (poolInfo[idx].field_512 * nATIVEPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        if ownerNATIVEReward * 0 / totalAllocPoint / 0 / totalAllocPoint != ownerNATIVEReward:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args owner, ownerNATIVEReward * 0 / totalAllocPoint / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args lotteryAddress, 0
                                    else:
                                        if sub_97ba9de9 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_97ba9de9:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args lotteryAddress, sub_97ba9de9 * 0 / totalAllocPoint / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
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
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / (block.number * nATIVEPerBlock) - (poolInfo[idx].field_512 * nATIVEPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        if ownerNATIVEReward * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint != ownerNATIVEReward:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args owner, ownerNATIVEReward * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args lotteryAddress, 0
                                    else:
                                        if sub_97ba9de9 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_97ba9de9:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args lotteryAddress, sub_97ba9de9 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
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

function add(uint256 arg1, address arg2, bool arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 16
            if block.number > poolInfo[idx].field_512:
                require ext_code.size(poolInfo[idx].field_1024)
                staticcall poolInfo[idx].field_1024.sharesTotal() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                else:
                    require ext_code.size(NATIVEAddress)
                    staticcall NATIVEAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < nATIVEMaxSupply:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number - poolInfo[idx].field_512 > 0:
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args owner, 0
                                else:
                                    if ownerNATIVEReward * 0 / totalAllocPoint / 0 / totalAllocPoint != ownerNATIVEReward:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args owner, ownerNATIVEReward * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args lotteryAddress, 0
                                else:
                                    if sub_97ba9de9 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_97ba9de9:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args lotteryAddress, sub_97ba9de9 * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
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
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * nATIVEPerBlock) - (poolInfo[idx].field_512 * nATIVEPerBlock) / block.number - poolInfo[idx].field_512 != nATIVEPerBlock:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * nATIVEPerBlock) - (poolInfo[idx].field_512 * nATIVEPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        if ownerNATIVEReward * 0 / totalAllocPoint / 0 / totalAllocPoint != ownerNATIVEReward:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args owner, ownerNATIVEReward * 0 / totalAllocPoint / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args lotteryAddress, 0
                                    else:
                                        if sub_97ba9de9 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_97ba9de9:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args lotteryAddress, sub_97ba9de9 * 0 / totalAllocPoint / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
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
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / (block.number * nATIVEPerBlock) - (poolInfo[idx].field_512 * nATIVEPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        if ownerNATIVEReward * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint != ownerNATIVEReward:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args owner, ownerNATIVEReward * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args lotteryAddress, 0
                                    else:
                                        if sub_97ba9de9 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_97ba9de9:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args lotteryAddress, sub_97ba9de9 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    stor1B68[stor16.length] = arg1
    if block.number > startBlock:
        stor1B68[stor16.length] = block.number
    else:
        stor1B68[stor16.length] = startBlock
    stor1B68[stor16.length] = 0
    stor1B68[stor16.length] = arg4
}

function pendingNATIVE(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
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
    require ext_code.size(NATIVEAddress)
    staticcall NATIVEAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= nATIVEMaxSupply:
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
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * nATIVEPerBlock) - (poolInfo[arg1].field_512 * nATIVEPerBlock) / block.number - poolInfo[arg1].field_512 != nATIVEPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * nATIVEPerBlock) - (poolInfo[arg1].field_512 * nATIVEPerBlock):
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
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / (block.number * nATIVEPerBlock) - (poolInfo[arg1].field_512 * nATIVEPerBlock) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * nATIVEPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nATIVEPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function harvestAll() payable {
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    idx = 0
    while idx < poolInfo.length:
        mem[0] = msg.sender
        mem[32] = sha3(idx, 17)
        if userInfo[idx][msg.sender].field_0:
            require idx < poolInfo.length
            mem[0] = 16
            if block.number > poolInfo[idx].field_512:
                require ext_code.size(poolInfo[idx].field_1024)
                staticcall poolInfo[idx].field_1024.sharesTotal() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                else:
                    require ext_code.size(NATIVEAddress)
                    staticcall NATIVEAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < nATIVEMaxSupply:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number - poolInfo[idx].field_512 > 0:
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args owner, 0
                                else:
                                    if ownerNATIVEReward * 0 / totalAllocPoint / 0 / totalAllocPoint != ownerNATIVEReward:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args owner, ownerNATIVEReward * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args lotteryAddress, 0
                                else:
                                    if sub_97ba9de9 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_97ba9de9:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args lotteryAddress, sub_97ba9de9 * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(NATIVEAddress)
                                call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
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
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * nATIVEPerBlock) - (poolInfo[idx].field_512 * nATIVEPerBlock) / block.number - poolInfo[idx].field_512 != nATIVEPerBlock:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * nATIVEPerBlock) - (poolInfo[idx].field_512 * nATIVEPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        if ownerNATIVEReward * 0 / totalAllocPoint / 0 / totalAllocPoint != ownerNATIVEReward:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args owner, ownerNATIVEReward * 0 / totalAllocPoint / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args lotteryAddress, 0
                                    else:
                                        if sub_97ba9de9 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_97ba9de9:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args lotteryAddress, sub_97ba9de9 * 0 / totalAllocPoint / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
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
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / (block.number * nATIVEPerBlock) - (poolInfo[idx].field_512 * nATIVEPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        if ownerNATIVEReward * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint != ownerNATIVEReward:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args owner, ownerNATIVEReward * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args lotteryAddress, 0
                                    else:
                                        if sub_97ba9de9 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_97ba9de9:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(NATIVEAddress)
                                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args lotteryAddress, sub_97ba9de9 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(NATIVEAddress)
                                    call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * nATIVEPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nATIVEPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
            if not userInfo[idx][msg.sender].field_0:
                if userInfo[idx][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[idx][msg.sender].field_256:
                    require ext_code.size(NATIVEAddress)
                    staticcall NATIVEAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(NATIVEAddress)
                    if -userInfo[idx][msg.sender].field_256 <= ext_call.return_data[0]:
                        call NATIVEAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[idx][msg.sender].field_256
                    else:
                        call NATIVEAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not -userInfo[idx][msg.sender].field_256:
                        require ext_code.size(sub_d3dc7539Address)
                        staticcall sub_d3dc7539Address.0x743fc745 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(NATIVEAddress)
                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d3dc7539Address)
                        staticcall sub_d3dc7539Address.0x743fc745 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 0xb8b58e0300000000000000000000000000000000000000000000000000000000
                        mem[100] = address(ext_call.return_data[0])
                        mem[132] = 0
                        require ext_code.size(sub_d3dc7539Address)
                        call sub_d3dc7539Address.0xb8b58e03 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0
                    else:
                        if -1 * stor7 * userInfo[idx][msg.sender].field_256 / -userInfo[idx][msg.sender].field_256 != stor7:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        require ext_code.size(sub_d3dc7539Address)
                        staticcall sub_d3dc7539Address.0x743fc745 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(NATIVEAddress)
                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), -1 * stor7 * userInfo[idx][msg.sender].field_256 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d3dc7539Address)
                        staticcall sub_d3dc7539Address.0x743fc745 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 0xb8b58e0300000000000000000000000000000000000000000000000000000000
                        mem[100] = address(ext_call.return_data[0])
                        mem[132] = -1 * stor7 * userInfo[idx][msg.sender].field_256 / 10000
                        require ext_code.size(sub_d3dc7539Address)
                        call sub_d3dc7539Address.0xb8b58e03 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), -1 * stor7 * userInfo[idx][msg.sender].field_256 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != poolInfo[idx].field_768:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if userInfo[idx][msg.sender].field_256 > poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / 10^12) - userInfo[idx][msg.sender].field_256:
                    require ext_code.size(NATIVEAddress)
                    staticcall NATIVEAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(NATIVEAddress)
                    if (poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / 10^12) - userInfo[idx][msg.sender].field_256 <= ext_call.return_data[0]:
                        call NATIVEAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                    else:
                        call NATIVEAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / 10^12) - userInfo[idx][msg.sender].field_256:
                        require ext_code.size(sub_d3dc7539Address)
                        staticcall sub_d3dc7539Address.0x743fc745 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(NATIVEAddress)
                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d3dc7539Address)
                        staticcall sub_d3dc7539Address.0x743fc745 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 0xb8b58e0300000000000000000000000000000000000000000000000000000000
                        mem[100] = address(ext_call.return_data[0])
                        mem[132] = 0
                        require ext_code.size(sub_d3dc7539Address)
                        call sub_d3dc7539Address.0xb8b58e03 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0
                    else:
                        if (poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / 10^12 * stor7) - (userInfo[idx][msg.sender].field_256 * stor7) / (poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / 10^12) - userInfo[idx][msg.sender].field_256 != stor7:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        require ext_code.size(sub_d3dc7539Address)
                        staticcall sub_d3dc7539Address.0x743fc745 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(NATIVEAddress)
                        call NATIVEAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), (poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / 10^12 * stor7) - (userInfo[idx][msg.sender].field_256 * stor7) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d3dc7539Address)
                        staticcall sub_d3dc7539Address.0x743fc745 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 0xb8b58e0300000000000000000000000000000000000000000000000000000000
                        mem[100] = address(ext_call.return_data[0])
                        mem[132] = (poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / 10^12 * stor7) - (userInfo[idx][msg.sender].field_256 * stor7) / 10000
                        require ext_code.size(sub_d3dc7539Address)
                        call sub_d3dc7539Address.0xb8b58e03 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), (poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / 10^12 * stor7) - (userInfo[idx][msg.sender].field_256 * stor7) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if not userInfo[idx][msg.sender].field_0:
                userInfo[idx][msg.sender].field_256 = 0
            else:
                if poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != poolInfo[idx].field_768:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                userInfo[idx][msg.sender].field_256 = poolInfo[idx].field_768 * userInfo[idx][msg.sender].field_0 / 10^12
        idx = idx + 1
        continue 
    stor1 = 1
}



}
