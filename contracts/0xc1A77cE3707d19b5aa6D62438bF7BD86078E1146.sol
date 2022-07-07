contract main {




// =====================  Runtime code  =====================


#
#  - harvest(address arg1)
#  - unpause()
#  - harvest()
#  - beforeDeposit()
#  - managerHarvest()
#
const comptroller = 0x260e596dabe3afc463e75b6cc05d8c46acacfb09

const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const BORROW_DEPTH_MAX = 10

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address keeperAddress;
address strategistAddress;
uint32 stor3;
address unirouterAddress;
uint256 stor3;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
address nativeAddress;
address outputAddress;
address wantAddress;
uint32 stor12;
address iTokenAddress;
uint256 stor12;
array of struct outputToNativeRoute;
array of struct outputToWantRoute;
array of struct markets;
uint8 harvestOnDeposit;
uint256 lastHarvest;
uint256 borrowRate;
uint256 borrowRateMax;
uint256 borrowDepth;
uint256 minLeverage;
uint256 reserves;
uint256 balanceOfPool;

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

function iToken() payable {
    return address(iTokenAddress)
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function reserves() payable {
    return reserves
}

function harvestOnDeposit() payable {
    return bool(harvestOnDeposit)
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function beefyFeeRecipient() payable {
    return beefyFeeRecipientAddress
}

function callFee() payable {
    return callFee
}

function borrowDepth() payable {
    return borrowDepth
}

function keeper() payable {
    return keeperAddress
}

function markets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < markets.length
    return markets[arg1].field_0
}

function outputToNativeRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToNativeRoute.length
    return outputToNativeRoute[arg1].field_0
}

function borrowRate() payable {
    return borrowRate
}

function beefyFee() payable {
    return beefyFee
}

function outputToWantRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToWantRoute.length
    return outputToWantRoute[arg1].field_0
}

function lastHarvest() payable {
    return lastHarvest
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return address(vaultAddress)
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

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(vaultAddress) = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(unirouterAddress) = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setBeefyFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beefyFeeRecipientAddress = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -callFee + 888
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    harvestOnDeposit = uint8(arg1)
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if bool(harvestOnDeposit) != 1:
        withdrawalFee = 10
    else:
        withdrawalFee = 0
}

function availableWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
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
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] + balanceOfPool)
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
    if not outputToWantRoute.length:
        mem[(32 * outputToWantRoute.length) + 128] = 32
        mem[(32 * outputToWantRoute.length) + 160] = outputToWantRoute.length
        mem[(32 * outputToWantRoute.length) + 192 len floor32(outputToWantRoute.length)] = mem[128 len floor32(outputToWantRoute.length)]
        return memory
          from (32 * outputToWantRoute.length) + 128
           len (96 * outputToWantRoute.length) + 64
    mem[128] = address(outputToWantRoute.field_0)
    idx = 128
    s = 0
    while (32 * outputToWantRoute.length) + 96 > idx:
        mem[idx + 32] = outputToWantRoute[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * outputToWantRoute.length) + 192 len floor32(outputToWantRoute.length)] = mem[128 len floor32(outputToWantRoute.length)]
    return Array(len=outputToWantRoute.length, data=mem[128 len floor32(outputToWantRoute.length)], mem[(32 * outputToWantRoute.length) + floor32(outputToWantRoute.length) + 192 len (32 * outputToWantRoute.length) - floor32(outputToWantRoute.length)]), 
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

