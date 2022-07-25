contract main {




// =====================  Runtime code  =====================


#
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
address stor12;
address stor13;
address stor14;
array of struct rewards;
address dataProviderAddress;
address lendingPoolAddress;
address sub_88b869c5Address;
address incentivesControllerAddress;
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

function incentivesController() payable {
    return incentivesControllerAddress
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
    require arg1 < stor22.length
    require arg2 < uint256(stor22[arg1])
    return address(stor[('array', ('param', 'arg1'), ('name', 'stor22', 22)) + arg2])
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

function rewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewards.length
    return rewards[arg1].field_0, rewards[arg1].field_256, rewards[arg1].field_512
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function sub_20690a63(?) payable {
    return stor12, stor13, stor14
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
    s = 128
    t = (32 * nativeToWantRoute.length) + 192
    while idx < nativeToWantRoute.length:
        mem[t] = mem[s + 12 len 20]
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
        s = 128
        t = (32 * outputToNativeRoute.length) + 192
        while idx < outputToNativeRoute.length:
            mem[t] = mem[s + 12 len 20]
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
    s = 128
    t = mem[64] + 64
    while idx < outputToNativeRoute.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * outputToNativeRoute.length) + -mem[64] + 192
}

function sub_da512c34(?) payable {
    mem[64] = (32 * stor22.length) + 128
    mem[96] = stor22.length
    s = 128
    idx = 0
    while idx < stor22.length:
        mem[0] = 22
        _12 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor22[idx])) + 32
        mem[_12] = uint256(stor22[idx])
        if uint256(stor22[idx]):
            mem[0] = idx + sha3(22)
            mem[_12 + 32] = address(stor22[idx])
            t = _12 + 32
            u = sha3(mem[0])
            while _12 + (32 * uint256(stor22[idx])) > t:
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
        _22 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        w = _20 + 32
        x = u + 32
        while v < _22:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        v = _22 + 1
        w = _20 + (32 * _22) + 64
        t = t + 32
        u = u + (32 * _22) + 32
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
    mem[96] = 2
    mem[128] = stor13
    mem[160] = stor14
    mem[192] = 2
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[288] = 2
    mem[64] = 448
    mem[384] = 0
    mem[416] = 0
    mem[var8001] = 384
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[384] = 0
        mem[416] = 0
        mem[s + 32] = 384
        s = s + 32
        idx = idx - 1
        continue 
    mem[mem[64]] = 0x17afe17c00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(incentivesControllerAddress)
    staticcall incentivesControllerAddress.0x17afe17c with:
            gas gas_remaining wei
           args address(this.address), 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _109 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _110 = mem[_109]
    require mem[_109] <= test266151307()
    require _109 + return_data.size > _109 + mem[_109] + 31
    _111 = mem[_109 + mem[_109]]
    require mem[_109 + mem[_109]] <= test266151307()
    require (32 * mem[_109 + mem[_109]]) + 32 >= 0 and _109 + ceil32(return_data.size) + (32 * mem[_109 + mem[_109]]) + 32 <= test266151307()
    mem[64] = _109 + ceil32(return_data.size) + (32 * mem[_109 + mem[_109]]) + 32
    mem[_109 + ceil32(return_data.size)] = _111
    require return_data.size >= _110 + (32 * _111) + 32
    mem[_109 + ceil32(return_data.size) + 32 len 32 * _111] = mem[_109 + _110 + 32 len 32 * _111]
    mem[mem[64]] = 0xdc01f60d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_88b869c5Address)
    staticcall sub_88b869c5Address.claimableRewards(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _157 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _158 = mem[_157]
    require mem[_157] <= test266151307()
    require _157 + return_data.size > _157 + mem[_157] + 31
    _159 = mem[_157 + mem[_157]]
    require mem[_157 + mem[_157]] <= test266151307()
    require (32 * mem[_157 + mem[_157]]) + 32 >= 0 and _157 + ceil32(return_data.size) + (32 * mem[_157 + mem[_157]]) + 32 <= test266151307()
    mem[64] = _157 + ceil32(return_data.size) + (32 * mem[_157 + mem[_157]]) + 32
    mem[_157 + ceil32(return_data.size)] = _159
    require return_data.size >= _158 + (64 * _159) + 32
    s = _157 + _158 + 32
    t = _157 + ceil32(return_data.size) + 32
    idx = 0
    while idx < _159:
        require _157 + return_data.size - s >= 64
        _197 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require mem[s] == mem[s + 12 len 20]
        mem[_197] = mem[s]
        mem[_197 + 32] = mem[s + 32]
        mem[t] = _197
        s = s + 64
        t = t + 32
        idx = idx + 1
        continue 
    require rewards.length + 1 <= test266151307()
    _195 = mem[64]
    mem[mem[64]] = rewards.length + 1
    mem[64] = mem[64] + (32 * rewards.length + 1) + 32
    if not rewards.length + 1:
        require 1 < mem[_109 + ceil32(return_data.size)]
        require 0 < mem[_109 + ceil32(return_data.size)]
        if mem[_109 + ceil32(return_data.size) + 64] + mem[_109 + ceil32(return_data.size) + 32] < mem[_109 + ceil32(return_data.size) + 32]:
            revert with 0, 'SafeMath: addition overflow'
        require 0 < mem[_195]
        mem[_195 + 32] = mem[_109 + ceil32(return_data.size) + 64] + mem[_109 + ceil32(return_data.size) + 32] / 2
        idx = 1
        while idx < rewards.length + 1:
            require idx < mem[_157 + ceil32(return_data.size)]
            require idx < mem[_195]
            mem[(32 * idx) + _195 + 32] = mem[mem[(32 * idx) + _157 + ceil32(return_data.size) + 32] + 32]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _239 = mem[_195]
        mem[mem[64] + 32] = mem[_195]
        mem[mem[64] + 64 len 32 * _239] = mem[_195 + 32 len 32 * _239]
        return 32, mem[mem[64] + 32 len (32 * _239) + 32]
    mem[_195 + 32 len 32 * rewards.length + 1] = call.data[calldata.size len 32 * rewards.length + 1]
    require 1 < mem[_109 + ceil32(return_data.size)]
    require 0 < mem[_109 + ceil32(return_data.size)]
    if mem[_109 + ceil32(return_data.size) + 64] + mem[_109 + ceil32(return_data.size) + 32] < mem[_109 + ceil32(return_data.size) + 32]:
        revert with 0, 'SafeMath: addition overflow'
    require 0 < mem[_195]
    mem[_195 + 32] = mem[_109 + ceil32(return_data.size) + 64] + mem[_109 + ceil32(return_data.size) + 32] / 2
    idx = 1
    while idx < rewards.length + 1:
        require idx < mem[_157 + ceil32(return_data.size)]
        require idx < mem[_195]
        mem[(32 * idx) + _195 + 32] = mem[mem[(32 * idx) + _157 + ceil32(return_data.size) + 32] + 32]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _240 = mem[_195]
    mem[mem[64] + 32] = mem[_195]
    mem[mem[64] + 64 len 32 * _240] = mem[_195 + 32 len 32 * _240]
    return 32, mem[mem[64] + 32 len (32 * _240) + 32]
}

