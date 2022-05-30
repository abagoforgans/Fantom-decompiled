contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const MAX_CALL_FEE = 125

const WITHDRAWAL_MAX = 10000

const BORROW_DEPTH_MAX = 10

const MAX_FEE = 1000


uint8 paused; offset 160
address owner;
address keeperAddress;
address strategistAddress;
uint32 stor3;
address unirouterAddress;
uint256 stor3;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address sub_743b7c63Address;
uint256 STRATEGIST_FEE;
uint256 WITHDRAW_FEE;
uint256 CALL_FEE;
uint256 FEE_BATCH;
uint256 PLATFORM_FEE;
address nativeAddress;
address outputAddress;
address wantAddress;
uint32 stor14;
address iTokenAddress;
uint256 stor14;
address comptrollerAddress;
array of struct outputToNativeRoute;
array of struct outputToWantRoute;
array of address markets;
uint8 harvestOnDeposit;
uint256 borrowRate;
uint256 borrowRateMax;
uint256 borrowDepth;
uint256 minLeverage;
uint256 reserves;
uint256 balanceOfPool;
mapping of uint8 stor27;

function FEE_BATCH() payable {
    return FEE_BATCH
}

function borrowRateMax() payable {
    return borrowRateMax
}

function balanceOfPool() payable {
    return balanceOfPool
}

function native() payable {
    return nativeAddress
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function minLeverage() payable {
    return minLeverage
}

function unirouter() payable {
    return address(unirouterAddress)
}

function PLATFORM_FEE() payable {
    return PLATFORM_FEE
}

function iToken() payable {
    return address(iTokenAddress)
}

function paused() payable {
    return bool(paused)
}

function comptroller() payable {
    return comptrollerAddress
}

function sub_743b7c63(?) payable {
    return sub_743b7c63Address
}

function reserves() payable {
    return reserves
}

function STRATEGIST_FEE() payable {
    return STRATEGIST_FEE
}

function harvestOnDeposit() payable {
    return bool(harvestOnDeposit)
}

function owner() payable {
    return owner
}

function CALL_FEE() payable {
    return CALL_FEE
}

function borrowDepth() payable {
    return borrowDepth
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor27[arg1])
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function keeper() payable {
    return keeperAddress
}

function markets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < markets.length
    return markets[arg1]
}

function outputToNativeRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToNativeRoute.length
    return outputToNativeRoute[arg1].field_0
}

function borrowRate() payable {
    return borrowRate
}

function outputToWantRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToWantRoute.length
    return outputToWantRoute[arg1].field_0
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return address(vaultAddress)
}

function beforeDeposit() payable {
  stop
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

function sub_d2969d01(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_743b7c63Address = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(unirouterAddress) = arg1
}

function setWant(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    wantAddress = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    harvestOnDeposit = uint8(arg1)
}

function addOrRemoveFromWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor27[address(arg1)] = uint8(arg2)
}

function updateFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    CALL_FEE = arg1
    STRATEGIST_FEE = arg2
    WITHDRAW_FEE = arg3
    FEE_BATCH = arg4
    PLATFORM_FEE = arg5
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function availableWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - reserves)
}

function balanceOf() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOfPool + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (balanceOfPool + ext_call.return_data[0])
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

function updateBalance() payable {
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOfPool = 0
}

function outputToWant() payable {
    if outputToWantRoute.length:
        mem[128] = address(outputToWantRoute.field_0)
        if (32 * outputToWantRoute.length) + 32 > 64:
            mem[160] = address(outputToWantRoute.field_256)
            idx = 160
            s = 1
            while (32 * outputToWantRoute.length) + 96 > idx:
                mem[idx + 32] = outputToWantRoute[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * outputToWantRoute.length) + 128] = 32
    mem[(32 * outputToWantRoute.length) + 160] = outputToWantRoute.length
    mem[(32 * outputToWantRoute.length) + 192 len floor32(outputToWantRoute.length)] = mem[128 len floor32(outputToWantRoute.length)]
    return memory
      from (32 * outputToWantRoute.length) + 128
       len (96 * outputToWantRoute.length) + 64
}

