contract main {




// =====================  Runtime code  =====================


#
#  - addRewardToken(address arg1)
#  - withdraw(uint256 arg1)
#  - unpause()
#  - harvest()
#  - panic()
#  - beforeDeposit()
#  - harvestWithCallFeeRecipient(address arg1)
#  - pause()
#  - managerHarvest()
#
const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const INTEREST_RATE_MODE = 2

const BORROW_DEPTH_MAX = 10

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 stor0; offset 160
address owner;
array of address stor1;
address strategistAddress;
address unirouterAddress;
address vaultAddress;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
address wantAddress;
address outputAddress;
address nativeAddress;
address sub_76ffb9bdAddress;
address dataProviderAddress;
address lendingPoolAddress;
address sub_88b869c5Address;
address sub_a0367eb8Address;
array of struct outputToNativeRoute;
array of struct nativeToWantRoute;
uint8 harvestOnDeposit;
uint256 lastHarvest;
uint256 borrowRate;
uint256 borrowRateMax;
uint256 borrowDepth;
uint256 minLeverage;
uint256 reserves;

function borrowRateMax() payable {
    return borrowRateMax
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
    return unirouterAddress
}

function rewards(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < stor13.length
    require arg2 < uint256(stor13[arg1].field_0)
    return stor[('array', ('param', 'arg1'), ('name', 'stor13', 13)) + arg2].field_0
}

function nativeToWantRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < nativeToWantRoute.length
    return nativeToWantRoute[arg1].field_0
}

function paused() payable {
    return bool(stor0)
}

function reserves() payable {
    return reserves
}

function sub_76ffb9bd(?) payable {
    return sub_76ffb9bdAddress
}

function sub_88b869c5(?) payable {
    return sub_88b869c5Address
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

function sub_a0367eb8(?) payable {
    return sub_a0367eb8Address
}

function lendingPool() payable {
    return lendingPoolAddress
}

function keeper() payable {
    return stor1.length
}

function dataProvider() payable {
    return dataProviderAddress
}

function outputToNativeRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToNativeRoute.length
    return outputToNativeRoute[arg1].field_0
}

function borrowRate() payable {
    return borrowRate
}

function sub_cb92acde(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < stor19.length
    require arg2 < uint256(stor19[arg1])
    return address(stor[('array', ('param', 'arg1'), ('name', 'stor19', 19)) + arg2])
}

function beefyFee() payable {
    return beefyFee
}

function lastHarvest() payable {
    return lastHarvest
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return vaultAddress
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

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unirouterAddress = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, '!manager'
    stor1.length = arg1
}

function setBeefyFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beefyFeeRecipientAddress = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -arg1 + 888
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, '!manager'
    harvestOnDeposit = uint8(arg1)
    if owner != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, '!manager'
    if not uint8(arg1):
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

function userAccountData() payable {
    require ext_code.size(lendingPoolAddress)
    staticcall lendingPoolAddress.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160]
}

function userReserves() payable {
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args wantAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    return ext_call.return_data[0], ext_call.return_data[64]
}

function balanceOfPool() payable {
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args wantAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    if ext_call.return_data[64] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - ext_call.return_data[64])
}

function nativeToWant() payable {
    if nativeToWantRoute.length:
        mem[128] = address(nativeToWantRoute.field_0)
        if (32 * nativeToWantRoute.length) + 32 > 64:
            mem[160] = address(nativeToWantRoute.field_256)
            idx = 160
            s = 1
            while (32 * nativeToWantRoute.length) + 96 > idx:
                mem[idx + 32] = nativeToWantRoute[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * nativeToWantRoute.length) + 128] = 32
    mem[(32 * nativeToWantRoute.length) + 160] = nativeToWantRoute.length
    idx = 0
    s = (32 * nativeToWantRoute.length) + 192
    t = 128
    while idx < nativeToWantRoute.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * nativeToWantRoute.length) + 128
       len (96 * nativeToWantRoute.length) + 64
}

function balanceOf() payable {
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args wantAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    if ext_call.return_data[64] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((2 * ext_call.return_data[0]) - ext_call.return_data[64])
}

function outputToNative() payable {
    mem[64] = (32 * outputToNativeRoute.length) + 128
    mem[96] = outputToNativeRoute.length
    if not outputToNativeRoute.length:
        mem[(32 * outputToNativeRoute.length) + 128] = 32
        mem[(32 * outputToNativeRoute.length) + 160] = outputToNativeRoute.length
        idx = 0
        s = (32 * outputToNativeRoute.length) + 192
        t = 128
        while idx < outputToNativeRoute.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
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
    mem[(32 * outputToNativeRoute.length) + 128] = 32
    mem[(32 * outputToNativeRoute.length) + 160] = outputToNativeRoute.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < outputToNativeRoute.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * outputToNativeRoute.length) + -mem[64] + 192
}

