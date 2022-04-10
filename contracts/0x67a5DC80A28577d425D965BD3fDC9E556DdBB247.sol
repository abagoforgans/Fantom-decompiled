contract main {




// =====================  Runtime code  =====================


const controllerFeeUL = 300

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const wbnbAddress = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const buyBackAddress = 57005

const buyBackRateUL = 800

const entranceFeeFactorLL = 9950

const entranceFeeFactorMax = 10000


address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
address farmContractAddress; offset 24
uint256 pid;
address wantAddress;
address token0Address;
address token1Address;
address earnedAddress;
address uniRouterAddress;
uint32 stor9;
address sub_88f9e800Address;
uint256 stor9;
address sub_b3ed4599Address;
uint8 onlyGov; offset 160
uint128 stor11; offset 160
address govAddress;
uint256 lastEarnBlock;
uint256 stor13; offset 32
uint256 wantLockedTotal;
big480 stor13;
uint256 sharesTotal;
uint256 controllerFee;
uint256 buyBackRate;
uint256 entranceFeeFactor;
array of address sub_67eed8e0;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of address token0ToEarnedPath;
array of address token1ToEarnedPath;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1]
}

function onlyGov() payable {
    return bool(onlyGov)
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function entranceFeeFactor() payable {
    return entranceFeeFactor
}

function buyBackRate() payable {
    return buyBackRate
}

function wantLockedTotal() payable {
    return wantLockedTotal
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return govAddress
}

function paused() payable {
    return bool(uint8(stor2.field_0))
}

function sub_67eed8e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_67eed8e0.length
    return sub_67eed8e0[arg1]
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function token0Address() payable {
    return token0Address
}

function isCAKEStaking() payable {
    return bool(uint8(stor2.field_8))
}

function controllerFee() payable {
    return controllerFee
}

function sub_88f9e800(?) payable {
    return address(sub_88f9e800Address)
}

function owner() payable {
    return owner
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function farmContractAddress() payable {
    return farmContractAddress
}

function sub_a21b927f(?) payable {
    return bool(uint8(stor2.field_16))
}

function sub_b3ed4599(?) payable {
    return sub_b3ed4599Address
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1]
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function token1Address() payable {
    return token1Address
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function pid() payable {
    return pid
}

function _fallback() payable {
    revert
}

function earn() payable {
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
}

function convertDustToEarned() payable {
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
}

function farm() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    stor1 = 1
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
}

function setOnlyGov(bool arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    stor11 = Mask(96, 0, arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function setControllerFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 300:
        revert with 0, 'too high'
    controllerFee = arg1
}

function setbuyBackRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if buyBackRate > 800:
        revert with 0, 'too high'
    buyBackRate = arg1
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
}

function setEntranceFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    entranceFeeFactor = arg1
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

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if earnedAddress == arg1:
        revert with 0, '!safe'
    if wantAddress == arg1:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
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

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call wantAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not wantLockedTotal:
            if arg2 + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            if not uint8(stor2.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            return arg2
        if not arg2:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if 0 / wantLockedTotal / 10000:
                if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                return (0 / wantLockedTotal / 10000)
            if sharesTotal:
                if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                return (0 / wantLockedTotal / 10000)
        else:
            if sharesTotal * arg2 / arg2 != sharesTotal:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if not sharesTotal * arg2:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / wantLockedTotal / 10000:
                    if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += 0 / wantLockedTotal / 10000
                    if not uint8(stor2.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                    return (0 / wantLockedTotal / 10000)
                if sharesTotal:
                    if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += 0 / wantLockedTotal / 10000
                    if not uint8(stor2.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                    return (0 / wantLockedTotal / 10000)
            else:
                if entranceFeeFactor * sharesTotal * arg2 / sharesTotal * arg2 != entranceFeeFactor:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000:
                    if (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000
                    if not uint8(stor2.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                    return (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000)
                if sharesTotal:
                    if (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000
                    if not uint8(stor2.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                    return (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000)
        ('iszero', ('stor', ('name', 'sharesTotal', 14)))
        if not arg2:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            return (0 / wantLockedTotal / 10000)
        if entranceFeeFactor * arg2 / arg2 != entranceFeeFactor:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[521 len 31]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not wantLockedTotal:
            if arg2 + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            if not uint8(stor2.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            return arg2
        if not arg2:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if 0 / wantLockedTotal / 10000:
                if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                return (0 / wantLockedTotal / 10000)
            if sharesTotal:
                if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                return (0 / wantLockedTotal / 10000)
        else:
            if sharesTotal * arg2 / arg2 != sharesTotal:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if not sharesTotal * arg2:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / wantLockedTotal / 10000:
                    if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += 0 / wantLockedTotal / 10000
                    if not uint8(stor2.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                    return (0 / wantLockedTotal / 10000)
                if sharesTotal:
                    if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += 0 / wantLockedTotal / 10000
                    if not uint8(stor2.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                    return (0 / wantLockedTotal / 10000)
            else:
                if entranceFeeFactor * sharesTotal * arg2 / sharesTotal * arg2 != entranceFeeFactor:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000:
                    if (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000
                    if not uint8(stor2.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                    return (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000)
                if sharesTotal:
                    if (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000
                    if not uint8(stor2.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                    return (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000)
        ('iszero', ('stor', ('name', 'sharesTotal', 14)))
        if not arg2:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            return (0 / wantLockedTotal / 10000)
        if entranceFeeFactor * arg2 / arg2 != entranceFeeFactor:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 522 len 31]
    ('eq', ('div', ('mul', ('stor', ('name', 'entranceFeeFactor', 17)), ('param', 'arg2')), ('param', 'arg2')), ('stor', ('name', 'entranceFeeFactor', 17)))
    if not wantLockedTotal:
        revert with 0, 'SafeMath: division by zero'
    if (entranceFeeFactor * arg2 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
        revert with 0, 'SafeMath: addition overflow'
    sharesTotal += entranceFeeFactor * arg2 / wantLockedTotal / 10000
    if not uint8(stor2.field_16):
        if arg2 + wantLockedTotal < wantLockedTotal:
            revert with 0, 'SafeMath: addition overflow'
        wantLockedTotal += arg2
    return (entranceFeeFactor * arg2 / wantLockedTotal / 10000)
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0, '_wantAmt <= 0'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 <= ext_call.return_data[0]:
        if wantLockedTotal < arg2:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 0, stor13.field_32)
                call wantAddress with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args Mask(480, 0, stor13.field_0), mem[516 len 4]
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
                stor1 = 1
                return (sharesTotal * wantLockedTotal / wantLockedTotal)
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if wantLockedTotal > wantLockedTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            wantLockedTotal = 0
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 0, stor13.field_32)
            call wantAddress with:
               funct uint32(stor9)
                 gas gas_remaining wei
                args Mask(480, 0, stor13.field_0), mem[516 len 4]
        else:
            if not arg2:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= 0 / wantLockedTotal
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor9)
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
                    stor1 = 1
                    return (0 / wantLockedTotal)
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if arg2 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= arg2
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
            else:
                if sharesTotal * arg2 / arg2 != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor9)
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
                    stor1 = 1
                    return (sharesTotal * arg2 / wantLockedTotal)
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if arg2 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= arg2
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
                mem[516 len 0] = 0
            call wantAddress with:
               funct uint32(stor9)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[516 len 4]
    else:
        if wantLockedTotal >= ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= 0 / wantLockedTotal
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor9)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
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
                    stor1 = 1
                    return (0 / wantLockedTotal)
            else:
                if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor9)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
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
                    stor1 = 1
                    return (sharesTotal * ext_call.return_data[0] / wantLockedTotal)
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if ext_call.return_data[0] > wantLockedTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            wantLockedTotal -= ext_call.return_data[0]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
            mem[516 len 0] = 0
            call wantAddress with:
               funct uint32(stor9)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
        else:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 0, stor13.field_32)
                call wantAddress with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args Mask(480, 0, stor13.field_0), mem[516 len 4]
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
                stor1 = 1
                return (sharesTotal * wantLockedTotal / wantLockedTotal)
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if wantLockedTotal > wantLockedTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            wantLockedTotal = 0
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 0, stor13.field_32)
            mem[516 len 0] = 0
            call wantAddress with:
               funct uint32(stor9)
                 gas gas_remaining wei
                args Mask(480, 0, stor13.field_0), mem[516 len 4]
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
    stor1 = 1
    return sharesTotal
}



}