function outputToNative() payable {
    if not outputToNativeRoute.length:
        mem[(32 * outputToNativeRoute.length) + 128] = 32
        mem[(32 * outputToNativeRoute.length) + 160] = outputToNativeRoute.length
        mem[(32 * outputToNativeRoute.length) + 192 len floor32(outputToNativeRoute.length)] = mem[128 len floor32(outputToNativeRoute.length)]
        return memory
          from (32 * outputToNativeRoute.length) + 128
           len (96 * outputToNativeRoute.length) + 64
    mem[128] = address(outputToNativeRoute.field_0)
    idx = 128
    s = 0
    while (32 * outputToNativeRoute.length) + 96 > idx:
        mem[idx + 32] = outputToNativeRoute[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * outputToNativeRoute.length) + 192 len floor32(outputToNativeRoute.length)] = mem[128 len floor32(outputToNativeRoute.length)]
    return Array(len=outputToNativeRoute.length, data=mem[128 len floor32(outputToNativeRoute.length)], mem[(32 * outputToNativeRoute.length) + floor32(outputToNativeRoute.length) + 192 len (32 * outputToNativeRoute.length) - floor32(outputToNativeRoute.length)]), 
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - reserves:
        if ext_call.return_data[0] - reserves >= minLeverage:
            idx = 0
            s = mem[96] - reserves
            while idx < borrowDepth:
                require ext_code.size(address(iTokenAddress))
                call address(iTokenAddress).mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not s:
                    mem[100] = 0
                    require ext_code.size(address(iTokenAddress))
                    call address(iTokenAddress).borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = 0
                    continue 
                if borrowRate * s / s != borrowRate:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                mem[100] = borrowRate * s / 100
                require ext_code.size(address(iTokenAddress))
                call address(iTokenAddress).borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args (borrowRate * s / 100)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = borrowRate * s / 100
                continue 
            if s + reserves < reserves:
                revert with 0, 'SafeMath: addition overflow'
            reserves += s
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOfPool = 0
}

function deleverageOnce(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > borrowRateMax:
        revert with 0, '!safe'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).redeemUnderlying(uint256 arg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (0 / arg1))
    else:
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 100 * ext_call.return_data[0] / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).redeemUnderlying(uint256 arg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / arg1))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserves = ext_call.return_data[0]
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOfPool = 0
}

function pause() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
    call wantAddress with:
       funct uint32(stor14)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        call outputAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
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
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        call outputAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = mem[96]
    t = ext_call.return_data[0]
    while t < s:
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).repayBorrow(uint256 arg1) with:
             gas gas_remaining wei
            args t
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / borrowRate > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (0 / borrowRate))
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    staticcall address(iTokenAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserves = 0
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOfPool = 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function rebalance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > borrowRateMax:
        revert with 0, '!rate'
    if arg2 > 10:
        revert with 0, '!depth'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = mem[96]
    t = ext_call.return_data[0]
    while t < s:
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).repayBorrow(uint256 arg1) with:
             gas gas_remaining wei
            args t
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / borrowRate > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (0 / borrowRate))
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    staticcall address(iTokenAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserves = 0
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOfPool = 0
    borrowRate = arg1
    borrowDepth = arg2
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= minLeverage:
        idx = 0
        s = mem[96]
        while idx < borrowDepth:
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not s:
                mem[100] = 0
                require ext_code.size(address(iTokenAddress))
                call address(iTokenAddress).borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = 0
                continue 
            if borrowRate * s / s != borrowRate:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            mem[100] = borrowRate * s / 100
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).borrow(uint256 arg1) with:
                 gas gas_remaining wei
                args (borrowRate * s / 100)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = borrowRate * s / 100
            continue 
        if s + reserves < reserves:
            revert with 0, 'SafeMath: addition overflow'
        reserves += s
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOfPool = 0
    emit StratRebalance(arg1, arg2);
}