function rewardsAvailable() payable {
    if not markets.length:
        require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
        call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
             gas gas_remaining wei
            args address(this.address), 64, markets.length
    else:
        mem[196] = address(markets.field_0)
        idx = 196
        s = 0
        while (32 * markets.length) + 196 > idx + 32:
            mem[idx + 32] = markets[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
        call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
             gas gas_remaining wei
            args address(this.address), Array(len=markets.length, data=mem[196 len 32 * markets.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(outputAddress)
    staticcall outputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function deposit() payable {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - reserves > 0:
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
                require s
                if s * borrowRate / s != borrowRate:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                mem[100] = s * borrowRate / 100
                require ext_code.size(address(iTokenAddress))
                call address(iTokenAddress).borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args (s * borrowRate / 100)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s * borrowRate / 100
                continue 
            if reserves + s < reserves:
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
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        emit Deposit((ext_call.return_data[0] + balanceOfPool));
}

function deleverageOnce(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > borrowRateMax:
        revert with 0, '!safe'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
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
        require ext_call.return_data[0]
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
    staticcall wantAddress.0x70a08231 with:
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

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
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
            require ext_call.return_data[0]
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
        staticcall wantAddress.0x70a08231 with:
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
    staticcall address(iTokenAddress).0x70a08231 with:
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
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.0xa9059cbb with:
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
    staticcall wantAddress.0x70a08231 with:
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
            require ext_call.return_data[0]
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
        staticcall wantAddress.0x70a08231 with:
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
    staticcall address(iTokenAddress).0x70a08231 with:
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
    staticcall wantAddress.0x70a08231 with:
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
            require s
            if s * borrowRate / s != borrowRate:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            mem[100] = s * borrowRate / 100
            require ext_code.size(address(iTokenAddress))
            call address(iTokenAddress).borrow(uint256 arg1) with:
                 gas gas_remaining wei
                args (s * borrowRate / 100)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = s * borrowRate / 100
            continue 
        if reserves + s < reserves:
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

function pause() payable {
    if msg.sender == owner:
        if uint8(stor0.field_160):
            revert with 0, 'Pausable: paused'
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
        call wantAddress with:
           funct uint32(stor12)
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
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
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        if uint8(stor0.field_160):
            revert with 0, 'Pausable: paused'
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
        mem[324 len 0] = 0
        call wantAddress with:
           funct uint32(stor12)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, address(unirouterAddress), 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
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
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
}

function callReward() payable {
    if not markets.length:
        require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
        call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
             gas gas_remaining wei
            args address(this.address), 64, markets.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(outputAddress)
        staticcall outputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return 0
        mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[100] = ext_call.return_data[0]
        mem[132] = 64
        mem[164] = outputToNativeRoute.length
        if not outputToNativeRoute.length:
            require ext_code.size(address(unirouterAddress))
            staticcall address(unirouterAddress).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], 64, outputToNativeRoute.length
            if not ext_call.success:
                return 0
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _12 = mem[96 len 4], ext_call.return_data[0 len 28]
            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
            _15 = mem[_12 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_12 + 96])] = mem[_12 + 128 len floor32(mem[_12 + 96])]
            mem[64] = (32 * _15) + ceil32(return_data.size) + 128
            require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
            if not mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
                return 0
            require mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
            if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] != 45:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _15) + ceil32(return_data.size) + 229 len 31]
            if not 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000:
                return 0
            require 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000
            if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 * callFee / 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _15) + ceil32(return_data.size) + 229 len 31]
            mem[(32 * _15) + ceil32(return_data.size) + 128] = 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 * callFee / 1000
            return memory
              from (32 * _15) + ceil32(return_data.size) + 128
               len 32
        mem[0] = 13
        mem[196] = address(outputToNativeRoute.field_0)
        idx = 196
        s = 0
        while (32 * outputToNativeRoute.length) + 196 > idx + 32:
            mem[idx + 32] = outputToNativeRoute[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(unirouterAddress))
        staticcall address(unirouterAddress).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=outputToNativeRoute.length, data=mem[196 len 32 * outputToNativeRoute.length])
        if not ext_call.success:
            return 0
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _53 = mem[96 len 4], ext_call.return_data[0 len 28]
        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
        _58 = mem[_53 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_53 + 96])] = mem[_53 + 128 len floor32(mem[_53 + 96])]
        mem[64] = (32 * _58) + ceil32(return_data.size) + 128
        require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
        if not mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
            return 0
        require mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
        if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] != 45:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _58) + ceil32(return_data.size) + 229 len 31]
        if not 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000:
            return 0
        require 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000
        if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 * callFee / 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 != callFee:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _58) + ceil32(return_data.size) + 229 len 31]
        mem[(32 * _58) + ceil32(return_data.size) + 128] = 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 * callFee / 1000
        return memory
          from (32 * _58) + ceil32(return_data.size) + 128
           len 32
    mem[0] = 15
    mem[196] = address(markets.field_0)
    idx = 196
    s = 0
    while (32 * markets.length) + 196 > idx + 32:
        mem[idx + 32] = markets[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
    call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
         gas gas_remaining wei
        args address(this.address), Array(len=markets.length, data=mem[196 len 32 * markets.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(outputAddress)
    staticcall outputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = 64
    mem[164] = outputToNativeRoute.length
    if not outputToNativeRoute.length:
        require ext_code.size(address(unirouterAddress))
        staticcall address(unirouterAddress).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], 64, outputToNativeRoute.length
        if not ext_call.success:
            return 0
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _67 = mem[96 len 4], ext_call.return_data[0 len 28]
        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
        _70 = mem[_67 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_67 + 96])] = mem[_67 + 128 len floor32(mem[_67 + 96])]
        mem[64] = (32 * _70) + ceil32(return_data.size) + 128
        require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
        if not mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
            return 0
        require mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
        if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] != 45:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _70) + ceil32(return_data.size) + 229 len 31]
        if not 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000:
            return 0
        require 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000
        if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 * callFee / 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 != callFee:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _70) + ceil32(return_data.size) + 229 len 31]
        mem[(32 * _70) + ceil32(return_data.size) + 128] = 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 * callFee / 1000
        return memory
          from (32 * _70) + ceil32(return_data.size) + 128
           len 32
    mem[0] = 13
    mem[196] = address(outputToNativeRoute.field_0)
    idx = 196
    s = 0
    while (32 * outputToNativeRoute.length) + 196 > idx + 32:
        mem[idx + 32] = outputToNativeRoute[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(unirouterAddress))
    staticcall address(unirouterAddress).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=outputToNativeRoute.length, data=mem[196 len 32 * outputToNativeRoute.length])
    if not ext_call.success:
        return 0
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _131 = mem[96 len 4], ext_call.return_data[0 len 28]
    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
    _134 = mem[_131 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_131 + 96])] = mem[_131 + 128 len floor32(mem[_131 + 96])]
    mem[64] = (32 * _134) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    if not mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
        return 0
    require mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
    if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] != 45:
        revert with 0, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _134) + ceil32(return_data.size) + 229 len 31]
    if not 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000:
        return 0
    require 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000
    if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 * callFee / 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 != callFee:
        revert with 0, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _134) + ceil32(return_data.size) + 229 len 31]
    mem[(32 * _134) + ceil32(return_data.size) + 128] = 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 * callFee / 1000
    return memory
      from (32 * _134) + ceil32(return_data.size) + 128
       len 32
}