function sub_da512c34(?) payable {
    mem[64] = (32 * stor19.length) + 128
    mem[96] = stor19.length
    s = 128
    idx = 0
    while idx < stor19.length:
        mem[0] = 19
        _12 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor19[idx])) + 32
        mem[_12] = uint256(stor19[idx])
        if uint256(stor19[idx]):
            mem[0] = idx + sha3(19)
            mem[_12 + 32] = address(stor19[idx])
            t = _12 + 32
            u = sha3(mem[0])
            while _12 + (32 * uint256(stor19[idx])) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _15:
        mem[t] = u + -_13 - 64
        _20 = mem[s]
        _21 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        w = u + 32
        x = _20 + 32
        while v < _21:
            mem[w] = mem[x + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = u + (32 * _21) + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function deleverageOnce(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1.length != msg.sender:
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
    require ext_code.size(lendingPoolAddress)
    call lendingPoolAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args wantAddress, ext_call.return_data[0], 2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args wantAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    if not ext_call.return_data[64]:
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        if 0 / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(lendingPoolAddress)
        call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, ext_call.return_data[0] - (0 / arg1), this.address
    else:
        if 100 * ext_call.return_data[64] / ext_call.return_data[64] != 100:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        if 100 * ext_call.return_data[64] / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(lendingPoolAddress)
        call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, ext_call.return_data[0] - (100 * ext_call.return_data[64] / arg1), this.address
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
}

function deposit() payable {
    if stor0:
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
    if ext_call.return_data[0] - reserves:
        if ext_call.return_data[0] - reserves < minLeverage:
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args wantAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_call.return_data[224] == ext_call.return_data[251 len 5]
            require ext_call.return_data[256] == bool(ext_call.return_data[256])
            if ext_call.return_data[64] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
        else:
            idx = 0
            s = mem[96] - reserves
            while idx < borrowDepth:
                mem[ceil32(return_data.size) + 96] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = wantAddress
                mem[ceil32(return_data.size) + 132] = s
                mem[ceil32(return_data.size) + 164] = this.address
                mem[ceil32(return_data.size) + 196] = 0
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                     gas gas_remaining wei
                    args wantAddress, s, address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not s:
                    idx = idx + 1
                    s = 0
                    continue 
                if borrowRate * s / s != borrowRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if borrowRate * s / 100:
                    mem[ceil32(return_data.size) + 96] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = wantAddress
                    mem[ceil32(return_data.size) + 132] = borrowRate * s / 100
                    mem[ceil32(return_data.size) + 164] = 2
                    mem[ceil32(return_data.size) + 196] = 0
                    mem[ceil32(return_data.size) + 228] = this.address
                    require ext_code.size(lendingPoolAddress)
                    call lendingPoolAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                         gas gas_remaining wei
                        args wantAddress, borrowRate * s / 100, 2, 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = borrowRate * s / 100
                continue 
            if s + reserves < reserves:
                revert with 0, 'SafeMath: addition overflow'
            reserves += s
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args wantAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_call.return_data[224] == ext_call.return_data[251 len 5]
            require ext_call.return_data[256] == bool(ext_call.return_data[256])
            if ext_call.return_data[64] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        emit Deposit(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
}

function rewardsAvailable() payable {
    mem[100] = this.address
    require ext_code.size(sub_76ffb9bdAddress)
    staticcall sub_76ffb9bdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_88b869c5Address)
    call sub_88b869c5Address.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor13.length + 1 <= test266151307()
    mem[ceil32(return_data.size) + 96] = stor13.length + 1
    if not stor13.length + 1:
        mem[ceil32(return_data.size) + (32 * stor13.length + 1) + 132] = this.address
        require ext_code.size(outputAddress)
        staticcall outputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + (32 * stor13.length + 1) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * stor13.length + 1) + 128
        require return_data.size >= 32
        require 0 < stor13.length + 1
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        idx = 0
        while idx < stor13.length:
            require 1 < uint256(stor13[idx].field_0)
            mem[0] = sha3(13) + idx
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor13[idx].field_256)
            staticcall stor13[idx].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx + 1 < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = mem[_64]
            require idx < stor13.length
            require 1 < uint256(stor13[idx].field_0)
            mem[0] = sha3(13) + idx
            if stor13[idx].field_256 == sub_76ffb9bdAddress:
                require idx + 1 < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = mem[(32 * idx + 1) + ceil32(return_data.size) + 128] - ext_call.return_data[0]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _52 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _52] = mem[ceil32(return_data.size) + 128 len 32 * _52]
        return 32, mem[mem[64] + 32 len (32 * _52) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * stor13.length + 1] = call.data[calldata.size len 32 * stor13.length + 1]
    mem[ceil32(return_data.size) + (32 * stor13.length + 1) + 132] = this.address
    require ext_code.size(outputAddress)
    staticcall outputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + (32 * stor13.length + 1) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * stor13.length + 1) + 128
    require return_data.size >= 32
    require 0 < stor13.length + 1
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
    idx = 0
    while idx < stor13.length:
        require 1 < uint256(stor13[idx].field_0)
        mem[0] = sha3(13) + idx
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor13[idx].field_256)
        staticcall stor13[idx].field_256.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx + 1 < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = mem[_65]
        require idx < stor13.length
        require 1 < uint256(stor13[idx].field_0)
        mem[0] = sha3(13) + idx
        if stor13[idx].field_256 == sub_76ffb9bdAddress:
            require idx + 1 < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = mem[(32 * idx + 1) + ceil32(return_data.size) + 128] - ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _55 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _55] = mem[ceil32(return_data.size) + 128 len 32 * _55]
    return 32, mem[mem[64] + 32 len (32 * _55) + 32]
}