function panic() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = mem[96]
    t = ext_call.return_data[0]
    while t < s:
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).repayBorrow(uint256 arg1) with:
             gas gas_remaining wei
            args t
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / borrowRate > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (0 / borrowRate))
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    staticcall address(iTokenAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserves = 0
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOfPool = 0
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = 0, address(iTokenAddress), 0
    call wantAddress with:
       funct uint32(stor14)
         gas gas_remaining wei
        args 0, mem[196 len 28], mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
        if not uint32(this.address), Mask(224, 0, stor14):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        call outputAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
            if not uint32(this.address), Mask(224, 0, stor14):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
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
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        call outputAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
            if not uint32(this.address), Mask(224, 0, stor14):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function unpause() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
    require ext_code.size(wantAddress)
    staticcall wantAddress.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(iTokenAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call wantAddress with:
       funct uint32(stor14)
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), -1
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(outputAddress)
        staticcall outputAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(unirouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[516 len 4] = 0
        call outputAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if paused:
                revert with 0, 'Pausable: paused'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[424] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if reserves > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - reserves:
                if ext_call.return_data[0] - reserves >= minLeverage:
                    idx = 0
                    s = mem[424] - reserves
                    while idx < borrowDepth:
                        require ext_code.size(address(iTokenAddress))
                        call address(iTokenAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not s:
                            mem[428] = 0
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[424] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[525 len 31]
                        mem[428] = borrowRate * s / 100
                        require ext_code.size(address(iTokenAddress))
                        call address(iTokenAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (borrowRate * s / 100)
                        mem[424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
                    require ext_code.size(address(iTokenAddress))
                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(iTokenAddress))
                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOfPool = 0
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            if paused:
                revert with 0, 'Pausable: paused'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 425] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if reserves > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - reserves:
                if ext_call.return_data[0] - reserves >= minLeverage:
                    idx = 0
                    s = mem[ceil32(return_data.size) + 425] - reserves
                    while idx < borrowDepth:
                        require ext_code.size(address(iTokenAddress))
                        call address(iTokenAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not s:
                            mem[ceil32(return_data.size) + 429] = 0
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 526 len 31]
                        mem[ceil32(return_data.size) + 429] = borrowRate * s / 100
                        require ext_code.size(address(iTokenAddress))
                        call address(iTokenAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (borrowRate * s / 100)
                        mem[ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
                    require ext_code.size(address(iTokenAddress))
                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(iTokenAddress))
                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOfPool = 0
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
        require ext_code.size(outputAddress)
        staticcall outputAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(unirouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 383 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + 517 len 4] = 0
        call outputAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            if paused:
                revert with 0, 'Pausable: paused'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 425] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if reserves > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - reserves:
                if ext_call.return_data[0] - reserves >= minLeverage:
                    idx = 0
                    s = mem[ceil32(return_data.size) + 425] - reserves
                    while idx < borrowDepth:
                        require ext_code.size(address(iTokenAddress))
                        call address(iTokenAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not s:
                            mem[ceil32(return_data.size) + 429] = 0
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 526 len 31]
                        mem[ceil32(return_data.size) + 429] = borrowRate * s / 100
                        require ext_code.size(address(iTokenAddress))
                        call address(iTokenAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (borrowRate * s / 100)
                        mem[ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
                    require ext_code.size(address(iTokenAddress))
                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(iTokenAddress))
                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOfPool = 0
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if paused:
                revert with 0, 
                            'Pausable: paused',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[(2 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if reserves > ext_call.return_data[0]:
                revert with 0, 
                            'SafeMath: subtraction overflow',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if ext_call.return_data[0] - reserves:
                if ext_call.return_data[0] - reserves >= minLeverage:
                    idx = 0
                    s = mem[(2 * ceil32(return_data.size)) + 426] - reserves
                    while idx < borrowDepth:
                        require ext_code.size(address(iTokenAddress))
                        call address(iTokenAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not s:
                            mem[(2 * ceil32(return_data.size)) + 430] = 0
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[(2 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(2 * ceil32(return_data.size)) + 527 len 31]
                        mem[(2 * ceil32(return_data.size)) + 430] = borrowRate * s / 100
                        require ext_code.size(address(iTokenAddress))
                        call address(iTokenAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (borrowRate * s / 100)
                        mem[(2 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
                    require ext_code.size(address(iTokenAddress))
                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(iTokenAddress))
                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOfPool = 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - reserves >= arg1:
        if ext_call.return_data[0] - reserves <= arg1:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                mem[352 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - reserves) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not paused:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = mem[260] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    mem[264] = 0
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                if borrowRate * s / s != borrowRate:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                mem[264] = borrowRate * s / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (borrowRate * s / 100)
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = borrowRate * s / 100
                                continue 
                            if s + reserves < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
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
                    if not paused:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = mem[ceil32(return_data.size) + 261] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    mem[ceil32(return_data.size) + 265] = 0
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                if borrowRate * s / s != borrowRate:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (borrowRate * s / 100)
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = borrowRate * s / 100
                                continue 
                            if s + reserves < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
            else:
                if paused:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                    mem[352 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - reserves) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves
                        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not paused:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[260] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        mem[264] = 0
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    mem[264] = borrowRate * s / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (borrowRate * s / 100)
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
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
                        if not paused:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[ceil32(return_data.size) + 261] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        mem[ceil32(return_data.size) + 265] = 0
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (borrowRate * s / 100)
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                else:
                    if not ext_call.return_data[0] - reserves:
                        if 0 > ext_call.return_data[0] - reserves:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                        mem[352 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - reserves) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves
                            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[264] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[260] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
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
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[ceil32(return_data.size) + 265] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                    else:
                        if (ext_call.return_data[0] * WITHDRAW_FEE) - (reserves * WITHDRAW_FEE) / ext_call.return_data[0] - reserves != WITHDRAW_FEE:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (ext_call.return_data[0] * WITHDRAW_FEE) - (reserves * WITHDRAW_FEE) / 10000 > ext_call.return_data[0] - reserves:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * WITHDRAW_FEE) - (reserves * WITHDRAW_FEE) / 10000)) >> 32
                        mem[352 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * WITHDRAW_FEE) - (reserves * WITHDRAW_FEE) / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), 
                                            Mask(224, 0, stor4),
                                            uint32(stor4),
                                            ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * WITHDRAW_FEE) - (reserves * WITHDRAW_FEE) / 10000)
                            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[264] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[260] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
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
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[ceil32(return_data.size) + 265] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
        else:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                mem[352 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not paused:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = mem[260] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    mem[264] = 0
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                if borrowRate * s / s != borrowRate:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                mem[264] = borrowRate * s / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (borrowRate * s / 100)
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = borrowRate * s / 100
                                continue 
                            if s + reserves < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
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
                    if not paused:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = mem[ceil32(return_data.size) + 261] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    mem[ceil32(return_data.size) + 265] = 0
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                if borrowRate * s / s != borrowRate:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (borrowRate * s / 100)
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = borrowRate * s / 100
                                continue 
                            if s + reserves < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
            else:
                if paused:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                    mem[352 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1
                        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not paused:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[260] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        mem[264] = 0
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    mem[264] = borrowRate * s / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (borrowRate * s / 100)
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
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
                        if not paused:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[ceil32(return_data.size) + 261] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        mem[ceil32(return_data.size) + 265] = 0
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (borrowRate * s / 100)
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1
                            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[264] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[260] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
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
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[ceil32(return_data.size) + 265] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                    else:
                        if WITHDRAW_FEE * arg1 / arg1 != WITHDRAW_FEE:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if WITHDRAW_FEE * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (WITHDRAW_FEE * arg1 / 10000)) >> 32
                        mem[352 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (WITHDRAW_FEE * arg1 / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1 - (WITHDRAW_FEE * arg1 / 10000)
                            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[264] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[260] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
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
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[ceil32(return_data.size) + 265] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
    else:
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = mem[96]
        t = ext_call.return_data[0]
        while t < s:
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args t
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                require ext_code.size(address(iTokenAddress))
                call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / borrowRate > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(iTokenAddress))
                call address(iTokenAddress).redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (0 / borrowRate))
            else:
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                require ext_code.size(address(iTokenAddress))
                call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(iTokenAddress))
                call address(iTokenAddress).redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            continue 
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).repayBorrow(uint256 arg1) with:
             gas gas_remaining wei
            args -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(iTokenAddress))
        staticcall address(iTokenAddress).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        reserves = 0
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOfPool = 0
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                mem[352 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), address(vaultAddress), ext_call.return_data[0]
                    if not uint32(this.address), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not paused:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = mem[260] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    mem[264] = 0
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                if borrowRate * s / s != borrowRate:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                mem[264] = borrowRate * s / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (borrowRate * s / 100)
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = borrowRate * s / 100
                                continue 
                            if s + reserves < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
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
                    if not paused:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = mem[ceil32(return_data.size) + 261] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    mem[ceil32(return_data.size) + 265] = 0
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                if borrowRate * s / s != borrowRate:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (borrowRate * s / 100)
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = borrowRate * s / 100
                                continue 
                            if s + reserves < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
            else:
                if paused:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                    mem[352 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), address(vaultAddress), ext_call.return_data[0]
                        if not uint32(this.address), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not paused:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[260] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        mem[264] = 0
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    mem[264] = borrowRate * s / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (borrowRate * s / 100)
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
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
                        if not paused:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[ceil32(return_data.size) + 261] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        mem[ceil32(return_data.size) + 265] = 0
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (borrowRate * s / 100)
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                        mem[352 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), address(vaultAddress), ext_call.return_data[0]
                            if not uint32(this.address), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[264] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[260] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
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
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[ceil32(return_data.size) + 265] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                    else:
                        if WITHDRAW_FEE * ext_call.return_data[0] / ext_call.return_data[0] != WITHDRAW_FEE:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if WITHDRAW_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / 10000)) >> 32
                        mem[352 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / 10000), mem[196 len 28], mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), 
                                            address(vaultAddress),
                                            ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / 10000)
                            if not uint32(this.address), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[264] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[260] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
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
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[ceil32(return_data.size) + 265] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
        else:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                mem[352 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args arg1, mem[196 len 28], mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), address(vaultAddress), arg1
                    if not uint32(this.address), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not paused:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = mem[260] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    mem[264] = 0
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                if borrowRate * s / s != borrowRate:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                mem[264] = borrowRate * s / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (borrowRate * s / 100)
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = borrowRate * s / 100
                                continue 
                            if s + reserves < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
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
                    if not paused:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = mem[ceil32(return_data.size) + 261] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    mem[ceil32(return_data.size) + 265] = 0
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                if borrowRate * s / s != borrowRate:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (borrowRate * s / 100)
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = borrowRate * s / 100
                                continue 
                            if s + reserves < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(iTokenAddress))
                            call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
            else:
                if paused:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                    mem[352 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args arg1, mem[196 len 28], mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), address(vaultAddress), arg1
                        if not uint32(this.address), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not paused:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[260] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        mem[264] = 0
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    mem[264] = borrowRate * s / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (borrowRate * s / 100)
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
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
                        if not paused:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[ceil32(return_data.size) + 261] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        mem[ceil32(return_data.size) + 265] = 0
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (borrowRate * s / 100)
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args arg1, mem[196 len 28], mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), address(vaultAddress), arg1
                            if not uint32(this.address), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[264] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[260] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
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
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[ceil32(return_data.size) + 265] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                    else:
                        if WITHDRAW_FEE * arg1 / arg1 != WITHDRAW_FEE:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if WITHDRAW_FEE * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (WITHDRAW_FEE * arg1 / 10000)) >> 32
                        mem[352 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args arg1 - (WITHDRAW_FEE * arg1 / 10000), mem[196 len 28], mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), address(vaultAddress), arg1 - (WITHDRAW_FEE * arg1 / 10000)
                            if not uint32(this.address), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[264] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[260] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
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
                            if not paused:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            mem[ceil32(return_data.size) + 265] = 0
                                            require ext_code.size(address(iTokenAddress))
                                            call address(iTokenAddress).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = borrowRate * s / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (borrowRate * s / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
}



}
