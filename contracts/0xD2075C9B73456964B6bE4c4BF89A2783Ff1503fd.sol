contract main {




// =====================  Runtime code  =====================


#
#  - resetAllowances()
#  - unpause()
#  - convertDustToEarned()
#  - earn()
#
const usdcAddress = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const withdrawFeeFactorMax = 10000

const buyBackAddress = 57005

const withdrawFeeFactorLL = 9900

const rewardAddress = 0xfc6c4e084ccb3f2b1c8ae7b046cd4215e171ea93

const feeMaxTotal = 1000

const sub_990a1ce4(?) = 0x4b122eb5632077abdd2c38e8d9392348d5ca15

const slippageFactorUL = 995

const feeMax = 10000


address owner;
uint256 stor1;
uint8 paused;
address wantAddress; offset 8
address token0Address;
address token1Address;
address earnedAddress;
address uniRouterAddress;
uint32 stor7;
address withdrawFeeAddress;
uint256 stor7;
address feeAddress;
uint32 stor9;
address vaultChefAddress;
uint256 stor9;
address govAddress;
uint256 lastEarnBlock;
uint256 sharesTotal;
uint256 controllerFee;
uint256 rewardRate;
uint256 buyBackRate;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address sub_ff8dcbb6;
array of address sub_49281683;
array of address sub_b3c66c24;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of address token0ToEarnedPath;
array of address token1ToEarnedPath;
address masterchefAddress;
uint256 pid;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1]
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function buyBackRate() payable {
    return buyBackRate
}

function vaultChefAddress() payable {
    return address(vaultChefAddress)
}

function masterchefAddress() payable {
    return masterchefAddress
}

function feeAddress() payable {
    return feeAddress
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return govAddress
}

function sub_49281683(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_49281683.length
    return sub_49281683[arg1]
}