function retireStrat() payable {
    if vaultAddress != msg.sender:
        revert with 0, '!vault'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args wantAddress, this.address
    mem[ceil32(return_data.size) + 96 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    s = mem[ceil32(return_data.size) + 160]
    t = mem[ceil32(return_data.size) + 96]
    u = ext_call.return_data[0]
    while u < s:
        require ext_code.size(lendingPoolAddress)
        call lendingPoolAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args wantAddress, u, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args wantAddress, this.address
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        _134 = mem[_129]
        _136 = mem[_129 + 64]
        require mem[_129 + 224] == mem[_129 + 251 len 5]
        require mem[_129 + 256] == bool(mem[_129 + 256])
        if not mem[_129 + 64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 / borrowRate > mem[_129]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 36] = mem[_129] - (0 / borrowRate)
            mem[mem[64] + 68] = this.address
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, _134 - (0 / borrowRate), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = _136
            t = _134
            u = mem[_187]
            continue 
        if 100 * mem[_129 + 64] / mem[_129 + 64] != 100:
            revert with 0, 'SafeMath: multiplication overflow'
        if borrowRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require borrowRate
        if 100 * mem[_129 + 64] / borrowRate > mem[_129]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64] + 36] = mem[_129] - (100 * mem[_129 + 64] / borrowRate)
        mem[mem[64] + 68] = this.address
        require ext_code.size(lendingPoolAddress)
        call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, _134 - (100 * _136 / borrowRate), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        s = _136
        t = _134
        u = mem[_188]
        continue 
    if not s:
        if not t:
            reserves = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _117 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _121 = mem[_117]
            mem[mem[64] + 4] = vaultAddress
            mem[mem[64] + 36] = _121
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args vaultAddress, _121
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _132 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_132] == bool(mem[_132])
        else:
            mem[mem[64] + 36] = -1
            mem[mem[64] + 68] = this.address
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, -1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            reserves = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _142 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _147 = mem[_142]
            mem[mem[64] + 4] = vaultAddress
            mem[mem[64] + 36] = _147
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args vaultAddress, _147
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _155 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_155] == bool(mem[_155])
    else:
        mem[mem[64] + 36] = -1
        mem[mem[64] + 68] = 2
        mem[mem[64] + 100] = this.address
        require ext_code.size(lendingPoolAddress)
        call lendingPoolAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args wantAddress, -1, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not t:
            reserves = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _143 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _148 = mem[_143]
            mem[mem[64] + 4] = vaultAddress
            mem[mem[64] + 36] = _148
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args vaultAddress, _148
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_156] == bool(mem[_156])
        else:
            mem[mem[64] + 36] = -1
            mem[mem[64] + 68] = this.address
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, -1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            reserves = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _157 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _161 = mem[_157]
            mem[mem[64] + 4] = vaultAddress
            mem[mem[64] + 36] = _161
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args vaultAddress, _161
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_169] == bool(mem[_169])
}

