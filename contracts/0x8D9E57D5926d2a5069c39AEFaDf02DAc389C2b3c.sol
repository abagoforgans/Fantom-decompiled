contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2)
#  - convertDustToEarned()
#  - earn()
#
const controllerFeeUL = 300

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const withdrawFeeFactorMax = 10000

const buyBackAddress = 57005

const sub_7c717c09(?) = 9500

const withdrawFeeFactorLL = 9950

const sub_a613a28a(?) = 10000

const buyBackRateUL = 800

const slippageFactorUL = 995

const entranceFeeFactorLL = 9950

const entranceFeeFactorMax = 10000


address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
uint32 stor2;
address farmContractAddress; offset 24
uint256 stor2;
uint256 pid;
address wantAddress;
address token0Address;
address token1Address;
address earnedAddress;
address uniRouterAddress;
address sub_cb971847Address;
uint256 sub_1b61e055;
address sub_7edd3da5Address;
uint32 stor12;
address sub_88f9e800Address;
uint256 stor12;
address sub_b3ed4599Address;
uint32 stor14;
address govAddress;
uint256 stor14;
uint256 sub_ba0c108f;
uint256 stor16; offset 32
uint256 wantLockedTotal;
big480 stor16;
uint256 sharesTotal;
uint256 controllerFee;
uint256 buyBackRate;
uint256 entranceFeeFactor;
uint256 sub_25c7ce6b;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address sub_67eed8e0;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of address token0ToEarnedPath;
array of address token1ToEarnedPath;
array of address sub_6597b04f;
array of address sub_6b99e24b;
address earned0Address;
array of address sub_07e2318d;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1]
}

function sub_07e2318d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_07e2318d.length
    return sub_07e2318d[arg1]
}

function sub_0ddea8c3(?) payable {
    return bool(uint8(stor2.field_8))
}

function entranceFeeFactor() payable {
    return entranceFeeFactor
}

function buyBackRate() payable {
    return buyBackRate
}

function sub_1b61e055(?) payable {
    return sub_1b61e055
}

function sub_25c7ce6b(?) payable {
    return sub_25c7ce6b
}

function earned0Address() payable {
    return earned0Address
}

function wantLockedTotal() payable {
    return wantLockedTotal
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return address(govAddress)
}

function paused() payable {
    return bool(uint8(stor2.field_0))
}

function sub_6597b04f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6597b04f.length
    return sub_6597b04f[arg1]
}

function sub_67eed8e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_67eed8e0.length
    return sub_67eed8e0[arg1]
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function sub_6b99e24b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6b99e24b.length
    return sub_6b99e24b[arg1]
}

function sub_7edd3da5(?) payable {
    return sub_7edd3da5Address
}

function token0Address() payable {
    return token0Address
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

function sub_b3ed4599(?) payable {
    return sub_b3ed4599Address
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1]
}

function sub_ba0c108f(?) payable {
    return sub_ba0c108f
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function sub_cb971847(?) payable {
    return sub_cb971847Address
}

function token1Address() payable {
    return token1Address
}

function isAutoComp() payable {
    return bool(uint8(stor2.field_16))
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

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    address(govAddress) = arg1
}

function setBuybackRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    sub_cb971847Address = arg1
}

function pause() payable {
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function setControllerFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 300:
        revert with 0, 'too high'
    controllerFee = arg1
}

function setbuyBackRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if buyBackRate > 800:
        revert with 0, 'too high'
    buyBackRate = arg1
}

function unpause() payable {
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
}

function setDepositFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9500:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    sub_25c7ce6b = arg1
}

function setEntranceFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    entranceFeeFactor = arg1
}

function setWithdrawFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    withdrawFeeFactor = arg1
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

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
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
    if not uint8(stor2.field_16):
        revert with 0, '!isAutoComp'
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
    stor1 = 1
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not arg2:
        revert with 0, '_wantAmt <= 0'
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
        if 10000 <= withdrawFeeFactor:
            if uint8(stor2.field_16):
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0x441a3e70 with:
                         gas gas_remaining wei
                        args pid, arg2
                else:
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 <= ext_call.return_data[0]:
                if wantLockedTotal >= arg2:
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[516 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor16.field_0), mem[516 len 4]
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor16.field_0), mem[516 len 4]
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
        if withdrawFeeFactor > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -withdrawFeeFactor + 10000:
            if not arg2:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), 0
                call wantAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args 0, mem[644 len 4]
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
                if uint8(stor2.field_16):
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.0x441a3e70 with:
                             gas gas_remaining wei
                            args pid, 0
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= ext_call.return_data[0]:
                    if wantLockedTotal >= 0:
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
            else:
                if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), 0
                call wantAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args 0, mem[644 len 4]
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
                if uint8(stor2.field_16):
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.0x441a3e70 with:
                             gas gas_remaining wei
                            args pid, withdrawFeeFactor * arg2 / 10000
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args (withdrawFeeFactor * arg2 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                    if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                        if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
        else:
            if (10000 * arg2) - (withdrawFeeFactor * arg2) / -withdrawFeeFactor + 10000 != arg2:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not arg2:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                call wantAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[644 len 4]
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
                if uint8(stor2.field_16):
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.0x441a3e70 with:
                             gas gas_remaining wei
                            args pid, 0
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= ext_call.return_data[0]:
                    if wantLockedTotal >= 0:
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
            else:
                if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                call wantAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[644 len 4]
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
                if uint8(stor2.field_16):
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.0x441a3e70 with:
                             gas gas_remaining wei
                            args pid, withdrawFeeFactor * arg2 / 10000
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args (withdrawFeeFactor * arg2 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                    if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                        if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
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
        return sharesTotal * arg2 / wantLockedTotal, 
               mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if sharesTotal > sharesTotal:
        revert with 0, 'SafeMath: subtraction overflow'
    sharesTotal = 0
    if 10000 <= withdrawFeeFactor:
        if uint8(stor2.field_16):
            require ext_code.size(farmContractAddress)
            if not uint8(stor2.field_8):
                call farmContractAddress.0x441a3e70 with:
                     gas gas_remaining wei
                    args pid, arg2
            else:
                call farmContractAddress.leaveStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 <= ext_call.return_data[0]:
            if wantLockedTotal >= arg2:
                if arg2 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= arg2
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                call wantAddress with:
                   funct uint32(stor12)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
            else:
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                call wantAddress with:
                   funct uint32(stor12)
                     gas gas_remaining wei
                    args Mask(480, 0, stor16.field_0), mem[516 len 4]
        else:
            if wantLockedTotal >= ext_call.return_data[0]:
                if ext_call.return_data[0] > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= ext_call.return_data[0]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor12)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
            else:
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                call wantAddress with:
                   funct uint32(stor12)
                     gas gas_remaining wei
                    args Mask(480, 0, stor16.field_0), mem[516 len 4]
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
    if withdrawFeeFactor > 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -withdrawFeeFactor + 10000:
        if not arg2:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), 0
            call wantAddress with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args 0, mem[644 len 4]
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
            if uint8(stor2.field_16):
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0x441a3e70 with:
                         gas gas_remaining wei
                        args pid, 0
                else:
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 <= ext_call.return_data[0]:
                if wantLockedTotal >= 0:
                    if 0 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
        else:
            if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), 0
            call wantAddress with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args 0, mem[644 len 4]
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
            if uint8(stor2.field_16):
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0x441a3e70 with:
                         gas gas_remaining wei
                        args pid, withdrawFeeFactor * arg2 / 10000
                else:
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args (withdrawFeeFactor * arg2 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                    if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
    else:
        if (10000 * arg2) - (withdrawFeeFactor * arg2) / -withdrawFeeFactor + 10000 != arg2:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not arg2:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
            call wantAddress with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[644 len 4]
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
            if uint8(stor2.field_16):
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0x441a3e70 with:
                         gas gas_remaining wei
                        args pid, 0
                else:
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 <= ext_call.return_data[0]:
                if wantLockedTotal >= 0:
                    if 0 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
        else:
            if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
            call wantAddress with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[644 len 4]
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
            if uint8(stor2.field_16):
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0x441a3e70 with:
                         gas gas_remaining wei
                        args pid, withdrawFeeFactor * arg2 / 10000
                else:
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args (withdrawFeeFactor * arg2 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                    if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 915 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor16.field_0), mem[ceil32(return_data.size) + 873 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
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
    return sharesTotal, 
           mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