function paused() payable {
    return bool(paused)
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function withdrawFeeAddress() payable {
    return address(withdrawFeeAddress)
}

function rewardRate() payable {
    return rewardRate
}

function token0Address() payable {
    return token0Address
}

function controllerFee() payable {
    return controllerFee
}

function owner() payable {
    return owner
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function sub_b3c66c24(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b3c66c24.length
    return sub_b3c66c24[arg1]
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

function sub_ff8dcbb6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_ff8dcbb6.length
    return sub_ff8dcbb6[arg1]
}

function slippageFactor() payable {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function vaultSharesTotal() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function panic() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    require ext_code.size(masterchefAddress)
    call masterchefAddress.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args pid
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function wantLockedTotal() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, address arg7, address arg8) payable {
    require calldata.size - 4 >= 256
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 + arg2 + arg1 > 1000:
        revert with 0, 'Max fee of 10%'
    if arg4 < 9900:
        revert with 0, '_withdrawFeeFactor too low'
    if arg4 > 10000:
        revert with 0, '_withdrawFeeFactor too high'
    if arg5 > 995:
        revert with 0, '_slippageFactor too high'
    if not arg7:
        revert with 0, 'Invalid address'
    if not arg8:
        revert with 0, 'Invalid address'
    controllerFee = arg1
    rewardRate = arg2
    buyBackRate = arg3
    withdrawFeeFactor = arg4
    slippageFactor = arg5
    uniRouterAddress = arg6
    address(withdrawFeeAddress) = arg7
    feeAddress = arg8
    emit SetSettings(arg1, arg2, arg3, arg4, arg5, address(arg6), address(arg7), arg8);
}

function unpanic() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
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
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
    if not sharesTotal:
        if sharesTotal < sharesTotal:
            revert with 0, 'SafeMath: addition overflow'
        stor1 = 1
        return 0
    if not 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (0 / 2 * ext_call.return_data[0]) + sharesTotal < sharesTotal:
        revert with 0, 'SafeMath: addition overflow'
    sharesTotal += 0 / 2 * ext_call.return_data[0]
    stor1 = 1
    return (0 / 2 * ext_call.return_data[0])
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not arg2:
        revert with 0, '_wantAmt is 0'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 <= ext_call.return_data[0]:
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 <= 2 * ext_call.return_data[0]:
            if not arg2:
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / 2 * ext_call.return_data[0] <= sharesTotal:
                    sharesTotal -= 0 / 2 * ext_call.return_data[0]
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                            if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                            mem[644 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                            if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, address(vaultChefAddress), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return (0 / 2 * ext_call.return_data[0])
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if withdrawFeeFactor > 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
                    mem[644 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor9)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                else:
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                        mem[580 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor7)
                             gas gas_remaining wei
                            args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, address(vaultChefAddress), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if sharesTotal * arg2 / arg2 != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * arg2 / 2 * ext_call.return_data[0] <= sharesTotal:
                    sharesTotal -= sharesTotal * arg2 / 2 * ext_call.return_data[0]
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                            if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                            mem[644 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                            if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, address(vaultChefAddress), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return (sharesTotal * arg2 / 2 * ext_call.return_data[0])
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if withdrawFeeFactor > 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
                    mem[644 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor9)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                else:
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                        mem[580 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor7)
                             gas gas_remaining wei
                            args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, address(vaultChefAddress), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        else:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                            if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, address(vaultChefAddress), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pid, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / 2 * ext_call.return_data[0] <= sharesTotal:
                    sharesTotal -= 0 / 2 * ext_call.return_data[0]
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 2 * ext_call.return_data[0]:
                        if 0 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 31, ext_call.return_data[0]) >> 31
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            mem[644 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, address(vaultChefAddress), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return (0 / 2 * ext_call.return_data[0])
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if withdrawFeeFactor > 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 2 * ext_call.return_data[0]:
                    if 0 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 31, ext_call.return_data[0]) >> 31
                    mem[644 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor9)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                else:
                    if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                        mem[580 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor7)
                             gas gas_remaining wei
                            args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, address(vaultChefAddress), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] <= sharesTotal:
                    sharesTotal -= (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0]
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 2 * ext_call.return_data[0]:
                        if 0 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 31, ext_call.return_data[0]) >> 31
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, address(vaultChefAddress), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return ((ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0])
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if withdrawFeeFactor > 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 2 * ext_call.return_data[0]:
                    if 0 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 31, ext_call.return_data[0]) >> 31
                    mem[644 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor9)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                else:
                    if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                        call wantAddress with:
                           funct uint32(stor7)
                             gas gas_remaining wei
                            args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
    else:
        if ext_call.return_data[0] > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(masterchefAddress)
        call masterchefAddress.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pid, arg2 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 <= ext_call.return_data[0]:
            if arg2 <= 2 * ext_call.return_data[0]:
                if not arg2:
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / 2 * ext_call.return_data[0] <= sharesTotal:
                        sharesTotal -= 0 / 2 * ext_call.return_data[0]
                        if withdrawFeeFactor > 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                                if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                                mem[708 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                                mem[644 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return (0 / 2 * ext_call.return_data[0])
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                        stor1 = 1
                        return sharesTotal
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                        stor1 = 1
                        return sharesTotal
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                    call wantAddress with:
                       funct uint32(stor7)
                         gas gas_remaining wei
                        args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                        mem[ceil32(return_data.size) + 873 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        stor1 = 1
                        return sharesTotal
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor9)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 841]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return sharesTotal, 
                           mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if sharesTotal * arg2 / arg2 != sharesTotal:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * arg2 / 2 * ext_call.return_data[0] <= sharesTotal:
                    sharesTotal -= sharesTotal * arg2 / 2 * ext_call.return_data[0]
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
                        mem[708 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                    else:
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                            if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                            mem[708 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                            mem[644 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                            if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return (sharesTotal * arg2 / 2 * ext_call.return_data[0])
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if withdrawFeeFactor > 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
                    mem[708 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor9)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                else:
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor7)
                             gas gas_remaining wei
                            args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args pid, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / 2 * ext_call.return_data[0] <= sharesTotal:
                        sharesTotal -= 0 / 2 * ext_call.return_data[0]
                        if withdrawFeeFactor > 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not 2 * ext_call.return_data[0]:
                            if 0 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 31, ext_call.return_data[0]) >> 31
                            mem[708 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                                mem[708 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                                mem[644 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                                    call wantAddress with:
                                       funct uint32(stor9)
                                         gas gas_remaining wei
                                        args (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 841]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                    if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                                    call wantAddress with:
                                       funct uint32(stor9)
                                         gas gas_remaining wei
                                        args (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 841]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        stor1 = 1
                        return (0 / 2 * ext_call.return_data[0])
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 2 * ext_call.return_data[0]:
                        if 0 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 31, ext_call.return_data[0]) >> 31
                        mem[708 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                    else:
                        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            mem[708 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            mem[ceil32(return_data.size) + 873 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
                else:
                    if (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] != sharesTotal:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] <= sharesTotal:
                        sharesTotal -= (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0]
                        if withdrawFeeFactor > 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not 2 * ext_call.return_data[0]:
                            if 0 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 31, ext_call.return_data[0]) >> 31
                            mem[708 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                                mem[644 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return ((ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0])
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 2 * ext_call.return_data[0]:
                        if 0 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 31, ext_call.return_data[0]) >> 31
                        mem[708 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                    else:
                        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                            mem[644 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            if ext_call.return_data[0] <= 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / 2 * ext_call.return_data[0] <= sharesTotal:
                        sharesTotal -= 0 / 2 * ext_call.return_data[0]
                        if withdrawFeeFactor > 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0]:
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
                            mem[708 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                                if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                                mem[708 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) << 224, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) >> 32
                                mem[644 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return (0 / 2 * ext_call.return_data[0])
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
                        mem[708 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                    else:
                        if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                            if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                            mem[708 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) << 224, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) >> 32
                            mem[644 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
                            else:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                                if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * ext_call.return_data[0] / 2 * ext_call.return_data[0] <= sharesTotal:
                        sharesTotal -= sharesTotal * ext_call.return_data[0] / 2 * ext_call.return_data[0]
                        if withdrawFeeFactor > 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0]:
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                                if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                                mem[708 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) << 224, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) >> 32
                                mem[644 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return (sharesTotal * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                    else:
                        if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                            if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) << 224, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) >> 32
                            mem[644 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                            if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
            else:
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args pid, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / 2 * ext_call.return_data[0] <= sharesTotal:
                        sharesTotal -= 0 / 2 * ext_call.return_data[0]
                        if withdrawFeeFactor > 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not 2 * ext_call.return_data[0]:
                            if 0 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 31, ext_call.return_data[0]) >> 31
                            mem[708 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                                mem[708 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                                call wantAddress with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        stor1 = 1
                        return (0 / 2 * ext_call.return_data[0])
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 2 * ext_call.return_data[0]:
                        if 0 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 31, ext_call.return_data[0]) >> 31
                        mem[708 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                    else:
                        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return sharesTotal, 
                                       mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            mem[ceil32(return_data.size) + 873 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
                else:
                    if (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] != sharesTotal:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] <= sharesTotal:
                        sharesTotal -= (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0]
                        if withdrawFeeFactor > 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not 2 * ext_call.return_data[0]:
                            if 0 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 31, ext_call.return_data[0]) >> 31
                            mem[708 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                                call wantAddress with:
                                   funct uint32(stor9)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                                mem[644 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                                    call wantAddress with:
                                       funct uint32(stor9)
                                         gas gas_remaining wei
                                        args (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 841]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                    if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 809 len 64] = 0, address(vaultChefAddress), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                                    call wantAddress with:
                                       funct uint32(stor9)
                                         gas gas_remaining wei
                                        args (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 841]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        stor1 = 1
                        return ((ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0])
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 2 * ext_call.return_data[0]:
                        if 0 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 31, ext_call.return_data[0]) >> 31
                        call wantAddress with:
                           funct uint32(stor9)
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                    else:
                        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            mem[708 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            mem[ceil32(return_data.size) + 873 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor9)
                                 gas gas_remaining wei
                                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
    stor1 = 1
    return sharesTotal
}



}