function panic() payable {
    if msg.sender == owner:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
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
                require ext_call.return_data[0]
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
            staticcall wantAddress.0x70a08231 with:
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
        staticcall address(iTokenAddress).0x70a08231 with:
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
        if msg.sender == owner:
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            Mask(96, 0, stor0.field_160) = 1
            emit Paused(msg.sender);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = 0, address(iTokenAddress), 0
            call wantAddress with:
               funct uint32(stor12)
                 gas gas_remaining wei
                args 0, mem[196 len 28], mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                if not 0, Mask(224, 0, stor12):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if ext_code.size(outputAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                call outputAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                    if not 0, Mask(224, 0, stor12):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if ext_code.size(outputAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                    mem[ceil32(return_data.size) + 489 len 0] = 0
                    call outputAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                        if not 0, Mask(224, 0, stor12):
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                else:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if ext_code.size(outputAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                    call outputAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                        if not 0, Mask(224, 0, stor12):
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            if keeperAddress != msg.sender:
                revert with 0, '!manager'
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            Mask(96, 0, stor0.field_160) = 1
            emit Paused(msg.sender);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = 0, address(iTokenAddress), 0
            call wantAddress with:
               funct uint32(stor12)
                 gas gas_remaining wei
                args 0, 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                if not 0, Mask(224, 0, stor12):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if ext_code.size(outputAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, address(unirouterAddress), 0
                call outputAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[360 len 28], mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                    if not 0, Mask(224, 0, stor12):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
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
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(outputAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
                call outputAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                    if not 0, Mask(224, 0, stor12):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
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
                require ext_call.return_data[0]
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
            staticcall wantAddress.0x70a08231 with:
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
        staticcall address(iTokenAddress).0x70a08231 with:
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
        if msg.sender == owner:
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            Mask(96, 0, stor0.field_160) = 1
            emit Paused(msg.sender);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = 0, address(iTokenAddress), 0
            call wantAddress with:
               funct uint32(stor12)
                 gas gas_remaining wei
                args 0, 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                if not 0, Mask(224, 0, stor12):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if ext_code.size(outputAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, address(unirouterAddress), 0
                call outputAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[360 len 28], mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                    if not 0, Mask(224, 0, stor12):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
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
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(outputAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
                call outputAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                    if not 0, Mask(224, 0, stor12):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            if keeperAddress != msg.sender:
                revert with 0, '!manager'
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            Mask(96, 0, stor0.field_160) = 1
            emit Paused(msg.sender);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = 0, address(iTokenAddress), 0
            call wantAddress with:
               funct uint32(stor12)
                 gas gas_remaining wei
                args 0, 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                if not 0, Mask(224, 0, stor12):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if ext_code.size(outputAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, address(unirouterAddress), 0
                call outputAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[360 len 28], mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                    if not 0, Mask(224, 0, stor12):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if ext_code.size(outputAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
                    call outputAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                        if not 0, Mask(224, 0, stor12):
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                else:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if ext_code.size(outputAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
                    call outputAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(iTokenAddress), 0
                        if not 0, Mask(224, 0, stor12):
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
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
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                mem[352 len 4] = 0
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - reserves) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                    if not uint8(stor0.field_160):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
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
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                mem[264] = s * borrowRate / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            if reserves + s < reserves:
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
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                    if not uint8(stor0.field_160):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
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
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            if reserves + s < reserves:
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
                if uint8(stor0.field_160):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                    mem[352 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - reserves) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                        if not uint8(stor0.field_160):
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
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
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    mem[264] = s * borrowRate / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                if reserves + s < reserves:
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
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                        if not uint8(stor0.field_160):
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
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
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                if reserves + s < reserves:
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
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                        mem[352 len 4] = 0
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - reserves) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                        require ext_call.return_data[0] - reserves
                        if (ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / ext_call.return_data[0] - reserves != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000 > ext_call.return_data[0] - reserves:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000)) >> 32
                        mem[352 len 4] = 0
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor4),
                                            uint32(stor4),
                                            ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000)
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                mem[352 len 4] = 0
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                    if not uint8(stor0.field_160):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
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
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                mem[264] = s * borrowRate / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            if reserves + s < reserves:
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
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                    if not uint8(stor0.field_160):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
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
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            if reserves + s < reserves:
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
                if uint8(stor0.field_160):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                    mem[352 len 4] = 0
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                        if not uint8(stor0.field_160):
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
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
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    mem[264] = s * borrowRate / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                if reserves + s < reserves:
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
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                        if not uint8(stor0.field_160):
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
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
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                if reserves + s < reserves:
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
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = 0
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                        require arg1
                        if arg1 * withdrawalFee / arg1 != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg1 * withdrawalFee / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32
                        mem[352 len 4] = 0
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000)
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
        staticcall wantAddress.0x70a08231 with:
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
                require ext_call.return_data[0]
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
            staticcall wantAddress.0x70a08231 with:
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
        staticcall address(iTokenAddress).0x70a08231 with:
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
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                mem[352 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(vaultAddress), ext_call.return_data[0]
                    if not 0, Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                    if not uint8(stor0.field_160):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
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
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                mem[264] = s * borrowRate / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            if reserves + s < reserves:
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
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                    if not uint8(stor0.field_160):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
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
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            if reserves + s < reserves:
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
                if uint8(stor0.field_160):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                    mem[352 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(vaultAddress), ext_call.return_data[0]
                        if not 0, Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                        if not uint8(stor0.field_160):
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
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
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    mem[264] = s * borrowRate / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                if reserves + s < reserves:
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
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                        if not uint8(stor0.field_160):
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
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
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                if reserves + s < reserves:
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
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                        mem[352 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(vaultAddress), ext_call.return_data[0]
                            if not 0, Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * withdrawalFee / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if ext_call.return_data[0] * withdrawalFee / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000)) >> 32
                        mem[352 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), mem[196 len 28], mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            address(vaultAddress),
                                            ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000)
                            if not 0, Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                mem[352 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args arg1, mem[196 len 28], mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(vaultAddress), arg1
                    if not 0, Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                    if not uint8(stor0.field_160):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
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
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                mem[264] = s * borrowRate / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            if reserves + s < reserves:
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
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                    if not uint8(stor0.field_160):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
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
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                require ext_code.size(address(iTokenAddress))
                                call address(iTokenAddress).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            if reserves + s < reserves:
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
                if uint8(stor0.field_160):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                    mem[352 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args arg1, mem[196 len 28], mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(vaultAddress), arg1
                        if not 0, Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                        if not uint8(stor0.field_160):
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
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
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    mem[264] = s * borrowRate / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                if reserves + s < reserves:
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
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                        if not uint8(stor0.field_160):
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
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
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                    require ext_code.size(address(iTokenAddress))
                                    call address(iTokenAddress).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                if reserves + s < reserves:
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
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args arg1, mem[196 len 28], mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(vaultAddress), arg1
                            if not 0, Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                        require arg1
                        if arg1 * withdrawalFee / arg1 != withdrawalFee:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if arg1 * withdrawalFee / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32
                        mem[352 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args arg1 - (arg1 * withdrawalFee / 10000), mem[196 len 28], mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(vaultAddress), arg1 - (arg1 * withdrawalFee / 10000)
                            if not 0, Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        mem[264] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[260] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw((ext_call.return_data[0] + balanceOfPool));
                            if not uint8(stor0.field_160):
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
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
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        mem[ceil32(return_data.size) + 265] = s * borrowRate / 100
                                        require ext_code.size(address(iTokenAddress))
                                        call address(iTokenAddress).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    if reserves + s < reserves:
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