function sub_7c0da3eb(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _159 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_159] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = cd[4] + cd[s] + 68
        v = 64
        v = _159 + 32
        w = 0
        while w < cd[(cd[4] + cd[s] + 36)]:
            require cd[u] == address(cd[u])
            mem[v] = cd[u]
            u = u + 32
            v = cd[u]
            v = v + 32
            w = w + 1
            continue 
        mem[t] = _159
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < rewards.length:
        mem[0] = 15
        _318 = mem[64]
        mem[mem[64] + 36] = unirouterAddress
        mem[mem[64] + 68] = 0
        _319 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_319 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_319 + 36 len 28]
        mem[64] = _318 + 164
        mem[_318 + 100] = 32
        mem[_318 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewards[idx].field_0):
            revert with 0, 'Address: call to non-contract'
        _339 = mem[_319]
        s = 0
        while s < _339:
            mem[s + _318 + 164] = mem[s + _319 + 32]
            s = s + 32
            continue 
        if ceil32(_339) > _339:
            mem[_318 + _339 + 164] = 0
        call rewards[idx].field_0.mem[_318 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_318 + 168 len _339 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_318 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_318 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _318 + 232] = mem[idx + _318 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_318 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _318 + ceil32(return_data.size) + 165
            mem[_318 + 164] = return_data.size
            mem[_318 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_318 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_318 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _318 + ceil32(return_data.size) + 233] = mem[idx + _318 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_318 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_318 + 196] == bool(mem[_318 + 196])
                if not mem[_318 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        idx = idx + 1
        continue 
    rewards.length = 0
    mem[0] = 15
    idx = 0
    while 3 * rewards.length > idx:
        rewards[idx].field_0 = 0
        rewards[idx].field_256 = 0
        rewards[idx].field_512 = 0
        idx = idx + 3
        continue 
    _612 = mem[96]
    idx = 0
    while idx < _612:
        require idx < mem[96]
        require 0 < mem[mem[(32 * idx) + 128]]
        _621 = mem[mem[(32 * idx) + 128] + 32]
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args address(mem[mem[(32 * idx) + 128] + 32])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _636 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _638 = mem[_636]
        require mem[_636] == mem[_636 + 12 len 20]
        require mem[_636 + 32] == mem[_636 + 44 len 20]
        _644 = mem[_636 + 64]
        require mem[_636 + 64] == mem[_636 + 76 len 20]
        _649 = mem[64]
        mem[64] = mem[64] + 96
        mem[_649] = address(_621)
        mem[_649 + 32] = address(_638)
        mem[_649 + 64] = address(_644)
        require idx < rewards.length
        mem[0] = 15
        rewards[idx].field_0 = address(_621)
        rewards[idx].field_256 = address(_638)
        rewards[idx].field_512 = address(_644)
        idx = idx + 1
        continue 
    idx = 0
    while idx < rewards.length:
        mem[0] = 15
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = unirouterAddress
        require ext_code.size(rewards[idx].field_0)
        staticcall rewards[idx].field_0.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), unirouterAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _719 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_719]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        _721 = mem[64]
        mem[mem[64] + 36] = unirouterAddress
        mem[mem[64] + 68] = -1
        _723 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_723 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_723 + 36 len 28]
        mem[64] = _721 + 164
        mem[_721 + 100] = 32
        mem[_721 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewards[idx].field_0):
            revert with 0, 'Address: call to non-contract'
        _731 = mem[_723]
        s = 0
        while s < _731:
            mem[s + _721 + 164] = mem[s + _723 + 32]
            s = s + 32
            continue 
        if ceil32(_731) > _731:
            mem[_721 + _731 + 164] = 0
        call rewards[idx].field_0.mem[_721 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_721 + 168 len _731 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_721 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_721 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _721 + 232] = mem[idx + _721 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_721 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _721 + ceil32(return_data.size) + 165
            mem[_721 + 164] = return_data.size
            mem[_721 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_721 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_721 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _721 + ceil32(return_data.size) + 233] = mem[idx + _721 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_721 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_721 + 196] == bool(mem[_721 + 196])
                if not mem[_721 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        idx = idx + 1
        continue 
    _713 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = rewards.length
    mem[0] = 15
    idx = 0
    s = 0
    t = mem[64] + 64
    while idx < rewards.length:
        mem[t] = stor[s + sha3(mem[0])]
        mem[t + 32] = stor[s + sha3(mem[0]) + 1]
        mem[t + 64] = stor[s + sha3(mem[0]) + 2]
        idx = idx + 1
        s = s + 3
        t = t + 96
        continue 
    emit 0x4b70457b: mem[mem[64] len _713 + (96 * rewards.length) + -mem[64] + 64]
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
    mem[96] = 2
    mem[128] = stor13
    mem[160] = stor14
    mem[192] = 2
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[288] = 2
    mem[64] = 448
    mem[384] = 0
    mem[416] = 0
    mem[var9001] = 384
    s = var9001
    idx = var9002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[384] = 0
        mem[416] = 0
        mem[s + 32] = 384
        s = s + 32
        idx = idx - 1
        continue 
    _176 = mem[64]
    mem[mem[64]] = 0x17afe17c00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = 64
    _177 = mem[96]
    mem[mem[64] + 68] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < _177:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(incentivesControllerAddress)
    staticcall incentivesControllerAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _176 + (32 * _177) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _345 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _346 = mem[_345]
    require mem[_345] <= test266151307()
    require _345 + return_data.size > _345 + mem[_345] + 31
    _347 = mem[_345 + mem[_345]]
    require mem[_345 + mem[_345]] <= test266151307()
    require (32 * mem[_345 + mem[_345]]) + 32 >= 0 and _345 + ceil32(return_data.size) + (32 * mem[_345 + mem[_345]]) + 32 <= test266151307()
    mem[64] = _345 + ceil32(return_data.size) + (32 * mem[_345 + mem[_345]]) + 32
    mem[_345 + ceil32(return_data.size)] = _347
    require return_data.size >= _346 + (32 * _347) + 32
    mem[_345 + ceil32(return_data.size) + 32 len 32 * _347] = mem[_345 + _346 + 32 len 32 * _347]
    mem[mem[64]] = 0xdc01f60d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_88b869c5Address)
    staticcall sub_88b869c5Address.claimableRewards(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _511 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _512 = mem[_511]
    require mem[_511] <= test266151307()
    require _511 + return_data.size > _511 + mem[_511] + 31
    _513 = mem[_511 + mem[_511]]
    require mem[_511 + mem[_511]] <= test266151307()
    require (32 * mem[_511 + mem[_511]]) + 32 >= 0 and _511 + ceil32(return_data.size) + (32 * mem[_511 + mem[_511]]) + 32 <= test266151307()
    mem[64] = _511 + ceil32(return_data.size) + (32 * mem[_511 + mem[_511]]) + 32
    mem[_511 + ceil32(return_data.size)] = _513
    require return_data.size >= _512 + (64 * _513) + 32
    s = _511 + _512 + 32
    t = _511 + ceil32(return_data.size) + 32
    idx = 0
    while idx < _513:
        require _511 + return_data.size - s >= 64
        _669 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require mem[s] == mem[s + 12 len 20]
        mem[_669] = mem[s]
        mem[_669 + 32] = mem[s + 32]
        mem[t] = _669
        s = s + 64
        t = t + 32
        idx = idx + 1
        continue 
    require rewards.length + 1 <= test266151307()
    _667 = mem[64]
    mem[mem[64]] = rewards.length + 1
    mem[64] = mem[64] + (32 * rewards.length + 1) + 32
    if not rewards.length + 1:
        require 1 < mem[_345 + ceil32(return_data.size)]
        require 0 < mem[_345 + ceil32(return_data.size)]
        if mem[_345 + ceil32(return_data.size) + 64] + mem[_345 + ceil32(return_data.size) + 32] < mem[_345 + ceil32(return_data.size) + 32]:
            revert with 0, 'SafeMath: addition overflow'
        require 0 < mem[_667]
        mem[_667 + 32] = mem[_345 + ceil32(return_data.size) + 64] + mem[_345 + ceil32(return_data.size) + 32] / 2
        idx = 1
        while idx < rewards.length + 1:
            require idx < mem[_511 + ceil32(return_data.size)]
            require idx < mem[_667]
            mem[(32 * idx) + _667 + 32] = mem[mem[(32 * idx) + _511 + ceil32(return_data.size) + 32] + 32]
            idx = idx + 1
            continue 
        require mem[_667]
        _829 = mem[_667 + 32]
        _830 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _829
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = outputToNativeRoute.length
        mem[0] = 21
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < outputToNativeRoute.length:
            mem[t] = stor[s + sha3(mem[0])]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _830 + (32 * outputToNativeRoute.length) + -mem[64] + 96]
        if not ext_call.success:
            idx = 0
            s = 0
            while idx < rewards.length:
                require idx + 1 < mem[_667]
                if mem[(32 * idx + 1) + _667 + 32] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < rewards.length
                mem[0] = 15
                if rewards[idx].field_0 == nativeAddress:
                    if idx + 1 < mem[_667]:
                        idx = idx + 1
                        s = s + mem[(32 * idx + 1) + _667 + 32]
                        continue 
                else:
                    if idx + 1 < mem[_667]:
                        _1092 = mem[(32 * idx + 1) + _667 + 32]
                        if idx < stor22.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1092
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = uint256(stor22[idx])
                            mem[0] = sha3(22) + idx
                            t = 0
                            u = sha3(mem[0])
                            v = mem[64] + 100
                            while t < uint256(stor22[idx]):
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
                            _1209 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1221 = mem[_1209]
                            require mem[_1209] <= test266151307()
                            require _1209 + return_data.size > _1209 + mem[_1209] + 31
                            _1225 = mem[_1209 + mem[_1209]]
                            require mem[_1209 + mem[_1209]] <= test266151307()
                            require (32 * mem[_1209 + mem[_1209]]) + 32 >= 0 and _1209 + ceil32(return_data.size) + (32 * mem[_1209 + mem[_1209]]) + 32 <= test266151307()
                            mem[64] = _1209 + ceil32(return_data.size) + (32 * mem[_1209 + mem[_1209]]) + 32
                            mem[_1209 + ceil32(return_data.size)] = _1225
                            require return_data.size >= _1221 + (32 * _1225) + 32
                            u = _1209 + _1221 + 32
                            v = _1209 + ceil32(return_data.size) + 32
                            t = 0
                            while t < _1225:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t + 1
                                continue 
                            if _1225 - 1 < _1225:
                                idx = idx + 1
                                s = s + mem[(32 * _1225 - 1) + _1209 + ceil32(return_data.size) + 32]
                                continue 
                revert
        else:
            _955 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _957 = mem[_955]
            require mem[_955] <= test266151307()
            require _955 + return_data.size > _955 + mem[_955] + 31
            _960 = mem[_955 + mem[_955]]
            require mem[_955 + mem[_955]] <= test266151307()
            require (32 * mem[_955 + mem[_955]]) + 32 >= 0 and _955 + ceil32(return_data.size) + (32 * mem[_955 + mem[_955]]) + 32 <= test266151307()
            mem[64] = _955 + ceil32(return_data.size) + (32 * mem[_955 + mem[_955]]) + 32
            mem[_955 + ceil32(return_data.size)] = _960
            require return_data.size >= _957 + (32 * _960) + 32
            mem[_955 + ceil32(return_data.size) + 32 len 32 * _960] = mem[_955 + _957 + 32 len 32 * _960]
            require _960 - 1 < _960
            idx = 0
            s = mem[(32 * mem[_955 + ceil32(return_data.size)] - 1) + _955 + ceil32(return_data.size) + 32]
            while idx < rewards.length:
                require idx + 1 < mem[_667]
                if mem[(32 * idx + 1) + _667 + 32] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < rewards.length
                mem[0] = 15
                if rewards[idx].field_0 == nativeAddress:
                    if idx + 1 < mem[_667]:
                        idx = idx + 1
                        s = s + mem[(32 * idx + 1) + _667 + 32]
                        continue 
                else:
                    if idx + 1 < mem[_667]:
                        _1211 = mem[(32 * idx + 1) + _667 + 32]
                        if idx < stor22.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1211
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = uint256(stor22[idx])
                            mem[0] = sha3(22) + idx
                            t = 0
                            u = sha3(mem[0])
                            v = mem[64] + 100
                            while t < uint256(stor22[idx]):
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
                            _1281 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1283 = mem[_1281]
                            require mem[_1281] <= test266151307()
                            require _1281 + return_data.size > _1281 + mem[_1281] + 31
                            _1285 = mem[_1281 + mem[_1281]]
                            require mem[_1281 + mem[_1281]] <= test266151307()
                            require (32 * mem[_1281 + mem[_1281]]) + 32 >= 0 and _1281 + ceil32(return_data.size) + (32 * mem[_1281 + mem[_1281]]) + 32 <= test266151307()
                            mem[64] = _1281 + ceil32(return_data.size) + (32 * mem[_1281 + mem[_1281]]) + 32
                            mem[_1281 + ceil32(return_data.size)] = _1285
                            require return_data.size >= _1283 + (32 * _1285) + 32
                            u = _1281 + _1283 + 32
                            v = _1281 + ceil32(return_data.size) + 32
                            t = 0
                            while t < _1285:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t + 1
                                continue 
                            if _1285 - 1 < _1285:
                                idx = idx + 1
                                s = s + mem[(32 * _1285 - 1) + _1281 + ceil32(return_data.size) + 32]
                                continue 
                revert
    else:
        mem[_667 + 32 len 32 * rewards.length + 1] = call.data[calldata.size len 32 * rewards.length + 1]
        require 1 < mem[_345 + ceil32(return_data.size)]
        require 0 < mem[_345 + ceil32(return_data.size)]
        if mem[_345 + ceil32(return_data.size) + 64] + mem[_345 + ceil32(return_data.size) + 32] < mem[_345 + ceil32(return_data.size) + 32]:
            revert with 0, 'SafeMath: addition overflow'
        require 0 < mem[_667]
        mem[_667 + 32] = mem[_345 + ceil32(return_data.size) + 64] + mem[_345 + ceil32(return_data.size) + 32] / 2
        idx = 1
        while idx < rewards.length + 1:
            require idx < mem[_511 + ceil32(return_data.size)]
            require idx < mem[_667]
            mem[(32 * idx) + _667 + 32] = mem[mem[(32 * idx) + _511 + ceil32(return_data.size) + 32] + 32]
            idx = idx + 1
            continue 
        require mem[_667]
        _831 = mem[_667 + 32]
        _832 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _831
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = outputToNativeRoute.length
        mem[0] = 21
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < outputToNativeRoute.length:
            mem[t] = stor[s + sha3(mem[0])]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _832 + (32 * outputToNativeRoute.length) + -mem[64] + 96]
        if not ext_call.success:
            idx = 0
            s = 0
            while idx < rewards.length:
                require idx + 1 < mem[_667]
                if mem[(32 * idx + 1) + _667 + 32] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < rewards.length
                mem[0] = 15
                if rewards[idx].field_0 == nativeAddress:
                    if idx + 1 < mem[_667]:
                        idx = idx + 1
                        s = s + mem[(32 * idx + 1) + _667 + 32]
                        continue 
                else:
                    if idx + 1 < mem[_667]:
                        _1094 = mem[(32 * idx + 1) + _667 + 32]
                        if idx < stor22.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1094
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = uint256(stor22[idx])
                            mem[0] = sha3(22) + idx
                            t = 0
                            u = sha3(mem[0])
                            v = mem[64] + 100
                            while t < uint256(stor22[idx]):
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
                            _1212 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1222 = mem[_1212]
                            require mem[_1212] <= test266151307()
                            require _1212 + return_data.size > _1212 + mem[_1212] + 31
                            _1226 = mem[_1212 + mem[_1212]]
                            require mem[_1212 + mem[_1212]] <= test266151307()
                            require (32 * mem[_1212 + mem[_1212]]) + 32 >= 0 and _1212 + ceil32(return_data.size) + (32 * mem[_1212 + mem[_1212]]) + 32 <= test266151307()
                            mem[64] = _1212 + ceil32(return_data.size) + (32 * mem[_1212 + mem[_1212]]) + 32
                            mem[_1212 + ceil32(return_data.size)] = _1226
                            require return_data.size >= _1222 + (32 * _1226) + 32
                            u = _1212 + _1222 + 32
                            v = _1212 + ceil32(return_data.size) + 32
                            t = 0
                            while t < _1226:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t + 1
                                continue 
                            if _1226 - 1 < _1226:
                                idx = idx + 1
                                s = s + mem[(32 * _1226 - 1) + _1212 + ceil32(return_data.size) + 32]
                                continue 
                revert
        else:
            _956 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _958 = mem[_956]
            require mem[_956] <= test266151307()
            require _956 + return_data.size > _956 + mem[_956] + 31
            _962 = mem[_956 + mem[_956]]
            require mem[_956 + mem[_956]] <= test266151307()
            require (32 * mem[_956 + mem[_956]]) + 32 >= 0 and _956 + ceil32(return_data.size) + (32 * mem[_956 + mem[_956]]) + 32 <= test266151307()
            mem[64] = _956 + ceil32(return_data.size) + (32 * mem[_956 + mem[_956]]) + 32
            mem[_956 + ceil32(return_data.size)] = _962
            require return_data.size >= _958 + (32 * _962) + 32
            mem[_956 + ceil32(return_data.size) + 32 len 32 * _962] = mem[_956 + _958 + 32 len 32 * _962]
            require _962 - 1 < _962
            idx = 0
            s = mem[(32 * mem[_956 + ceil32(return_data.size)] - 1) + _956 + ceil32(return_data.size) + 32]
            while idx < rewards.length:
                require idx + 1 < mem[_667]
                if mem[(32 * idx + 1) + _667 + 32] <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < rewards.length
                mem[0] = 15
                if rewards[idx].field_0 == nativeAddress:
                    if idx + 1 < mem[_667]:
                        idx = idx + 1
                        s = s + mem[(32 * idx + 1) + _667 + 32]
                        continue 
                else:
                    if idx + 1 < mem[_667]:
                        _1214 = mem[(32 * idx + 1) + _667 + 32]
                        if idx < stor22.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1214
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = uint256(stor22[idx])
                            mem[0] = sha3(22) + idx
                            t = 0
                            u = sha3(mem[0])
                            v = mem[64] + 100
                            while t < uint256(stor22[idx]):
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
                            _1282 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1284 = mem[_1282]
                            require mem[_1282] <= test266151307()
                            require _1282 + return_data.size > _1282 + mem[_1282] + 31
                            _1286 = mem[_1282 + mem[_1282]]
                            require mem[_1282 + mem[_1282]] <= test266151307()
                            require (32 * mem[_1282 + mem[_1282]]) + 32 >= 0 and _1282 + ceil32(return_data.size) + (32 * mem[_1282 + mem[_1282]]) + 32 <= test266151307()
                            mem[64] = _1282 + ceil32(return_data.size) + (32 * mem[_1282 + mem[_1282]]) + 32
                            mem[_1282 + ceil32(return_data.size)] = _1286
                            require return_data.size >= _1284 + (32 * _1286) + 32
                            u = _1282 + _1284 + 32
                            v = _1282 + ceil32(return_data.size) + 32
                            t = 0
                            while t < _1286:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t + 1
                                continue 
                            if _1286 - 1 < _1286:
                                idx = idx + 1
                                s = s + mem[(32 * _1286 - 1) + _1282 + ceil32(return_data.size) + 32]
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