function callReward() payable {
    mem[100] = this.address
    require ext_code.size(sub_76ffb9bdAddress)
    staticcall sub_76ffb9bdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_88b869c5Address)
    call sub_88b869c5Address.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor13.length + 1 <= test266151307()
    mem[ceil32(return_data.size) + 96] = stor13.length + 1
    if not stor13.length + 1:
        mem[ceil32(return_data.size) + (32 * stor13.length + 1) + 132] = this.address
        require ext_code.size(outputAddress)
        staticcall outputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + (32 * stor13.length + 1) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * stor13.length + 1) + 128
        require return_data.size >= 32
        require 0 < stor13.length + 1
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        idx = 0
        while idx < stor13.length:
            require 1 < uint256(stor13[idx].field_0)
            mem[0] = sha3(13) + idx
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor13[idx].field_256)
            staticcall stor13[idx].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _234 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx + 1 < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = mem[_234]
            require idx < stor13.length
            require 1 < uint256(stor13[idx].field_0)
            mem[0] = sha3(13) + idx
            if stor13[idx].field_256 == sub_76ffb9bdAddress:
                require idx + 1 < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = mem[(32 * idx + 1) + ceil32(return_data.size) + 128] - ext_call.return_data[0]
            idx = idx + 1
            continue 
        require mem[ceil32(return_data.size) + 96]
        _222 = mem[ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _222
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = outputToNativeRoute.length
        mem[0] = 18
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < outputToNativeRoute.length:
            mem[t] = outputToNativeRoute[s].field_0
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _222, Array(len=outputToNativeRoute.length, data=mem[mem[64] + 100 len 32 * outputToNativeRoute.length])
        if not ext_call.success:
            idx = 0
            s = 0
            while idx < stor13.length:
                require idx + 1 < mem[ceil32(return_data.size) + 96]
                if mem[(32 * idx + 1) + ceil32(return_data.size) + 128] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < stor13.length
                require 0 < uint256(stor13[idx].field_0)
                mem[0] = sha3(13) + idx
                if stor13[idx].field_0 == nativeAddress:
                    if idx + 1 < mem[ceil32(return_data.size) + 96]:
                        _609 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        mem[mem[64]] = 0x80500d2000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = lendingPoolAddress
                        mem[mem[64] + 36] = _609
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(sub_a0367eb8Address)
                        call sub_a0367eb8Address.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args lendingPoolAddress, _609, this.address
                        if not ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx + 1 < mem[ceil32(return_data.size) + 96]:
                            idx = idx + 1
                            s = s + mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            continue 
                else:
                    if idx < stor13.length:
                        if 0 < uint256(stor13[idx].field_0):
                            if idx + 1 < mem[ceil32(return_data.size) + 96]:
                                _623 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                                mem[mem[64] + 4] = stor13[idx].field_0
                                mem[mem[64] + 36] = _623
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(lendingPoolAddress)
                                call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args stor13[idx].field_0, _623, this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if idx + 1 < mem[ceil32(return_data.size) + 96]:
                                    _672 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                                    if idx < stor19.length:
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _672
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = uint256(stor19[idx])
                                        mem[0] = sha3(19) + idx
                                        t = 0
                                        u = sha3(mem[0])
                                        v = mem[64] + 100
                                        while t < uint256(stor19[idx]):
                                            mem[v] = stor[u]
                                            t = t + 1
                                            u = u + 1
                                            v = v + 32
                                            continue 
                                        require ext_code.size(unirouterAddress)
                                        staticcall unirouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len v + -mem[64] - 4]
                                        if not ext_call.success:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        _776 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _788 = mem[_776]
                                        require mem[_776] <= test266151307()
                                        require _776 + return_data.size > _776 + mem[_776] + 31
                                        _800 = mem[_776 + mem[_776]]
                                        require mem[_776 + mem[_776]] <= test266151307()
                                        require (32 * mem[_776 + mem[_776]]) + 32 >= 0 and _776 + ceil32(return_data.size) + (32 * mem[_776 + mem[_776]]) + 32 <= test266151307()
                                        mem[64] = _776 + ceil32(return_data.size) + (32 * mem[_776 + mem[_776]]) + 32
                                        mem[_776 + ceil32(return_data.size)] = _800
                                        require return_data.size >= _788 + (32 * _800) + 32
                                        u = _776 + _788 + 32
                                        v = _776 + ceil32(return_data.size) + 32
                                        t = 0
                                        while t < _800:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            t = t + 1
                                            continue 
                                        if _800 - 1 < _800:
                                            idx = idx + 1
                                            s = s + mem[(32 * _800 - 1) + _776 + ceil32(return_data.size) + 32]
                                            continue 
                revert
        else:
            _420 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _422 = mem[_420]
            require mem[_420] <= test266151307()
            require _420 + return_data.size > _420 + mem[_420] + 31
            _425 = mem[_420 + mem[_420]]
            require mem[_420 + mem[_420]] <= test266151307()
            require (32 * mem[_420 + mem[_420]]) + 32 >= 0 and _420 + ceil32(return_data.size) + (32 * mem[_420 + mem[_420]]) + 32 <= test266151307()
            mem[64] = _420 + ceil32(return_data.size) + (32 * mem[_420 + mem[_420]]) + 32
            mem[_420 + ceil32(return_data.size)] = _425
            require return_data.size >= _422 + (32 * _425) + 32
            mem[_420 + ceil32(return_data.size) + 32 len 32 * _425] = mem[_420 + _422 + 32 len 32 * _425]
            require _425 - 1 < _425
            idx = 0
            s = mem[(32 * mem[_420 + ceil32(return_data.size)] - 1) + _420 + ceil32(return_data.size) + 32]
            while idx < stor13.length:
                require idx + 1 < mem[ceil32(return_data.size) + 96]
                if mem[(32 * idx + 1) + ceil32(return_data.size) + 128] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < stor13.length
                require 0 < uint256(stor13[idx].field_0)
                mem[0] = sha3(13) + idx
                if stor13[idx].field_0 == nativeAddress:
                    if idx + 1 < mem[ceil32(return_data.size) + 96]:
                        _781 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        mem[mem[64]] = 0x80500d2000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = lendingPoolAddress
                        mem[mem[64] + 36] = _781
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(sub_a0367eb8Address)
                        call sub_a0367eb8Address.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args lendingPoolAddress, _781, this.address
                        if not ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx + 1 < mem[ceil32(return_data.size) + 96]:
                            idx = idx + 1
                            s = s + mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            continue 
                else:
                    if idx < stor13.length:
                        if 0 < uint256(stor13[idx].field_0):
                            if idx + 1 < mem[ceil32(return_data.size) + 96]:
                                _795 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                                mem[mem[64] + 4] = stor13[idx].field_0
                                mem[mem[64] + 36] = _795
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(lendingPoolAddress)
                                call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args stor13[idx].field_0, _795, this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if idx + 1 < mem[ceil32(return_data.size) + 96]:
                                    _820 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                                    if idx < stor19.length:
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _820
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = uint256(stor19[idx])
                                        mem[0] = sha3(19) + idx
                                        t = 0
                                        u = sha3(mem[0])
                                        v = mem[64] + 100
                                        while t < uint256(stor19[idx]):
                                            mem[v] = stor[u]
                                            t = t + 1
                                            u = u + 1
                                            v = v + 32
                                            continue 
                                        require ext_code.size(unirouterAddress)
                                        staticcall unirouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len v + -mem[64] - 4]
                                        if not ext_call.success:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        _876 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _878 = mem[_876]
                                        require mem[_876] <= test266151307()
                                        require _876 + return_data.size > _876 + mem[_876] + 31
                                        _880 = mem[_876 + mem[_876]]
                                        require mem[_876 + mem[_876]] <= test266151307()
                                        require (32 * mem[_876 + mem[_876]]) + 32 >= 0 and _876 + ceil32(return_data.size) + (32 * mem[_876 + mem[_876]]) + 32 <= test266151307()
                                        mem[64] = _876 + ceil32(return_data.size) + (32 * mem[_876 + mem[_876]]) + 32
                                        mem[_876 + ceil32(return_data.size)] = _880
                                        require return_data.size >= _878 + (32 * _880) + 32
                                        u = _876 + _878 + 32
                                        v = _876 + ceil32(return_data.size) + 32
                                        t = 0
                                        while t < _880:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            t = t + 1
                                            continue 
                                        if _880 - 1 < _880:
                                            idx = idx + 1
                                            s = s + mem[(32 * _880 - 1) + _876 + ceil32(return_data.size) + 32]
                                            continue 
                revert
    else:
        mem[ceil32(return_data.size) + 128 len 32 * stor13.length + 1] = call.data[calldata.size len 32 * stor13.length + 1]
        mem[ceil32(return_data.size) + (32 * stor13.length + 1) + 132] = this.address
        require ext_code.size(outputAddress)
        staticcall outputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + (32 * stor13.length + 1) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * stor13.length + 1) + 128
        require return_data.size >= 32
        require 0 < stor13.length + 1
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        idx = 0
        while idx < stor13.length:
            require 1 < uint256(stor13[idx].field_0)
            mem[0] = sha3(13) + idx
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor13[idx].field_256)
            staticcall stor13[idx].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _235 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx + 1 < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = mem[_235]
            require idx < stor13.length
            require 1 < uint256(stor13[idx].field_0)
            mem[0] = sha3(13) + idx
            if stor13[idx].field_256 == sub_76ffb9bdAddress:
                require idx + 1 < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = mem[(32 * idx + 1) + ceil32(return_data.size) + 128] - ext_call.return_data[0]
            idx = idx + 1
            continue 
        require mem[ceil32(return_data.size) + 96]
        _226 = mem[ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _226
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = outputToNativeRoute.length
        mem[0] = 18
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < outputToNativeRoute.length:
            mem[t] = outputToNativeRoute[s].field_0
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _226, Array(len=outputToNativeRoute.length, data=mem[mem[64] + 100 len 32 * outputToNativeRoute.length])
        if not ext_call.success:
            idx = 0
            s = 0
            while idx < stor13.length:
                require idx + 1 < mem[ceil32(return_data.size) + 96]
                if mem[(32 * idx + 1) + ceil32(return_data.size) + 128] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < stor13.length
                require 0 < uint256(stor13[idx].field_0)
                mem[0] = sha3(13) + idx
                if stor13[idx].field_0 == nativeAddress:
                    if idx + 1 < mem[ceil32(return_data.size) + 96]:
                        _613 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        mem[mem[64]] = 0x80500d2000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = lendingPoolAddress
                        mem[mem[64] + 36] = _613
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(sub_a0367eb8Address)
                        call sub_a0367eb8Address.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args lendingPoolAddress, _613, this.address
                        if not ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx + 1 < mem[ceil32(return_data.size) + 96]:
                            idx = idx + 1
                            s = s + mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            continue 
                else:
                    if idx < stor13.length:
                        if 0 < uint256(stor13[idx].field_0):
                            if idx + 1 < mem[ceil32(return_data.size) + 96]:
                                _627 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                                mem[mem[64] + 4] = stor13[idx].field_0
                                mem[mem[64] + 36] = _627
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(lendingPoolAddress)
                                call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args stor13[idx].field_0, _627, this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if idx + 1 < mem[ceil32(return_data.size) + 96]:
                                    _673 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                                    if idx < stor19.length:
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _673
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = uint256(stor19[idx])
                                        mem[0] = sha3(19) + idx
                                        t = 0
                                        u = sha3(mem[0])
                                        v = mem[64] + 100
                                        while t < uint256(stor19[idx]):
                                            mem[v] = stor[u]
                                            t = t + 1
                                            u = u + 1
                                            v = v + 32
                                            continue 
                                        require ext_code.size(unirouterAddress)
                                        staticcall unirouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len v + -mem[64] - 4]
                                        if not ext_call.success:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        _778 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _791 = mem[_778]
                                        require mem[_778] <= test266151307()
                                        require _778 + return_data.size > _778 + mem[_778] + 31
                                        _801 = mem[_778 + mem[_778]]
                                        require mem[_778 + mem[_778]] <= test266151307()
                                        require (32 * mem[_778 + mem[_778]]) + 32 >= 0 and _778 + ceil32(return_data.size) + (32 * mem[_778 + mem[_778]]) + 32 <= test266151307()
                                        mem[64] = _778 + ceil32(return_data.size) + (32 * mem[_778 + mem[_778]]) + 32
                                        mem[_778 + ceil32(return_data.size)] = _801
                                        require return_data.size >= _791 + (32 * _801) + 32
                                        u = _778 + _791 + 32
                                        v = _778 + ceil32(return_data.size) + 32
                                        t = 0
                                        while t < _801:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            t = t + 1
                                            continue 
                                        if _801 - 1 < _801:
                                            idx = idx + 1
                                            s = s + mem[(32 * _801 - 1) + _778 + ceil32(return_data.size) + 32]
                                            continue 
                revert
        else:
            _421 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _423 = mem[_421]
            require mem[_421] <= test266151307()
            require _421 + return_data.size > _421 + mem[_421] + 31
            _427 = mem[_421 + mem[_421]]
            require mem[_421 + mem[_421]] <= test266151307()
            require (32 * mem[_421 + mem[_421]]) + 32 >= 0 and _421 + ceil32(return_data.size) + (32 * mem[_421 + mem[_421]]) + 32 <= test266151307()
            mem[64] = _421 + ceil32(return_data.size) + (32 * mem[_421 + mem[_421]]) + 32
            mem[_421 + ceil32(return_data.size)] = _427
            require return_data.size >= _423 + (32 * _427) + 32
            mem[_421 + ceil32(return_data.size) + 32 len 32 * _427] = mem[_421 + _423 + 32 len 32 * _427]
            require _427 - 1 < _427
            idx = 0
            s = mem[(32 * mem[_421 + ceil32(return_data.size)] - 1) + _421 + ceil32(return_data.size) + 32]
            while idx < stor13.length:
                require idx + 1 < mem[ceil32(return_data.size) + 96]
                if mem[(32 * idx + 1) + ceil32(return_data.size) + 128] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < stor13.length
                require 0 < uint256(stor13[idx].field_0)
                mem[0] = sha3(13) + idx
                if stor13[idx].field_0 == nativeAddress:
                    if idx + 1 < mem[ceil32(return_data.size) + 96]:
                        _785 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        mem[mem[64]] = 0x80500d2000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = lendingPoolAddress
                        mem[mem[64] + 36] = _785
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(sub_a0367eb8Address)
                        call sub_a0367eb8Address.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args lendingPoolAddress, _785, this.address
                        if not ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx + 1 < mem[ceil32(return_data.size) + 96]:
                            idx = idx + 1
                            s = s + mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            continue 
                else:
                    if idx < stor13.length:
                        if 0 < uint256(stor13[idx].field_0):
                            if idx + 1 < mem[ceil32(return_data.size) + 96]:
                                _798 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                                mem[mem[64] + 4] = stor13[idx].field_0
                                mem[mem[64] + 36] = _798
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(lendingPoolAddress)
                                call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args stor13[idx].field_0, _798, this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if idx + 1 < mem[ceil32(return_data.size) + 96]:
                                    _821 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                                    if idx < stor19.length:
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _821
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = uint256(stor19[idx])
                                        mem[0] = sha3(19) + idx
                                        t = 0
                                        u = sha3(mem[0])
                                        v = mem[64] + 100
                                        while t < uint256(stor19[idx]):
                                            mem[v] = stor[u]
                                            t = t + 1
                                            u = u + 1
                                            v = v + 32
                                            continue 
                                        require ext_code.size(unirouterAddress)
                                        staticcall unirouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len v + -mem[64] - 4]
                                        if not ext_call.success:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        _877 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _879 = mem[_877]
                                        require mem[_877] <= test266151307()
                                        require _877 + return_data.size > _877 + mem[_877] + 31
                                        _881 = mem[_877 + mem[_877]]
                                        require mem[_877 + mem[_877]] <= test266151307()
                                        require (32 * mem[_877 + mem[_877]]) + 32 >= 0 and _877 + ceil32(return_data.size) + (32 * mem[_877 + mem[_877]]) + 32 <= test266151307()
                                        mem[64] = _877 + ceil32(return_data.size) + (32 * mem[_877 + mem[_877]]) + 32
                                        mem[_877 + ceil32(return_data.size)] = _881
                                        require return_data.size >= _879 + (32 * _881) + 32
                                        u = _877 + _879 + 32
                                        v = _877 + ceil32(return_data.size) + 32
                                        t = 0
                                        while t < _881:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            t = t + 1
                                            continue 
                                        if _881 - 1 < _881:
                                            idx = idx + 1
                                            s = s + mem[(32 * _881 - 1) + _877 + ceil32(return_data.size) + 32]
                                            continue 
                revert
    if not s:
        return 0
    if 45 * s / s != 45:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 45 * s / 1000:
        return 0
    if callFee * 45 * s / 1000 / 45 * s / 1000 != callFee:
        revert with 0, 'SafeMath: multiplication overflow'
    return (callFee * 45 * s / 1000 / 1000)
}

