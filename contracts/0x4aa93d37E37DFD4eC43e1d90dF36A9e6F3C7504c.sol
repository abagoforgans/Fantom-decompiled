contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2)
#  - convertDustToEarned()
#  - earn()
#  - withdraw(address arg1, uint256 arg2)
#
const controllerFeeUL = 300

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const withdrawFeeFactorMax = 10000

const withdrawFeeFactorLL = 9950

const buyBackRateUL = 800

const slippageFactorUL = 995

const entranceFeeFactorLL = 9950

const entranceFeeFactorMax = 10000


address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
uint8 stor2; offset 24
uint32 stor2;
address farmContractAddress; offset 32
uint256 stor2;
uint256 pid;
address wantAddress;
address token0Address;
address token1Address;
address earnedAddress;
address uniRouterAddress;
address sub_badb11e8Address;
address wbnbAddress;
address sub_e0de1dfeAddress;
address sub_10d11960Address;
uint8 stor13; offset 160
uint128 stor13; offset 160
address govAddress;
uint256 lastEarnBlock;
uint256 wantLockedTotal;
uint256 sharesTotal;
uint256 controllerFee;
uint256 buyBackRate;
address buyBackAddress;
uint32 stor20;
address rewardsAddress;
uint256 stor20;
address sub_a7fd2b3fAddress;
address withdrawFeeAddress;
uint256 entranceFeeFactor;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address sub_a3ee9de0;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of address token0ToEarnedPath;
array of address token1ToEarnedPath;
address sub_786caab7Address;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1]
}

function onlyGov() payable {
    return bool(uint8(stor13.field_160))
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function sub_10d11960(?) payable {
    return sub_10d11960Address
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

function wbnbAddress() payable {
    return wbnbAddress
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function buyBackAddress() payable {
    return buyBackAddress
}

function withdrawFeeAddress() payable {
    return withdrawFeeAddress
}

function sub_786caab7(?) payable {
    return sub_786caab7Address
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

function owner() payable {
    return owner
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function isSameAssetDeposit() payable {
    return bool(uint8(stor2.field_16))
}

function farmContractAddress() payable {
    return farmContractAddress
}

function sub_a3ee9de0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a3ee9de0.length
    return sub_a3ee9de0[arg1]
}

function sub_a7fd2b3f(?) payable {
    return sub_a7fd2b3fAddress
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1]
}

function sub_badb11e8(?) payable {
    return sub_badb11e8Address
}

function rewardsAddress() payable {
    return address(rewardsAddress)
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function token1Address() payable {
    return token1Address
}

function sub_e0de1dfe(?) payable {
    return sub_e0de1dfeAddress
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

function sub_feb8f103(?) payable {
    return bool(uint8(stor2.field_24))
}

function slippageFactor() payable {
    return slippageFactor
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

function sub_46381841(?) payable {
    require calldata.size - 4 >= 32
    if sub_786caab7Address != msg.sender:
        revert with 0, 'Access denied'
    sub_786caab7Address = arg1
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
    emit SetGov(arg1);
}

function setBuyBackAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    buyBackAddress = arg1
    emit SetBuyBackAddress(arg1);
}

function setUniRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    uniRouterAddress = arg1
    emit SetUniRouterAddress(arg1);
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function setRewardsAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    address(rewardsAddress) = arg1
    emit SetRewardsAddress(arg1);
}

function setOnlyGov(bool arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    Mask(96, 0, stor13.field_160) = Mask(96, 0, arg1)
    emit SetOnlyGov(arg1);
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
}

function changeFeeAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if sub_786caab7Address != msg.sender:
        revert with 0, 'Access denied'
    sub_a7fd2b3fAddress = arg1
    withdrawFeeAddress = arg2
}

function wrapBNB() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if eth.balance(this.address):
        require ext_code.size(wbnbAddress)
        call wbnbAddress.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
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

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if arg1 < 9950:
        revert with 0, '_entranceFeeFactor too low'
    if arg1 > 10000:
        revert with 0, '_entranceFeeFactor too high'
    entranceFeeFactor = arg1
    if arg2 < 9950:
        revert with 0, '_withdrawFeeFactor too low'
    if arg2 > 10000:
        revert with 0, '_withdrawFeeFactor too high'
    withdrawFeeFactor = arg2
    if arg3 > 300:
        revert with 0, '_controllerFee too high'
    controllerFee = arg3
    if arg4 > 800:
        revert with 0, '_buyBackRate too high'
    buyBackRate = arg4
    if arg5 > 995:
        revert with 0, '_slippageFactor too high'
    slippageFactor = arg5
    emit SetSettings(arg1, arg2, arg3, arg4, arg5);
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

function farm() payable {
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not uint8(stor2.field_24):
        revert with 0, '!isMarsComp'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
        revert with 0, 'SafeMath: addition overflow'
    wantLockedTotal += ext_call.return_data[0]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), farmContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
    call wantAddress with:
       funct uint32(stor2.field_0)
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), 2 * ext_call.return_data[0]
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(farmContractAddress)
        if not uint8(stor2.field_8):
            call farmContractAddress.0xe2bbb158 with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
        else:
            call farmContractAddress.enterStaking(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(earnedAddress)
        staticcall earnedAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if controllerFee:
                if not ext_call.return_data[0]:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                    if not ext_code.size(earnedAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[488 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor20), uint32(stor20), 0
                    call earnedAddress with:
                       funct uint32(stor20)
                         gas gas_remaining wei
                        args 0, mem[552 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), 2 * ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[598 len 22]
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if controllerFee * ext_call.return_data[0] / ext_call.return_data[0] != controllerFee:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                    if not ext_code.size(earnedAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[488 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor20), uint32(stor20), Mask(224, 32, controllerFee * ext_call.return_data[0] / 10000) >> 32
                    call earnedAddress with:
                       funct uint32(stor20)
                         gas gas_remaining wei
                        args Mask(224, 32, controllerFee * ext_call.return_data[0] / 10000) << 224, mem[552 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), 2 * ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[598 len 22]
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                    if controllerFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
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
        require ext_code.size(farmContractAddress)
        if not uint8(stor2.field_8):
            call farmContractAddress.0xe2bbb158 with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
        else:
            call farmContractAddress.enterStaking(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(earnedAddress)
        staticcall earnedAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if controllerFee:
                if not ext_call.return_data[0]:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 595 len 26]
                    if not ext_code.size(earnedAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor20), uint32(stor20), 0
                    call earnedAddress with:
                       funct uint32(stor20)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 553 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), 2 * ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 22]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 
                                        'SafeMath: subtraction overflow',
                                        mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    ('le', 0, ('ext_call.return_data', 0, 32))
                else:
                    if controllerFee * ext_call.return_data[0] / ext_call.return_data[0] != controllerFee:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 362 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 595 len 26]
                    if not ext_code.size(earnedAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor20), uint32(stor20), Mask(224, 32, controllerFee * ext_call.return_data[0] / 10000) >> 32
                    call earnedAddress with:
                       funct uint32(stor20)
                         gas gas_remaining wei
                        args Mask(224, 32, controllerFee * ext_call.return_data[0] / 10000) << 224, mem[ceil32(return_data.size) + 553 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), 2 * ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 22]
                        if controllerFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if controllerFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 
                                        'SafeMath: subtraction overflow',
                                        mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    ('le', ('div', ('mul', ('stor', ('name', 'controllerFee', 17)), ('ext_call.return_data', 0, 32)), 10000), ('ext_call.return_data', 0, 32))
    stor1 = 1
}



}