function rebalance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == owner:
        if arg1 > borrowRateMax:
            revert with 0, '!rate'
        if arg2 > 10:
            revert with 0, '!depth'
        mem[100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args wantAddress, this.address
        mem[ceil32(return_data.size) + 96 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 288
        require ext_call.return_data[224] == ext_call.return_data[251 len 5]
        require ext_call.return_data[256] == bool(ext_call.return_data[256])
        s = mem[ceil32(return_data.size) + 160]
        t = mem[ceil32(return_data.size) + 96]
        u = ext_call.return_data[0]
        while u < s:
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, u, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args wantAddress, this.address
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _322 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _332 = mem[_322]
            _334 = mem[_322 + 64]
            require mem[_322 + 224] == mem[_322 + 251 len 5]
            require mem[_322 + 256] == bool(mem[_322 + 256])
            if not mem[_322 + 64]:
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                if 0 / borrowRate > mem[_322]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[mem[64] + 36] = mem[_322] - (0 / borrowRate)
                mem[mem[64] + 68] = this.address
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, _332 - (0 / borrowRate), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _503 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = _334
                t = _332
                u = mem[_503]
                continue 
            if 100 * mem[_322 + 64] / mem[_322 + 64] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 100 * mem[_322 + 64] / borrowRate > mem[_322]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 36] = mem[_322] - (100 * mem[_322 + 64] / borrowRate)
            mem[mem[64] + 68] = this.address
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, _332 - (100 * _334 / borrowRate), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _506 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = _334
            t = _332
            u = mem[_506]
            continue 
        if not s:
            if not t:
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_303] >= minLeverage:
                    idx = 0
                    s = mem[_303]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(lendingPoolAddress)
                        call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
            else:
                mem[mem[64] + 36] = -1
                mem[mem[64] + 68] = this.address
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _351 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_351] >= minLeverage:
                    idx = 0
                    s = mem[_351]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(lendingPoolAddress)
                        call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
        else:
            mem[mem[64] + 36] = -1
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = this.address
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, -1, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not t:
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _352 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_352] >= minLeverage:
                    idx = 0
                    s = mem[_352]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(lendingPoolAddress)
                        call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
            else:
                mem[mem[64] + 36] = -1
                mem[mem[64] + 68] = this.address
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _389 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_389] >= minLeverage:
                    idx = 0
                    s = mem[_389]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(lendingPoolAddress)
                        call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
    else:
        if stor1.length != msg.sender:
            revert with 0, '!manager'
        if arg1 > borrowRateMax:
            revert with 0, '!rate'
        if arg2 > 10:
            revert with 0, '!depth'
        mem[100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args wantAddress, this.address
        mem[ceil32(return_data.size) + 96 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 288
        require ext_call.return_data[224] == ext_call.return_data[251 len 5]
        require ext_call.return_data[256] == bool(ext_call.return_data[256])
        s = mem[ceil32(return_data.size) + 160]
        t = mem[ceil32(return_data.size) + 96]
        u = ext_call.return_data[0]
        while u < s:
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, u, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args wantAddress, this.address
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _343 = mem[_324]
            _345 = mem[_324 + 64]
            require mem[_324 + 224] == mem[_324 + 251 len 5]
            require mem[_324 + 256] == bool(mem[_324 + 256])
            if not mem[_324 + 64]:
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                if 0 / borrowRate > mem[_324]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[mem[64] + 36] = mem[_324] - (0 / borrowRate)
                mem[mem[64] + 68] = this.address
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, _343 - (0 / borrowRate), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _504 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = _345
                t = _343
                u = mem[_504]
                continue 
            if 100 * mem[_324 + 64] / mem[_324 + 64] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 100 * mem[_324 + 64] / borrowRate > mem[_324]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 36] = mem[_324] - (100 * mem[_324 + 64] / borrowRate)
            mem[mem[64] + 68] = this.address
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, _343 - (100 * _345 / borrowRate), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _508 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = _345
            t = _343
            u = mem[_508]
            continue 
        if not s:
            if not t:
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _305 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_305] >= minLeverage:
                    idx = 0
                    s = mem[_305]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(lendingPoolAddress)
                        call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
            else:
                mem[mem[64] + 36] = -1
                mem[mem[64] + 68] = this.address
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _354 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_354] >= minLeverage:
                    idx = 0
                    s = mem[_354]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(lendingPoolAddress)
                        call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
        else:
            mem[mem[64] + 36] = -1
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = this.address
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, -1, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not t:
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_355] >= minLeverage:
                    idx = 0
                    s = mem[_355]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(lendingPoolAddress)
                        call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
            else:
                mem[mem[64] + 36] = -1
                mem[mem[64] + 68] = this.address
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _390 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_390] >= minLeverage:
                    idx = 0
                    s = mem[_390]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(lendingPoolAddress)
                        call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
    emit StratRebalance(arg1, arg2);
}



}
