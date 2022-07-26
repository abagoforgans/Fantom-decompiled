contract main {




// =====================  Runtime code  =====================


#
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
uint32 stor4;
address vaultAddress;
uint256 stor4;
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
array of struct outputToNativeRoute;
array of struct nativeToWantRoute;
uint8 stor23;
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
    return bool(stor23)
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
    require arg1 < stor21.length
    require arg2 < uint256(stor21[arg1])
    return address(stor[('array', ('param', 'arg1'), ('name', 'stor21', 21)) + arg2])
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
    return address(vaultAddress)
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

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(vaultAddress) = arg1
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
    stor23 = uint8(arg1)
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
    mem[64] = (32 * stor21.length) + 128
    mem[96] = stor21.length
    s = 128
    idx = 0
    while idx < stor21.length:
        mem[0] = 21
        _12 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor21[idx])) + 32
        mem[_12] = uint256(stor21[idx])
        if uint256(stor21[idx]):
            mem[0] = idx + sha3(21)
            mem[_12 + 32] = address(stor21[idx])
            t = _12 + 32
            u = sha3(mem[0])
            while _12 + (32 * uint256(stor21[idx])) > t:
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

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
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
            mem[mem[64] + 4] = address(vaultAddress)
            mem[mem[64] + 36] = _121
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(vaultAddress), _121
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
            mem[mem[64] + 4] = address(vaultAddress)
            mem[mem[64] + 36] = _147
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(vaultAddress), _147
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
            mem[mem[64] + 4] = address(vaultAddress)
            mem[mem[64] + 36] = _148
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(vaultAddress), _148
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
            mem[mem[64] + 4] = address(vaultAddress)
            mem[mem[64] + 36] = _161
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(vaultAddress), _161
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_169] == bool(mem[_169])
}

function rewardsAvailable() payable {
    mem[96] = 2
    mem[128] = stor13
    mem[160] = stor14
    mem[192] = 2
    mem[224 len 64] = call.data[calldata.size len 64]
    require rewards.length <= test266151307()
    mem[288] = rewards.length
    if not rewards.length:
        mem[(32 * rewards.length) + 320] = 0xe5b5349800000000000000000000000000000000000000000000000000000000
        mem[(32 * rewards.length) + 324] = this.address
        mem[(32 * rewards.length) + 356] = 64
        mem[(32 * rewards.length) + 388] = 2
        idx = 0
        s = 128
        t = (32 * rewards.length) + 420
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(incentivesControllerAddress)
        staticcall incentivesControllerAddress.0xe5b53498 with:
                gas gas_remaining wei
               args address(this.address), Array(len=2, data=mem[(32 * rewards.length) + 420 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * rewards.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * rewards.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        _111 = mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64
        require mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 <= test266151307()
        require (32 * rewards.length) + return_data.size + 320 > (32 * rewards.length) + mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 + 351
        _113 = mem[(32 * rewards.length) + mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 + 320]
        require mem[(32 * rewards.length) + mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 + 320] <= test266151307()
        require (32 * mem[(32 * rewards.length) + mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 + 320]) + 32 >= 0 and (32 * rewards.length) + ceil32(return_data.size) + (32 * mem[(32 * rewards.length) + mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 + 320]) + 352 <= test266151307()
        mem[64] = (32 * rewards.length) + ceil32(return_data.size) + (32 * mem[(32 * rewards.length) + mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 + 320]) + 352
        mem[(32 * rewards.length) + ceil32(return_data.size) + 320] = _113
        require return_data.size >= _111 + (32 * _113) + 32
        mem[(32 * rewards.length) + ceil32(return_data.size) + 352 len 32 * _113] = mem[(32 * rewards.length) + _111 + 352 len 32 * _113]
        mem[mem[64]] = 0xdc01f60d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_88b869c5Address)
        staticcall sub_88b869c5Address.claimableRewards(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _208 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _210 = mem[_208]
        require mem[_208] <= test266151307()
        require _208 + return_data.size > _208 + mem[_208] + 31
        _211 = mem[_208 + mem[_208]]
        require mem[_208 + mem[_208]] <= test266151307()
        require (32 * mem[_208 + mem[_208]]) + 32 >= 0 and _208 + ceil32(return_data.size) + (32 * mem[_208 + mem[_208]]) + 32 <= test266151307()
        mem[64] = _208 + ceil32(return_data.size) + (32 * mem[_208 + mem[_208]]) + 32
        mem[_208 + ceil32(return_data.size)] = _211
        require return_data.size >= _210 + (64 * _211) + 32
        s = _208 + _210 + 32
        t = _208 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _211:
            require _208 + return_data.size - s >= 64
            _296 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[s] == mem[s + 12 len 20]
            mem[_296] = mem[s]
            mem[_296 + 32] = mem[s + 32]
            mem[t] = _296
            s = s + 64
            t = t + 32
            idx = idx + 1
            continue 
        require rewards.length + 1 <= test266151307()
        _294 = mem[64]
        mem[mem[64]] = rewards.length + 1
        mem[64] = mem[64] + (32 * rewards.length + 1) + 32
        if not rewards.length + 1:
            require 1 < mem[(32 * rewards.length) + ceil32(return_data.size) + 320]
            require 0 < mem[(32 * rewards.length) + ceil32(return_data.size) + 320]
            if mem[(32 * rewards.length) + ceil32(return_data.size) + 384] + mem[(32 * rewards.length) + ceil32(return_data.size) + 352] < mem[(32 * rewards.length) + ceil32(return_data.size) + 352]:
                revert with 0, 'SafeMath: addition overflow'
            require 0 < mem[_294]
            mem[_294 + 32] = mem[(32 * rewards.length) + ceil32(return_data.size) + 384] + mem[(32 * rewards.length) + ceil32(return_data.size) + 352] / 2
            idx = 1
            while idx < rewards.length + 1:
                require idx < mem[_208 + ceil32(return_data.size)]
                require idx < mem[_294]
                mem[(32 * idx) + _294 + 32] = mem[mem[(32 * idx) + _208 + ceil32(return_data.size) + 32] + 32]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _386 = mem[_294]
            mem[mem[64] + 32] = mem[_294]
            mem[mem[64] + 64 len 32 * _386] = mem[_294 + 32 len 32 * _386]
            return 32, mem[mem[64] + 32 len (32 * _386) + 32]
        mem[_294 + 32 len 32 * rewards.length + 1] = call.data[calldata.size len 32 * rewards.length + 1]
        require 1 < mem[(32 * rewards.length) + ceil32(return_data.size) + 320]
        require 0 < mem[(32 * rewards.length) + ceil32(return_data.size) + 320]
        if mem[(32 * rewards.length) + ceil32(return_data.size) + 384] + mem[(32 * rewards.length) + ceil32(return_data.size) + 352] < mem[(32 * rewards.length) + ceil32(return_data.size) + 352]:
            revert with 0, 'SafeMath: addition overflow'
        require 0 < mem[_294]
        mem[_294 + 32] = mem[(32 * rewards.length) + ceil32(return_data.size) + 384] + mem[(32 * rewards.length) + ceil32(return_data.size) + 352] / 2
        idx = 1
        while idx < rewards.length + 1:
            require idx < mem[_208 + ceil32(return_data.size)]
            require idx < mem[_294]
            mem[(32 * idx) + _294 + 32] = mem[mem[(32 * idx) + _208 + ceil32(return_data.size) + 32] + 32]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _387 = mem[_294]
        mem[mem[64] + 32] = mem[_294]
        mem[mem[64] + 64 len 32 * _387] = mem[_294 + 32 len 32 * _387]
        return 32, mem[mem[64] + 32 len (32 * _387) + 32]
    mem[64] = (32 * rewards.length) + 384
    mem[(32 * rewards.length) + 320] = 0
    mem[(32 * rewards.length) + 352] = 0
    mem[var10001] = (32 * rewards.length) + 320
    s = var10001
    idx = var10002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * rewards.length) + 320] = 0
        mem[(32 * rewards.length) + 352] = 0
        mem[s + 32] = (32 * rewards.length) + 320
        s = s + 32
        idx = idx - 1
        continue 
    _205 = mem[64]
    mem[mem[64]] = 0xe5b5349800000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = 64
    _207 = mem[96]
    mem[mem[64] + 68] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < _207:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(incentivesControllerAddress)
    staticcall incentivesControllerAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _205 + (32 * _207) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _305 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _308 = mem[_305]
    require mem[_305] <= test266151307()
    require _305 + return_data.size > _305 + mem[_305] + 31
    _312 = mem[_305 + mem[_305]]
    require mem[_305 + mem[_305]] <= test266151307()
    require (32 * mem[_305 + mem[_305]]) + 32 >= 0 and _305 + ceil32(return_data.size) + (32 * mem[_305 + mem[_305]]) + 32 <= test266151307()
    mem[64] = _305 + ceil32(return_data.size) + (32 * mem[_305 + mem[_305]]) + 32
    mem[_305 + ceil32(return_data.size)] = _312
    require return_data.size >= _308 + (32 * _312) + 32
    mem[_305 + ceil32(return_data.size) + 32 len 32 * _312] = mem[_305 + _308 + 32 len 32 * _312]
    mem[mem[64]] = 0xdc01f60d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_88b869c5Address)
    staticcall sub_88b869c5Address.claimableRewards(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _393 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _394 = mem[_393]
    require mem[_393] <= test266151307()
    require _393 + return_data.size > _393 + mem[_393] + 31
    _395 = mem[_393 + mem[_393]]
    require mem[_393 + mem[_393]] <= test266151307()
    require (32 * mem[_393 + mem[_393]]) + 32 >= 0 and _393 + ceil32(return_data.size) + (32 * mem[_393 + mem[_393]]) + 32 <= test266151307()
    mem[64] = _393 + ceil32(return_data.size) + (32 * mem[_393 + mem[_393]]) + 32
    mem[_393 + ceil32(return_data.size)] = _395
    require return_data.size >= _394 + (64 * _395) + 32
    s = _393 + _394 + 32
    t = _393 + ceil32(return_data.size) + 32
    idx = 0
    while idx < _395:
        require _393 + return_data.size - s >= 64
        _437 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require mem[s] == mem[s + 12 len 20]
        mem[_437] = mem[s]
        mem[_437 + 32] = mem[s + 32]
        mem[t] = _437
        s = s + 64
        t = t + 32
        idx = idx + 1
        continue 
    require rewards.length + 1 <= test266151307()
    _435 = mem[64]
    mem[mem[64]] = rewards.length + 1
    mem[64] = mem[64] + (32 * rewards.length + 1) + 32
    if not rewards.length + 1:
        require 1 < mem[_305 + ceil32(return_data.size)]
        require 0 < mem[_305 + ceil32(return_data.size)]
        if mem[_305 + ceil32(return_data.size) + 64] + mem[_305 + ceil32(return_data.size) + 32] < mem[_305 + ceil32(return_data.size) + 32]:
            revert with 0, 'SafeMath: addition overflow'
        require 0 < mem[_435]
        mem[_435 + 32] = mem[_305 + ceil32(return_data.size) + 64] + mem[_305 + ceil32(return_data.size) + 32] / 2
        idx = 1
        while idx < rewards.length + 1:
            require idx < mem[_393 + ceil32(return_data.size)]
            require idx < mem[_435]
            mem[(32 * idx) + _435 + 32] = mem[mem[(32 * idx) + _393 + ceil32(return_data.size) + 32] + 32]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _479 = mem[_435]
        mem[mem[64] + 32] = mem[_435]
        mem[mem[64] + 64 len 32 * _479] = mem[_435 + 32 len 32 * _479]
        return 32, mem[mem[64] + 32 len (32 * _479) + 32]
    mem[_435 + 32 len 32 * rewards.length + 1] = call.data[calldata.size len 32 * rewards.length + 1]
    require 1 < mem[_305 + ceil32(return_data.size)]
    require 0 < mem[_305 + ceil32(return_data.size)]
    if mem[_305 + ceil32(return_data.size) + 64] + mem[_305 + ceil32(return_data.size) + 32] < mem[_305 + ceil32(return_data.size) + 32]:
        revert with 0, 'SafeMath: addition overflow'
    require 0 < mem[_435]
    mem[_435 + 32] = mem[_305 + ceil32(return_data.size) + 64] + mem[_305 + ceil32(return_data.size) + 32] / 2
    idx = 1
    while idx < rewards.length + 1:
        require idx < mem[_393 + ceil32(return_data.size)]
        require idx < mem[_435]
        mem[(32 * idx) + _435 + 32] = mem[mem[(32 * idx) + _393 + ceil32(return_data.size) + 32] + 32]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _480 = mem[_435]
    mem[mem[64] + 32] = mem[_435]
    mem[mem[64] + 64 len 32 * _480] = mem[_435 + 32 len 32 * _480]
    return 32, mem[mem[64] + 32 len (32 * _480) + 32]
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

function callReward() payable {
    mem[96] = 2
    mem[128] = stor13
    mem[160] = stor14
    mem[192] = 2
    mem[224 len 64] = call.data[calldata.size len 64]
    require rewards.length <= test266151307()
    mem[288] = rewards.length
    if not rewards.length:
        mem[(32 * rewards.length) + 320] = 0xe5b5349800000000000000000000000000000000000000000000000000000000
        mem[(32 * rewards.length) + 324] = this.address
        mem[(32 * rewards.length) + 356] = 64
        mem[(32 * rewards.length) + 388] = 2
        idx = 0
        s = 128
        t = (32 * rewards.length) + 420
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(incentivesControllerAddress)
        staticcall incentivesControllerAddress.0xe5b53498 with:
                gas gas_remaining wei
               args address(this.address), Array(len=2, data=mem[(32 * rewards.length) + 420 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * rewards.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * rewards.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        _347 = mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64
        require mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 <= test266151307()
        require (32 * rewards.length) + return_data.size + 320 > (32 * rewards.length) + mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 + 351
        _349 = mem[(32 * rewards.length) + mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 + 320]
        require mem[(32 * rewards.length) + mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 + 320] <= test266151307()
        require (32 * mem[(32 * rewards.length) + mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 + 320]) + 32 >= 0 and (32 * rewards.length) + ceil32(return_data.size) + (32 * mem[(32 * rewards.length) + mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 + 320]) + 352 <= test266151307()
        mem[64] = (32 * rewards.length) + ceil32(return_data.size) + (32 * mem[(32 * rewards.length) + mem[(32 * rewards.length) + 320 len 4], address(this.address) << 64 + 320]) + 352
        mem[(32 * rewards.length) + ceil32(return_data.size) + 320] = _349
        require return_data.size >= _347 + (32 * _349) + 32
        mem[(32 * rewards.length) + ceil32(return_data.size) + 352 len 32 * _349] = mem[(32 * rewards.length) + _347 + 352 len 32 * _349]
        mem[mem[64]] = 0xdc01f60d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_88b869c5Address)
        staticcall sub_88b869c5Address.claimableRewards(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _680 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _682 = mem[_680]
        require mem[_680] <= test266151307()
        require _680 + return_data.size > _680 + mem[_680] + 31
        _683 = mem[_680 + mem[_680]]
        require mem[_680 + mem[_680]] <= test266151307()
        require (32 * mem[_680 + mem[_680]]) + 32 >= 0 and _680 + ceil32(return_data.size) + (32 * mem[_680 + mem[_680]]) + 32 <= test266151307()
        mem[64] = _680 + ceil32(return_data.size) + (32 * mem[_680 + mem[_680]]) + 32
        mem[_680 + ceil32(return_data.size)] = _683
        require return_data.size >= _682 + (64 * _683) + 32
        s = _680 + _682 + 32
        t = _680 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _683:
            require _680 + return_data.size - s >= 64
            _1004 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[s] == mem[s + 12 len 20]
            mem[_1004] = mem[s]
            mem[_1004 + 32] = mem[s + 32]
            mem[t] = _1004
            s = s + 64
            t = t + 32
            idx = idx + 1
            continue 
        require rewards.length + 1 <= test266151307()
        _1002 = mem[64]
        mem[mem[64]] = rewards.length + 1
        mem[64] = mem[64] + (32 * rewards.length + 1) + 32
        if not rewards.length + 1:
            require 1 < mem[(32 * rewards.length) + ceil32(return_data.size) + 320]
            require 0 < mem[(32 * rewards.length) + ceil32(return_data.size) + 320]
            if mem[(32 * rewards.length) + ceil32(return_data.size) + 384] + mem[(32 * rewards.length) + ceil32(return_data.size) + 352] < mem[(32 * rewards.length) + ceil32(return_data.size) + 352]:
                revert with 0, 'SafeMath: addition overflow'
            require 0 < mem[_1002]
            mem[_1002 + 32] = mem[(32 * rewards.length) + ceil32(return_data.size) + 384] + mem[(32 * rewards.length) + ceil32(return_data.size) + 352] / 2
            idx = 1
            while idx < rewards.length + 1:
                require idx < mem[_680 + ceil32(return_data.size)]
                require idx < mem[_1002]
                mem[(32 * idx) + _1002 + 32] = mem[mem[(32 * idx) + _680 + ceil32(return_data.size) + 32] + 32]
                idx = idx + 1
                continue 
            require mem[_1002]
            _1330 = mem[_1002 + 32]
            _1331 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1330
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = outputToNativeRoute.length
            mem[0] = 20
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
                   args mem[mem[64] + 4 len _1331 + (32 * outputToNativeRoute.length) + -mem[64] + 96]
            if not ext_call.success:
                idx = 0
                s = 0
                while idx < rewards.length:
                    require idx + 1 < mem[_1002]
                    if mem[(32 * idx + 1) + _1002 + 32] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < rewards.length
                    mem[0] = 15
                    if rewards[idx].field_0 == nativeAddress:
                        if idx + 1 < mem[_1002]:
                            idx = idx + 1
                            s = s + mem[(32 * idx + 1) + _1002 + 32]
                            continue 
                    else:
                        if idx + 1 < mem[_1002]:
                            _1918 = mem[(32 * idx + 1) + _1002 + 32]
                            if idx < stor21.length:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1918
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = uint256(stor21[idx])
                                mem[0] = sha3(21) + idx
                                t = 0
                                u = sha3(mem[0])
                                v = mem[64] + 100
                                while t < uint256(stor21[idx]):
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
                                _2155 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2169 = mem[_2155]
                                require mem[_2155] <= test266151307()
                                require _2155 + return_data.size > _2155 + mem[_2155] + 31
                                _2175 = mem[_2155 + mem[_2155]]
                                require mem[_2155 + mem[_2155]] <= test266151307()
                                require (32 * mem[_2155 + mem[_2155]]) + 32 >= 0 and _2155 + ceil32(return_data.size) + (32 * mem[_2155 + mem[_2155]]) + 32 <= test266151307()
                                mem[64] = _2155 + ceil32(return_data.size) + (32 * mem[_2155 + mem[_2155]]) + 32
                                mem[_2155 + ceil32(return_data.size)] = _2175
                                require return_data.size >= _2169 + (32 * _2175) + 32
                                u = _2155 + _2169 + 32
                                v = _2155 + ceil32(return_data.size) + 32
                                t = 0
                                while t < _2175:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t + 1
                                    continue 
                                if _2175 - 1 < _2175:
                                    idx = idx + 1
                                    s = s + mem[(32 * _2175 - 1) + _2155 + ceil32(return_data.size) + 32]
                                    continue 
                    revert
            else:
                _1619 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1626 = mem[_1619]
                require mem[_1619] <= test266151307()
                require _1619 + return_data.size > _1619 + mem[_1619] + 31
                _1632 = mem[_1619 + mem[_1619]]
                require mem[_1619 + mem[_1619]] <= test266151307()
                require (32 * mem[_1619 + mem[_1619]]) + 32 >= 0 and _1619 + ceil32(return_data.size) + (32 * mem[_1619 + mem[_1619]]) + 32 <= test266151307()
                mem[64] = _1619 + ceil32(return_data.size) + (32 * mem[_1619 + mem[_1619]]) + 32
                mem[_1619 + ceil32(return_data.size)] = _1632
                require return_data.size >= _1626 + (32 * _1632) + 32
                mem[_1619 + ceil32(return_data.size) + 32 len 32 * _1632] = mem[_1619 + _1626 + 32 len 32 * _1632]
                require _1632 - 1 < _1632
                idx = 0
                s = mem[(32 * mem[_1619 + ceil32(return_data.size)] - 1) + _1619 + ceil32(return_data.size) + 32]
                while idx < rewards.length:
                    require idx + 1 < mem[_1002]
                    if mem[(32 * idx + 1) + _1002 + 32] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < rewards.length
                    mem[0] = 15
                    if rewards[idx].field_0 == nativeAddress:
                        if idx + 1 < mem[_1002]:
                            idx = idx + 1
                            s = s + mem[(32 * idx + 1) + _1002 + 32]
                            continue 
                    else:
                        if idx + 1 < mem[_1002]:
                            _2157 = mem[(32 * idx + 1) + _1002 + 32]
                            if idx < stor21.length:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2157
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = uint256(stor21[idx])
                                mem[0] = sha3(21) + idx
                                t = 0
                                u = sha3(mem[0])
                                v = mem[64] + 100
                                while t < uint256(stor21[idx]):
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
                                _2363 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2375 = mem[_2363]
                                require mem[_2363] <= test266151307()
                                require _2363 + return_data.size > _2363 + mem[_2363] + 31
                                _2383 = mem[_2363 + mem[_2363]]
                                require mem[_2363 + mem[_2363]] <= test266151307()
                                require (32 * mem[_2363 + mem[_2363]]) + 32 >= 0 and _2363 + ceil32(return_data.size) + (32 * mem[_2363 + mem[_2363]]) + 32 <= test266151307()
                                mem[64] = _2363 + ceil32(return_data.size) + (32 * mem[_2363 + mem[_2363]]) + 32
                                mem[_2363 + ceil32(return_data.size)] = _2383
                                require return_data.size >= _2375 + (32 * _2383) + 32
                                u = _2363 + _2375 + 32
                                v = _2363 + ceil32(return_data.size) + 32
                                t = 0
                                while t < _2383:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t + 1
                                    continue 
                                if _2383 - 1 < _2383:
                                    idx = idx + 1
                                    s = s + mem[(32 * _2383 - 1) + _2363 + ceil32(return_data.size) + 32]
                                    continue 
                    revert
        else:
            mem[_1002 + 32 len 32 * rewards.length + 1] = call.data[calldata.size len 32 * rewards.length + 1]
            require 1 < mem[(32 * rewards.length) + ceil32(return_data.size) + 320]
            require 0 < mem[(32 * rewards.length) + ceil32(return_data.size) + 320]
            if mem[(32 * rewards.length) + ceil32(return_data.size) + 384] + mem[(32 * rewards.length) + ceil32(return_data.size) + 352] < mem[(32 * rewards.length) + ceil32(return_data.size) + 352]:
                revert with 0, 'SafeMath: addition overflow'
            require 0 < mem[_1002]
            mem[_1002 + 32] = mem[(32 * rewards.length) + ceil32(return_data.size) + 384] + mem[(32 * rewards.length) + ceil32(return_data.size) + 352] / 2
            idx = 1
            while idx < rewards.length + 1:
                require idx < mem[_680 + ceil32(return_data.size)]
                require idx < mem[_1002]
                mem[(32 * idx) + _1002 + 32] = mem[mem[(32 * idx) + _680 + ceil32(return_data.size) + 32] + 32]
                idx = idx + 1
                continue 
            require mem[_1002]
            _1332 = mem[_1002 + 32]
            _1333 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1332
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = outputToNativeRoute.length
            mem[0] = 20
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
                   args mem[mem[64] + 4 len _1333 + (32 * outputToNativeRoute.length) + -mem[64] + 96]
            if not ext_call.success:
                idx = 0
                s = 0
                while idx < rewards.length:
                    require idx + 1 < mem[_1002]
                    if mem[(32 * idx + 1) + _1002 + 32] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < rewards.length
                    mem[0] = 15
                    if rewards[idx].field_0 == nativeAddress:
                        if idx + 1 < mem[_1002]:
                            idx = idx + 1
                            s = s + mem[(32 * idx + 1) + _1002 + 32]
                            continue 
                    else:
                        if idx + 1 < mem[_1002]:
                            _1920 = mem[(32 * idx + 1) + _1002 + 32]
                            if idx < stor21.length:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1920
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = uint256(stor21[idx])
                                mem[0] = sha3(21) + idx
                                t = 0
                                u = sha3(mem[0])
                                v = mem[64] + 100
                                while t < uint256(stor21[idx]):
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
                                _2158 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2170 = mem[_2158]
                                require mem[_2158] <= test266151307()
                                require _2158 + return_data.size > _2158 + mem[_2158] + 31
                                _2176 = mem[_2158 + mem[_2158]]
                                require mem[_2158 + mem[_2158]] <= test266151307()
                                require (32 * mem[_2158 + mem[_2158]]) + 32 >= 0 and _2158 + ceil32(return_data.size) + (32 * mem[_2158 + mem[_2158]]) + 32 <= test266151307()
                                mem[64] = _2158 + ceil32(return_data.size) + (32 * mem[_2158 + mem[_2158]]) + 32
                                mem[_2158 + ceil32(return_data.size)] = _2176
                                require return_data.size >= _2170 + (32 * _2176) + 32
                                u = _2158 + _2170 + 32
                                v = _2158 + ceil32(return_data.size) + 32
                                t = 0
                                while t < _2176:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t + 1
                                    continue 
                                if _2176 - 1 < _2176:
                                    idx = idx + 1
                                    s = s + mem[(32 * _2176 - 1) + _2158 + ceil32(return_data.size) + 32]
                                    continue 
                    revert
            else:
                _1620 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1627 = mem[_1620]
                require mem[_1620] <= test266151307()
                require _1620 + return_data.size > _1620 + mem[_1620] + 31
                _1634 = mem[_1620 + mem[_1620]]
                require mem[_1620 + mem[_1620]] <= test266151307()
                require (32 * mem[_1620 + mem[_1620]]) + 32 >= 0 and _1620 + ceil32(return_data.size) + (32 * mem[_1620 + mem[_1620]]) + 32 <= test266151307()
                mem[64] = _1620 + ceil32(return_data.size) + (32 * mem[_1620 + mem[_1620]]) + 32
                mem[_1620 + ceil32(return_data.size)] = _1634
                require return_data.size >= _1627 + (32 * _1634) + 32
                mem[_1620 + ceil32(return_data.size) + 32 len 32 * _1634] = mem[_1620 + _1627 + 32 len 32 * _1634]
                require _1634 - 1 < _1634
                idx = 0
                s = mem[(32 * mem[_1620 + ceil32(return_data.size)] - 1) + _1620 + ceil32(return_data.size) + 32]
                while idx < rewards.length:
                    require idx + 1 < mem[_1002]
                    if mem[(32 * idx + 1) + _1002 + 32] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < rewards.length
                    mem[0] = 15
                    if rewards[idx].field_0 == nativeAddress:
                        if idx + 1 < mem[_1002]:
                            idx = idx + 1
                            s = s + mem[(32 * idx + 1) + _1002 + 32]
                            continue 
                    else:
                        if idx + 1 < mem[_1002]:
                            _2160 = mem[(32 * idx + 1) + _1002 + 32]
                            if idx < stor21.length:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2160
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = uint256(stor21[idx])
                                mem[0] = sha3(21) + idx
                                t = 0
                                u = sha3(mem[0])
                                v = mem[64] + 100
                                while t < uint256(stor21[idx]):
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
                                _2364 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2376 = mem[_2364]
                                require mem[_2364] <= test266151307()
                                require _2364 + return_data.size > _2364 + mem[_2364] + 31
                                _2384 = mem[_2364 + mem[_2364]]
                                require mem[_2364 + mem[_2364]] <= test266151307()
                                require (32 * mem[_2364 + mem[_2364]]) + 32 >= 0 and _2364 + ceil32(return_data.size) + (32 * mem[_2364 + mem[_2364]]) + 32 <= test266151307()
                                mem[64] = _2364 + ceil32(return_data.size) + (32 * mem[_2364 + mem[_2364]]) + 32
                                mem[_2364 + ceil32(return_data.size)] = _2384
                                require return_data.size >= _2376 + (32 * _2384) + 32
                                u = _2364 + _2376 + 32
                                v = _2364 + ceil32(return_data.size) + 32
                                t = 0
                                while t < _2384:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t + 1
                                    continue 
                                if _2384 - 1 < _2384:
                                    idx = idx + 1
                                    s = s + mem[(32 * _2384 - 1) + _2364 + ceil32(return_data.size) + 32]
                                    continue 
                    revert
    else:
        mem[64] = (32 * rewards.length) + 384
        mem[(32 * rewards.length) + 320] = 0
        mem[(32 * rewards.length) + 352] = 0
        mem[var11001] = (32 * rewards.length) + 320
        s = var11001
        idx = var11002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * rewards.length) + 320] = 0
            mem[(32 * rewards.length) + 352] = 0
            mem[s + 32] = (32 * rewards.length) + 320
            s = s + 32
            idx = idx - 1
            continue 
        _677 = mem[64]
        mem[mem[64]] = 0xe5b5349800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = 64
        _679 = mem[96]
        mem[mem[64] + 68] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < _679:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(incentivesControllerAddress)
        staticcall incentivesControllerAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _677 + (32 * _679) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1013 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1016 = mem[_1013]
        require mem[_1013] <= test266151307()
        require _1013 + return_data.size > _1013 + mem[_1013] + 31
        _1020 = mem[_1013 + mem[_1013]]
        require mem[_1013 + mem[_1013]] <= test266151307()
        require (32 * mem[_1013 + mem[_1013]]) + 32 >= 0 and _1013 + ceil32(return_data.size) + (32 * mem[_1013 + mem[_1013]]) + 32 <= test266151307()
        mem[64] = _1013 + ceil32(return_data.size) + (32 * mem[_1013 + mem[_1013]]) + 32
        mem[_1013 + ceil32(return_data.size)] = _1020
        require return_data.size >= _1016 + (32 * _1020) + 32
        mem[_1013 + ceil32(return_data.size) + 32 len 32 * _1020] = mem[_1013 + _1016 + 32 len 32 * _1020]
        mem[mem[64]] = 0xdc01f60d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_88b869c5Address)
        staticcall sub_88b869c5Address.claimableRewards(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1337 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1338 = mem[_1337]
        require mem[_1337] <= test266151307()
        require _1337 + return_data.size > _1337 + mem[_1337] + 31
        _1341 = mem[_1337 + mem[_1337]]
        require mem[_1337 + mem[_1337]] <= test266151307()
        require (32 * mem[_1337 + mem[_1337]]) + 32 >= 0 and _1337 + ceil32(return_data.size) + (32 * mem[_1337 + mem[_1337]]) + 32 <= test266151307()
        mem[64] = _1337 + ceil32(return_data.size) + (32 * mem[_1337 + mem[_1337]]) + 32
        mem[_1337 + ceil32(return_data.size)] = _1341
        require return_data.size >= _1338 + (64 * _1341) + 32
        s = _1337 + _1338 + 32
        t = _1337 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _1341:
            require _1337 + return_data.size - s >= 64
            _1615 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[s] == mem[s + 12 len 20]
            mem[_1615] = mem[s]
            mem[_1615 + 32] = mem[s + 32]
            mem[t] = _1615
            s = s + 64
            t = t + 32
            idx = idx + 1
            continue 
        require rewards.length + 1 <= test266151307()
        _1611 = mem[64]
        mem[mem[64]] = rewards.length + 1
        mem[64] = mem[64] + (32 * rewards.length + 1) + 32
        if not rewards.length + 1:
            require 1 < mem[_1013 + ceil32(return_data.size)]
            require 0 < mem[_1013 + ceil32(return_data.size)]
            if mem[_1013 + ceil32(return_data.size) + 64] + mem[_1013 + ceil32(return_data.size) + 32] < mem[_1013 + ceil32(return_data.size) + 32]:
                revert with 0, 'SafeMath: addition overflow'
            require 0 < mem[_1611]
            mem[_1611 + 32] = mem[_1013 + ceil32(return_data.size) + 64] + mem[_1013 + ceil32(return_data.size) + 32] / 2
            idx = 1
            while idx < rewards.length + 1:
                require idx < mem[_1337 + ceil32(return_data.size)]
                require idx < mem[_1611]
                mem[(32 * idx) + _1611 + 32] = mem[mem[(32 * idx) + _1337 + ceil32(return_data.size) + 32] + 32]
                idx = idx + 1
                continue 
            require mem[_1611]
            _1897 = mem[_1611 + 32]
            _1898 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1897
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = outputToNativeRoute.length
            mem[0] = 20
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
                   args mem[mem[64] + 4 len _1898 + (32 * outputToNativeRoute.length) + -mem[64] + 96]
            if not ext_call.success:
                idx = 0
                s = 0
                while idx < rewards.length:
                    require idx + 1 < mem[_1611]
                    if mem[(32 * idx + 1) + _1611 + 32] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < rewards.length
                    mem[0] = 15
                    if rewards[idx].field_0 == nativeAddress:
                        if idx + 1 < mem[_1611]:
                            idx = idx + 1
                            s = s + mem[(32 * idx + 1) + _1611 + 32]
                            continue 
                    else:
                        if idx + 1 < mem[_1611]:
                            _2366 = mem[(32 * idx + 1) + _1611 + 32]
                            if idx < stor21.length:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2366
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = uint256(stor21[idx])
                                mem[0] = sha3(21) + idx
                                t = 0
                                u = sha3(mem[0])
                                v = mem[64] + 100
                                while t < uint256(stor21[idx]):
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
                                _2505 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2517 = mem[_2505]
                                require mem[_2505] <= test266151307()
                                require _2505 + return_data.size > _2505 + mem[_2505] + 31
                                _2521 = mem[_2505 + mem[_2505]]
                                require mem[_2505 + mem[_2505]] <= test266151307()
                                require (32 * mem[_2505 + mem[_2505]]) + 32 >= 0 and _2505 + ceil32(return_data.size) + (32 * mem[_2505 + mem[_2505]]) + 32 <= test266151307()
                                mem[64] = _2505 + ceil32(return_data.size) + (32 * mem[_2505 + mem[_2505]]) + 32
                                mem[_2505 + ceil32(return_data.size)] = _2521
                                require return_data.size >= _2517 + (32 * _2521) + 32
                                u = _2505 + _2517 + 32
                                v = _2505 + ceil32(return_data.size) + 32
                                t = 0
                                while t < _2521:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t + 1
                                    continue 
                                if _2521 - 1 < _2521:
                                    idx = idx + 1
                                    s = s + mem[(32 * _2521 - 1) + _2505 + ceil32(return_data.size) + 32]
                                    continue 
                    revert
            else:
                _2161 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2171 = mem[_2161]
                require mem[_2161] <= test266151307()
                require _2161 + return_data.size > _2161 + mem[_2161] + 31
                _2178 = mem[_2161 + mem[_2161]]
                require mem[_2161 + mem[_2161]] <= test266151307()
                require (32 * mem[_2161 + mem[_2161]]) + 32 >= 0 and _2161 + ceil32(return_data.size) + (32 * mem[_2161 + mem[_2161]]) + 32 <= test266151307()
                mem[64] = _2161 + ceil32(return_data.size) + (32 * mem[_2161 + mem[_2161]]) + 32
                mem[_2161 + ceil32(return_data.size)] = _2178
                require return_data.size >= _2171 + (32 * _2178) + 32
                mem[_2161 + ceil32(return_data.size) + 32 len 32 * _2178] = mem[_2161 + _2171 + 32 len 32 * _2178]
                require _2178 - 1 < _2178
                idx = 0
                s = mem[(32 * mem[_2161 + ceil32(return_data.size)] - 1) + _2161 + ceil32(return_data.size) + 32]
                while idx < rewards.length:
                    require idx + 1 < mem[_1611]
                    if mem[(32 * idx + 1) + _1611 + 32] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < rewards.length
                    mem[0] = 15
                    if rewards[idx].field_0 == nativeAddress:
                        if idx + 1 < mem[_1611]:
                            idx = idx + 1
                            s = s + mem[(32 * idx + 1) + _1611 + 32]
                            continue 
                    else:
                        if idx + 1 < mem[_1611]:
                            _2507 = mem[(32 * idx + 1) + _1611 + 32]
                            if idx < stor21.length:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2507
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = uint256(stor21[idx])
                                mem[0] = sha3(21) + idx
                                t = 0
                                u = sha3(mem[0])
                                v = mem[64] + 100
                                while t < uint256(stor21[idx]):
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
                                _2577 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2579 = mem[_2577]
                                require mem[_2577] <= test266151307()
                                require _2577 + return_data.size > _2577 + mem[_2577] + 31
                                _2581 = mem[_2577 + mem[_2577]]
                                require mem[_2577 + mem[_2577]] <= test266151307()
                                require (32 * mem[_2577 + mem[_2577]]) + 32 >= 0 and _2577 + ceil32(return_data.size) + (32 * mem[_2577 + mem[_2577]]) + 32 <= test266151307()
                                mem[64] = _2577 + ceil32(return_data.size) + (32 * mem[_2577 + mem[_2577]]) + 32
                                mem[_2577 + ceil32(return_data.size)] = _2581
                                require return_data.size >= _2579 + (32 * _2581) + 32
                                u = _2577 + _2579 + 32
                                v = _2577 + ceil32(return_data.size) + 32
                                t = 0
                                while t < _2581:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t + 1
                                    continue 
                                if _2581 - 1 < _2581:
                                    idx = idx + 1
                                    s = s + mem[(32 * _2581 - 1) + _2577 + ceil32(return_data.size) + 32]
                                    continue 
                    revert
        else:
            mem[_1611 + 32 len 32 * rewards.length + 1] = call.data[calldata.size len 32 * rewards.length + 1]
            require 1 < mem[_1013 + ceil32(return_data.size)]
            require 0 < mem[_1013 + ceil32(return_data.size)]
            if mem[_1013 + ceil32(return_data.size) + 64] + mem[_1013 + ceil32(return_data.size) + 32] < mem[_1013 + ceil32(return_data.size) + 32]:
                revert with 0, 'SafeMath: addition overflow'
            require 0 < mem[_1611]
            mem[_1611 + 32] = mem[_1013 + ceil32(return_data.size) + 64] + mem[_1013 + ceil32(return_data.size) + 32] / 2
            idx = 1
            while idx < rewards.length + 1:
                require idx < mem[_1337 + ceil32(return_data.size)]
                require idx < mem[_1611]
                mem[(32 * idx) + _1611 + 32] = mem[mem[(32 * idx) + _1337 + ceil32(return_data.size) + 32] + 32]
                idx = idx + 1
                continue 
            require mem[_1611]
            _1899 = mem[_1611 + 32]
            _1900 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1899
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = outputToNativeRoute.length
            mem[0] = 20
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
                   args mem[mem[64] + 4 len _1900 + (32 * outputToNativeRoute.length) + -mem[64] + 96]
            if not ext_call.success:
                idx = 0
                s = 0
                while idx < rewards.length:
                    require idx + 1 < mem[_1611]
                    if mem[(32 * idx + 1) + _1611 + 32] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < rewards.length
                    mem[0] = 15
                    if rewards[idx].field_0 == nativeAddress:
                        if idx + 1 < mem[_1611]:
                            idx = idx + 1
                            s = s + mem[(32 * idx + 1) + _1611 + 32]
                            continue 
                    else:
                        if idx + 1 < mem[_1611]:
                            _2368 = mem[(32 * idx + 1) + _1611 + 32]
                            if idx < stor21.length:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2368
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = uint256(stor21[idx])
                                mem[0] = sha3(21) + idx
                                t = 0
                                u = sha3(mem[0])
                                v = mem[64] + 100
                                while t < uint256(stor21[idx]):
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
                                _2508 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2518 = mem[_2508]
                                require mem[_2508] <= test266151307()
                                require _2508 + return_data.size > _2508 + mem[_2508] + 31
                                _2522 = mem[_2508 + mem[_2508]]
                                require mem[_2508 + mem[_2508]] <= test266151307()
                                require (32 * mem[_2508 + mem[_2508]]) + 32 >= 0 and _2508 + ceil32(return_data.size) + (32 * mem[_2508 + mem[_2508]]) + 32 <= test266151307()
                                mem[64] = _2508 + ceil32(return_data.size) + (32 * mem[_2508 + mem[_2508]]) + 32
                                mem[_2508 + ceil32(return_data.size)] = _2522
                                require return_data.size >= _2518 + (32 * _2522) + 32
                                u = _2508 + _2518 + 32
                                v = _2508 + ceil32(return_data.size) + 32
                                t = 0
                                while t < _2522:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t + 1
                                    continue 
                                if _2522 - 1 < _2522:
                                    idx = idx + 1
                                    s = s + mem[(32 * _2522 - 1) + _2508 + ceil32(return_data.size) + 32]
                                    continue 
                    revert
            else:
                _2162 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2172 = mem[_2162]
                require mem[_2162] <= test266151307()
                require _2162 + return_data.size > _2162 + mem[_2162] + 31
                _2180 = mem[_2162 + mem[_2162]]
                require mem[_2162 + mem[_2162]] <= test266151307()
                require (32 * mem[_2162 + mem[_2162]]) + 32 >= 0 and _2162 + ceil32(return_data.size) + (32 * mem[_2162 + mem[_2162]]) + 32 <= test266151307()
                mem[64] = _2162 + ceil32(return_data.size) + (32 * mem[_2162 + mem[_2162]]) + 32
                mem[_2162 + ceil32(return_data.size)] = _2180
                require return_data.size >= _2172 + (32 * _2180) + 32
                mem[_2162 + ceil32(return_data.size) + 32 len 32 * _2180] = mem[_2162 + _2172 + 32 len 32 * _2180]
                require _2180 - 1 < _2180
                idx = 0
                s = mem[(32 * mem[_2162 + ceil32(return_data.size)] - 1) + _2162 + ceil32(return_data.size) + 32]
                while idx < rewards.length:
                    require idx + 1 < mem[_1611]
                    if mem[(32 * idx + 1) + _1611 + 32] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < rewards.length
                    mem[0] = 15
                    if rewards[idx].field_0 == nativeAddress:
                        if idx + 1 < mem[_1611]:
                            idx = idx + 1
                            s = s + mem[(32 * idx + 1) + _1611 + 32]
                            continue 
                    else:
                        if idx + 1 < mem[_1611]:
                            _2510 = mem[(32 * idx + 1) + _1611 + 32]
                            if idx < stor21.length:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2510
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = uint256(stor21[idx])
                                mem[0] = sha3(21) + idx
                                t = 0
                                u = sha3(mem[0])
                                v = mem[64] + 100
                                while t < uint256(stor21[idx]):
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
                                _2578 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2580 = mem[_2578]
                                require mem[_2578] <= test266151307()
                                require _2578 + return_data.size > _2578 + mem[_2578] + 31
                                _2582 = mem[_2578 + mem[_2578]]
                                require mem[_2578 + mem[_2578]] <= test266151307()
                                require (32 * mem[_2578 + mem[_2578]]) + 32 >= 0 and _2578 + ceil32(return_data.size) + (32 * mem[_2578 + mem[_2578]]) + 32 <= test266151307()
                                mem[64] = _2578 + ceil32(return_data.size) + (32 * mem[_2578 + mem[_2578]]) + 32
                                mem[_2578 + ceil32(return_data.size)] = _2582
                                require return_data.size >= _2580 + (32 * _2582) + 32
                                u = _2578 + _2580 + 32
                                v = _2578 + ceil32(return_data.size) + 32
                                t = 0
                                while t < _2582:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t + 1
                                    continue 
                                if _2582 - 1 < _2582:
                                    idx = idx + 1
                                    s = s + mem[(32 * _2582 - 1) + _2578 + ceil32(return_data.size) + 32]
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

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
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
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - reserves >= arg1:
        if ext_call.return_data[0] - reserves <= arg1:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - reserves
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves, 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves, 0) << 288)
            else:
                if stor0:
                    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - reserves
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves, 0) << 288)
                else:
                    if not ext_call.return_data[0] - reserves:
                        if 0 > ext_call.return_data[0] - reserves:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - reserves
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves, 0) << 288)
                    else:
                        if (ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / ext_call.return_data[0] - reserves != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000 > ext_call.return_data[0] - reserves:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000)
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000), 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000), 0) << 288)
        else:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = arg1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
            else:
                if stor0:
                    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = arg1
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                    else:
                        if withdrawalFee * arg1 / arg1 != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = arg1 - (withdrawalFee * arg1 / 10000)
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args wantAddress, this.address
            mem[ceil32(return_data.size) + 260 len 288] = ext_call.return_data[0 len 288]
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
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
            if not stor0:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if reserves > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - reserves >= minLeverage:
                    idx = 0
                    s = mem[(4 * ceil32(return_data.size)) + 260] - reserves
                    while idx < borrowDepth:
                        mem[(6 * ceil32(return_data.size)) + 260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 264] = wantAddress
                        mem[(6 * ceil32(return_data.size)) + 296] = s
                        mem[(6 * ceil32(return_data.size)) + 328] = this.address
                        mem[(6 * ceil32(return_data.size)) + 360] = 0
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
                            mem[(6 * ceil32(return_data.size)) + 260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 264] = wantAddress
                            mem[(6 * ceil32(return_data.size)) + 296] = borrowRate * s / 100
                            mem[(6 * ceil32(return_data.size)) + 328] = 2
                            mem[(6 * ceil32(return_data.size)) + 360] = 0
                            mem[(6 * ceil32(return_data.size)) + 392] = this.address
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
            mem[ceil32(return_data.size) + 260] = return_data.size
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args wantAddress, this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 288] = ext_call.return_data[0 len 288]
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
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
            if not stor0:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if reserves > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - reserves >= minLeverage:
                    idx = 0
                    s = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] - reserves
                    while idx < borrowDepth:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = wantAddress
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = s
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
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
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = wantAddress
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = borrowRate * s / 100
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 2
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
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
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args wantAddress, this.address
        mem[(2 * ceil32(return_data.size)) + 96 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 288
        require ext_call.return_data[224] == ext_call.return_data[251 len 5]
        require ext_call.return_data[256] == bool(ext_call.return_data[256])
        s = mem[(2 * ceil32(return_data.size)) + 160]
        t = mem[(2 * ceil32(return_data.size)) + 96]
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
            _14415 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _14483 = mem[_14415]
            _14485 = mem[_14415 + 64]
            require mem[_14415 + 224] == mem[_14415 + 251 len 5]
            require mem[_14415 + 256] == bool(mem[_14415 + 256])
            if not mem[_14415 + 64]:
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                if 0 / borrowRate > mem[_14415]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[mem[64] + 36] = mem[_14415] - (0 / borrowRate)
                mem[mem[64] + 68] = this.address
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, _14483 - (0 / borrowRate), this.address
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
                _16071 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = _14485
                t = _14483
                u = mem[_16071]
                continue 
            if 100 * mem[_14415 + 64] / mem[_14415 + 64] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 100 * mem[_14415 + 64] / borrowRate > mem[_14415]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 36] = mem[_14415] - (100 * mem[_14415 + 64] / borrowRate)
            mem[mem[64] + 68] = this.address
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, _14483 - (100 * _14485 / borrowRate), this.address
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
            _16120 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = _14485
            t = _14483
            u = mem[_16120]
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
                _14261 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14361 = mem[_14261]
                if mem[_14261] <= arg1:
                    if tx.origin == owner:
                        _14591 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = _14361
                        _14627 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_14591 + 100] = 32
                        mem[_14591 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        _15127 = mem[_14627]
                        mem[_14591 + 164 len ceil32(mem[_14627])] = mem[_14627 + 32 len ceil32(mem[_14627])]
                        if ceil32(_15127) > _15127:
                            mem[_14591 + _15127 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_14591 + 168 len _15127 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_14591 + 164 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_14591 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_14591 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_14591 + (2 * ceil32(return_data.size)) + 164] - reserves
                                    while idx < borrowDepth:
                                        mem[_14591 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_14591 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                        mem[_14591 + (4 * ceil32(return_data.size)) + 200] = s
                                        mem[_14591 + (4 * ceil32(return_data.size)) + 232] = this.address
                                        mem[_14591 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                            mem[_14591 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_14591 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_14591 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                            mem[_14591 + (4 * ceil32(return_data.size)) + 232] = 2
                                            mem[_14591 + (4 * ceil32(return_data.size)) + 264] = 0
                                            mem[_14591 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                            mem[_14591 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_14591 + 196] == bool(mem[_14591 + 196])
                                if not mem[_14591 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_14591 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_14591 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_14591 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_14591 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                    while idx < borrowDepth:
                                        mem[_14591 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_14591 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                        mem[_14591 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                        mem[_14591 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                        mem[_14591 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                            mem[_14591 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_14591 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_14591 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                            mem[_14591 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                            mem[_14591 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                            mem[_14591 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                        if stor0:
                            _14663 = mem[64]
                            mem[mem[64] + 36] = address(vaultAddress)
                            mem[mem[64] + 68] = _14361
                            _14733 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_14663 + 100] = 32
                            mem[_14663 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _15207 = mem[_14733]
                            mem[_14663 + 164 len ceil32(mem[_14733])] = mem[_14733 + 32 len ceil32(mem[_14733])]
                            if ceil32(_15207) > _15207:
                                mem[_14663 + _15207 + 164] = 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args mem[_14663 + 168 len _15207 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_14663 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_14663 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_14663 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_14663 + (2 * ceil32(return_data.size)) + 164] - reserves
                                        while idx < borrowDepth:
                                            mem[_14663 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_14663 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_14663 + (4 * ceil32(return_data.size)) + 200] = s
                                            mem[_14663 + (4 * ceil32(return_data.size)) + 232] = this.address
                                            mem[_14663 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                mem[_14663 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_14663 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_14663 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                mem[_14663 + (4 * ceil32(return_data.size)) + 232] = 2
                                                mem[_14663 + (4 * ceil32(return_data.size)) + 264] = 0
                                                mem[_14663 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                mem[_14663 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14663 + 196] == bool(mem[_14663 + 196])
                                    if not mem[_14663 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_14663 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_14663 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_14663 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_14663 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                        while idx < borrowDepth:
                                            mem[_14663 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_14663 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_14663 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                            mem[_14663 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                            mem[_14663 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                mem[_14663 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_14663 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_14663 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                mem[_14663 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                mem[_14663 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                mem[_14663 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                            if not mem[_14261]:
                                if 0 > mem[_14261]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _15566 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = _14361
                                _15626 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_15566 + 100] = 32
                                mem[_15566 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _16041 = mem[_15626]
                                mem[_15566 + 164 len ceil32(mem[_15626])] = mem[_15626 + 32 len ceil32(mem[_15626])]
                                if ceil32(_16041) > _16041:
                                    mem[_15566 + _16041 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_15566 + 168 len _16041 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15566 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15566 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15566 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15566 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_15566 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15566 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15566 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_15566 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_15566 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_15566 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15566 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_15566 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_15566 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_15566 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_15566 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_15566 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_15566 + 196] == bool(mem[_15566 + 196])
                                        if not mem[_15566 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15566 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15566 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15566 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15566 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_15566 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15566 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15566 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_15566 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_15566 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_15566 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15566 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_15566 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_15566 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_15566 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_15566 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                                if withdrawalFee * mem[_14261] / mem[_14261] != withdrawalFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if withdrawalFee * mem[_14261] / 10000 > mem[_14261]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _15593 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = _14361 - (withdrawalFee * _14361 / 10000)
                                _15659 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_15593 + 100] = 32
                                mem[_15593 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _16090 = mem[_15659]
                                mem[_15593 + 164 len ceil32(mem[_15659])] = mem[_15659 + 32 len ceil32(mem[_15659])]
                                if ceil32(_16090) > _16090:
                                    mem[_15593 + _16090 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_15593 + 168 len _16090 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15593 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15593 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15593 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15593 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_15593 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15593 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15593 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_15593 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_15593 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_15593 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15593 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_15593 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_15593 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_15593 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_15593 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_15593 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_15593 + 196] == bool(mem[_15593 + 196])
                                        if not mem[_15593 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15593 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15593 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15593 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15593 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_15593 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15593 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15593 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_15593 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_15593 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_15593 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15593 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_15593 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_15593 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_15593 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_15593 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                    if tx.origin == owner:
                        _14610 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = arg1
                        _14664 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_14610 + 100] = 32
                        mem[_14610 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        _15154 = mem[_14664]
                        mem[_14610 + 164 len ceil32(mem[_14664])] = mem[_14664 + 32 len ceil32(mem[_14664])]
                        if ceil32(_15154) > _15154:
                            mem[_14610 + _15154 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_14610 + 168 len _15154 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_14610 + 164 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_14610 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_14610 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_14610 + (2 * ceil32(return_data.size)) + 164] - reserves
                                    while idx < borrowDepth:
                                        mem[_14610 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_14610 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                        mem[_14610 + (4 * ceil32(return_data.size)) + 200] = s
                                        mem[_14610 + (4 * ceil32(return_data.size)) + 232] = this.address
                                        mem[_14610 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                            mem[_14610 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_14610 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_14610 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                            mem[_14610 + (4 * ceil32(return_data.size)) + 232] = 2
                                            mem[_14610 + (4 * ceil32(return_data.size)) + 264] = 0
                                            mem[_14610 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                            mem[_14610 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_14610 + 196] == bool(mem[_14610 + 196])
                                if not mem[_14610 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_14610 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_14610 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_14610 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_14610 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                    while idx < borrowDepth:
                                        mem[_14610 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_14610 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                        mem[_14610 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                        mem[_14610 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                        mem[_14610 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                            mem[_14610 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_14610 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_14610 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                            mem[_14610 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                            mem[_14610 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                            mem[_14610 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                        if stor0:
                            _14699 = mem[64]
                            mem[mem[64] + 36] = address(vaultAddress)
                            mem[mem[64] + 68] = arg1
                            _14770 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_14699 + 100] = 32
                            mem[_14699 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _15348 = mem[_14770]
                            mem[_14699 + 164 len ceil32(mem[_14770])] = mem[_14770 + 32 len ceil32(mem[_14770])]
                            if ceil32(_15348) > _15348:
                                mem[_14699 + _15348 + 164] = 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args mem[_14699 + 168 len _15348 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_14699 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_14699 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_14699 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_14699 + (2 * ceil32(return_data.size)) + 164] - reserves
                                        while idx < borrowDepth:
                                            mem[_14699 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_14699 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_14699 + (4 * ceil32(return_data.size)) + 200] = s
                                            mem[_14699 + (4 * ceil32(return_data.size)) + 232] = this.address
                                            mem[_14699 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                mem[_14699 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_14699 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_14699 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                mem[_14699 + (4 * ceil32(return_data.size)) + 232] = 2
                                                mem[_14699 + (4 * ceil32(return_data.size)) + 264] = 0
                                                mem[_14699 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                mem[_14699 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14699 + 196] == bool(mem[_14699 + 196])
                                    if not mem[_14699 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_14699 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_14699 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_14699 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_14699 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                        while idx < borrowDepth:
                                            mem[_14699 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_14699 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_14699 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                            mem[_14699 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                            mem[_14699 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                mem[_14699 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_14699 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_14699 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                mem[_14699 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                mem[_14699 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                mem[_14699 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                            if not arg1:
                                if 0 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _15596 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = arg1
                                _15663 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_15596 + 100] = 32
                                mem[_15596 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _16102 = mem[_15663]
                                mem[_15596 + 164 len ceil32(mem[_15663])] = mem[_15663 + 32 len ceil32(mem[_15663])]
                                if ceil32(_16102) > _16102:
                                    mem[_15596 + _16102 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_15596 + 168 len _16102 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15596 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15596 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15596 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15596 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_15596 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15596 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15596 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_15596 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_15596 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_15596 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15596 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_15596 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_15596 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_15596 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_15596 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_15596 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_15596 + 196] == bool(mem[_15596 + 196])
                                        if not mem[_15596 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15596 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15596 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15596 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15596 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_15596 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15596 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15596 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_15596 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_15596 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_15596 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15596 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_15596 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_15596 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_15596 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_15596 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                                if withdrawalFee * arg1 / arg1 != withdrawalFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if withdrawalFee * arg1 / 10000 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _15630 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = arg1 - (withdrawalFee * arg1 / 10000)
                                _15698 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_15630 + 100] = 32
                                mem[_15630 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _16148 = mem[_15698]
                                mem[_15630 + 164 len ceil32(mem[_15698])] = mem[_15698 + 32 len ceil32(mem[_15698])]
                                if ceil32(_16148) > _16148:
                                    mem[_15630 + _16148 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_15630 + 168 len _16148 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15630 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15630 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15630 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15630 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_15630 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15630 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15630 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_15630 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_15630 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_15630 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15630 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_15630 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_15630 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_15630 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_15630 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_15630 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_15630 + 196] == bool(mem[_15630 + 196])
                                        if not mem[_15630 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15630 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15630 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15630 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15630 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_15630 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15630 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15630 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_15630 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_15630 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_15630 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15630 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_15630 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_15630 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_15630 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_15630 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14523 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14592 = mem[_14523]
                if mem[_14523] <= arg1:
                    if tx.origin == owner:
                        _15067 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = _14592
                        _15131 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_15067 + 100] = 32
                        mem[_15067 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        _15631 = mem[_15131]
                        mem[_15067 + 164 len ceil32(mem[_15131])] = mem[_15131 + 32 len ceil32(mem[_15131])]
                        if ceil32(_15631) > _15631:
                            mem[_15067 + _15631 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_15067 + 168 len _15631 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_15067 + 164 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_15067 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_15067 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_15067 + (2 * ceil32(return_data.size)) + 164] - reserves
                                    while idx < borrowDepth:
                                        mem[_15067 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_15067 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                        mem[_15067 + (4 * ceil32(return_data.size)) + 200] = s
                                        mem[_15067 + (4 * ceil32(return_data.size)) + 232] = this.address
                                        mem[_15067 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                            mem[_15067 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_15067 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_15067 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                            mem[_15067 + (4 * ceil32(return_data.size)) + 232] = 2
                                            mem[_15067 + (4 * ceil32(return_data.size)) + 264] = 0
                                            mem[_15067 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                            mem[_15067 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_15067 + 196] == bool(mem[_15067 + 196])
                                if not mem[_15067 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_15067 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_15067 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_15067 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_15067 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                    while idx < borrowDepth:
                                        mem[_15067 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_15067 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                        mem[_15067 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                        mem[_15067 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                        mem[_15067 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                            mem[_15067 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_15067 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_15067 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                            mem[_15067 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                            mem[_15067 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                            mem[_15067 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                        if stor0:
                            _15156 = mem[64]
                            mem[mem[64] + 36] = address(vaultAddress)
                            mem[mem[64] + 68] = _14592
                            _15212 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_15156 + 100] = 32
                            mem[_15156 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _15743 = mem[_15212]
                            mem[_15156 + 164 len ceil32(mem[_15212])] = mem[_15212 + 32 len ceil32(mem[_15212])]
                            if ceil32(_15743) > _15743:
                                mem[_15156 + _15743 + 164] = 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args mem[_15156 + 168 len _15743 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_15156 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_15156 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_15156 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_15156 + (2 * ceil32(return_data.size)) + 164] - reserves
                                        while idx < borrowDepth:
                                            mem[_15156 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_15156 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_15156 + (4 * ceil32(return_data.size)) + 200] = s
                                            mem[_15156 + (4 * ceil32(return_data.size)) + 232] = this.address
                                            mem[_15156 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                mem[_15156 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_15156 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15156 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                mem[_15156 + (4 * ceil32(return_data.size)) + 232] = 2
                                                mem[_15156 + (4 * ceil32(return_data.size)) + 264] = 0
                                                mem[_15156 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                mem[_15156 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_15156 + 196] == bool(mem[_15156 + 196])
                                    if not mem[_15156 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_15156 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_15156 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_15156 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_15156 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                        while idx < borrowDepth:
                                            mem[_15156 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_15156 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_15156 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                            mem[_15156 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                            mem[_15156 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                mem[_15156 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_15156 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15156 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                mem[_15156 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                mem[_15156 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                mem[_15156 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                            if not mem[_14523]:
                                if 0 > mem[_14523]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _15920 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = _14592
                                _16056 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_15920 + 100] = 32
                                mem[_15920 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _16659 = mem[_16056]
                                mem[_15920 + 164 len ceil32(mem[_16056])] = mem[_16056 + 32 len ceil32(mem[_16056])]
                                if ceil32(_16659) > _16659:
                                    mem[_15920 + _16659 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_15920 + 168 len _16659 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15920 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15920 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15920 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15920 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_15920 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15920 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15920 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_15920 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_15920 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_15920 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15920 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_15920 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_15920 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_15920 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_15920 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_15920 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_15920 + 196] == bool(mem[_15920 + 196])
                                        if not mem[_15920 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15920 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15920 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15920 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15920 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_15920 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15920 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15920 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_15920 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_15920 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_15920 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15920 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_15920 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_15920 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_15920 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_15920 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                                if withdrawalFee * mem[_14523] / mem[_14523] != withdrawalFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if withdrawalFee * mem[_14523] / 10000 > mem[_14523]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _15983 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = _14592 - (withdrawalFee * _14592 / 10000)
                                _16104 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_15983 + 100] = 32
                                mem[_15983 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _16721 = mem[_16104]
                                mem[_15983 + 164 len ceil32(mem[_16104])] = mem[_16104 + 32 len ceil32(mem[_16104])]
                                if ceil32(_16721) > _16721:
                                    mem[_15983 + _16721 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_15983 + 168 len _16721 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15983 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15983 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15983 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15983 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_15983 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15983 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15983 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_15983 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_15983 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_15983 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15983 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_15983 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_15983 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_15983 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_15983 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_15983 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_15983 + 196] == bool(mem[_15983 + 196])
                                        if not mem[_15983 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15983 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15983 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15983 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15983 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_15983 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15983 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15983 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_15983 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_15983 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_15983 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15983 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_15983 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_15983 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_15983 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_15983 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                    if tx.origin == owner:
                        _15107 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = arg1
                        _15157 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_15107 + 100] = 32
                        mem[_15107 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        _15667 = mem[_15157]
                        mem[_15107 + 164 len ceil32(mem[_15157])] = mem[_15157 + 32 len ceil32(mem[_15157])]
                        if ceil32(_15667) > _15667:
                            mem[_15107 + _15667 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_15107 + 168 len _15667 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_15107 + 164 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_15107 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_15107 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_15107 + (2 * ceil32(return_data.size)) + 164] - reserves
                                    while idx < borrowDepth:
                                        mem[_15107 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_15107 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                        mem[_15107 + (4 * ceil32(return_data.size)) + 200] = s
                                        mem[_15107 + (4 * ceil32(return_data.size)) + 232] = this.address
                                        mem[_15107 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                            mem[_15107 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_15107 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_15107 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                            mem[_15107 + (4 * ceil32(return_data.size)) + 232] = 2
                                            mem[_15107 + (4 * ceil32(return_data.size)) + 264] = 0
                                            mem[_15107 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                            mem[_15107 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_15107 + 196] == bool(mem[_15107 + 196])
                                if not mem[_15107 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_15107 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_15107 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_15107 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_15107 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                    while idx < borrowDepth:
                                        mem[_15107 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_15107 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                        mem[_15107 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                        mem[_15107 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                        mem[_15107 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                            mem[_15107 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_15107 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_15107 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                            mem[_15107 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                            mem[_15107 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                            mem[_15107 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                        if stor0:
                            _15186 = mem[64]
                            mem[mem[64] + 36] = address(vaultAddress)
                            mem[mem[64] + 68] = arg1
                            _15353 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_15186 + 100] = 32
                            mem[_15186 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _15806 = mem[_15353]
                            mem[_15186 + 164 len ceil32(mem[_15353])] = mem[_15353 + 32 len ceil32(mem[_15353])]
                            if ceil32(_15806) > _15806:
                                mem[_15186 + _15806 + 164] = 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args mem[_15186 + 168 len _15806 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_15186 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_15186 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_15186 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_15186 + (2 * ceil32(return_data.size)) + 164] - reserves
                                        while idx < borrowDepth:
                                            mem[_15186 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_15186 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_15186 + (4 * ceil32(return_data.size)) + 200] = s
                                            mem[_15186 + (4 * ceil32(return_data.size)) + 232] = this.address
                                            mem[_15186 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                mem[_15186 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_15186 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15186 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                mem[_15186 + (4 * ceil32(return_data.size)) + 232] = 2
                                                mem[_15186 + (4 * ceil32(return_data.size)) + 264] = 0
                                                mem[_15186 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                mem[_15186 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_15186 + 196] == bool(mem[_15186 + 196])
                                    if not mem[_15186 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_15186 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_15186 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_15186 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_15186 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                        while idx < borrowDepth:
                                            mem[_15186 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_15186 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_15186 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                            mem[_15186 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                            mem[_15186 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                mem[_15186 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_15186 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15186 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                mem[_15186 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                mem[_15186 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                mem[_15186 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                            if not arg1:
                                if 0 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _15986 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = arg1
                                _16108 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_15986 + 100] = 32
                                mem[_15986 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _16733 = mem[_16108]
                                mem[_15986 + 164 len ceil32(mem[_16108])] = mem[_16108 + 32 len ceil32(mem[_16108])]
                                if ceil32(_16733) > _16733:
                                    mem[_15986 + _16733 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_15986 + 168 len _16733 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15986 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15986 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15986 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15986 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_15986 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15986 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15986 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_15986 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_15986 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_15986 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15986 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_15986 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_15986 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_15986 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_15986 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_15986 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_15986 + 196] == bool(mem[_15986 + 196])
                                        if not mem[_15986 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15986 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15986 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15986 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15986 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_15986 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15986 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15986 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_15986 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_15986 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_15986 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15986 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_15986 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_15986 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_15986 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_15986 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                                if withdrawalFee * arg1 / arg1 != withdrawalFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if withdrawalFee * arg1 / 10000 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _16060 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = arg1 - (withdrawalFee * arg1 / 10000)
                                _16156 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_16060 + 100] = 32
                                mem[_16060 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _16800 = mem[_16156]
                                mem[_16060 + 164 len ceil32(mem[_16156])] = mem[_16156 + 32 len ceil32(mem[_16156])]
                                if ceil32(_16800) > _16800:
                                    mem[_16060 + _16800 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_16060 + 168 len _16800 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_16060 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_16060 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_16060 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_16060 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_16060 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_16060 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_16060 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_16060 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_16060 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_16060 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_16060 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_16060 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_16060 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_16060 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_16060 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_16060 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_16060 + 196] == bool(mem[_16060 + 196])
                                        if not mem[_16060 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_16060 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_16060 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_16060 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_16060 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_16060 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_16060 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_16060 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_16060 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_16060 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_16060 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_16060 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_16060 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_16060 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_16060 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_16060 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14524 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14593 = mem[_14524]
                if mem[_14524] <= arg1:
                    if tx.origin == owner:
                        _15068 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = _14593
                        _15133 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_15068 + 100] = 32
                        mem[_15068 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        _15635 = mem[_15133]
                        mem[_15068 + 164 len ceil32(mem[_15133])] = mem[_15133 + 32 len ceil32(mem[_15133])]
                        if ceil32(_15635) > _15635:
                            mem[_15068 + _15635 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_15068 + 168 len _15635 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_15068 + 164 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_15068 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_15068 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_15068 + (2 * ceil32(return_data.size)) + 164] - reserves
                                    while idx < borrowDepth:
                                        mem[_15068 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_15068 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                        mem[_15068 + (4 * ceil32(return_data.size)) + 200] = s
                                        mem[_15068 + (4 * ceil32(return_data.size)) + 232] = this.address
                                        mem[_15068 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                            mem[_15068 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_15068 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_15068 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                            mem[_15068 + (4 * ceil32(return_data.size)) + 232] = 2
                                            mem[_15068 + (4 * ceil32(return_data.size)) + 264] = 0
                                            mem[_15068 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                            mem[_15068 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_15068 + 196] == bool(mem[_15068 + 196])
                                if not mem[_15068 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_15068 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_15068 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_15068 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_15068 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                    while idx < borrowDepth:
                                        mem[_15068 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_15068 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                        mem[_15068 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                        mem[_15068 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                        mem[_15068 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                            mem[_15068 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_15068 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_15068 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                            mem[_15068 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                            mem[_15068 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                            mem[_15068 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                        if stor0:
                            _15160 = mem[64]
                            mem[mem[64] + 36] = address(vaultAddress)
                            mem[mem[64] + 68] = _14593
                            _15214 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_15160 + 100] = 32
                            mem[_15160 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _15749 = mem[_15214]
                            mem[_15160 + 164 len ceil32(mem[_15214])] = mem[_15214 + 32 len ceil32(mem[_15214])]
                            if ceil32(_15749) > _15749:
                                mem[_15160 + _15749 + 164] = 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args mem[_15160 + 168 len _15749 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_15160 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_15160 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_15160 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_15160 + (2 * ceil32(return_data.size)) + 164] - reserves
                                        while idx < borrowDepth:
                                            mem[_15160 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_15160 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_15160 + (4 * ceil32(return_data.size)) + 200] = s
                                            mem[_15160 + (4 * ceil32(return_data.size)) + 232] = this.address
                                            mem[_15160 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                mem[_15160 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_15160 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15160 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                mem[_15160 + (4 * ceil32(return_data.size)) + 232] = 2
                                                mem[_15160 + (4 * ceil32(return_data.size)) + 264] = 0
                                                mem[_15160 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                mem[_15160 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_15160 + 196] == bool(mem[_15160 + 196])
                                    if not mem[_15160 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_15160 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_15160 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_15160 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_15160 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                        while idx < borrowDepth:
                                            mem[_15160 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_15160 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_15160 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                            mem[_15160 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                            mem[_15160 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                mem[_15160 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_15160 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15160 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                mem[_15160 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                mem[_15160 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                mem[_15160 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                            if not mem[_14524]:
                                if 0 > mem[_14524]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _15924 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = _14593
                                _16062 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_15924 + 100] = 32
                                mem[_15924 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _16683 = mem[_16062]
                                mem[_15924 + 164 len ceil32(mem[_16062])] = mem[_16062 + 32 len ceil32(mem[_16062])]
                                if ceil32(_16683) > _16683:
                                    mem[_15924 + _16683 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_15924 + 168 len _16683 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15924 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15924 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15924 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15924 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_15924 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15924 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15924 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_15924 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_15924 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_15924 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15924 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_15924 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_15924 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_15924 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_15924 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_15924 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_15924 + 196] == bool(mem[_15924 + 196])
                                        if not mem[_15924 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15924 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15924 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15924 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15924 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_15924 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15924 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15924 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_15924 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_15924 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_15924 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15924 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_15924 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_15924 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_15924 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_15924 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                                if withdrawalFee * mem[_14524] / mem[_14524] != withdrawalFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if withdrawalFee * mem[_14524] / 10000 > mem[_14524]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _15989 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = _14593 - (withdrawalFee * _14593 / 10000)
                                _16111 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_15989 + 100] = 32
                                mem[_15989 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _16736 = mem[_16111]
                                mem[_15989 + 164 len ceil32(mem[_16111])] = mem[_16111 + 32 len ceil32(mem[_16111])]
                                if ceil32(_16736) > _16736:
                                    mem[_15989 + _16736 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_15989 + 168 len _16736 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15989 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15989 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15989 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15989 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_15989 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15989 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15989 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_15989 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_15989 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_15989 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15989 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_15989 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_15989 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_15989 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_15989 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_15989 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_15989 + 196] == bool(mem[_15989 + 196])
                                        if not mem[_15989 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15989 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15989 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15989 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15989 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_15989 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15989 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15989 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_15989 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_15989 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_15989 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15989 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_15989 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_15989 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_15989 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_15989 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                    if tx.origin == owner:
                        _15108 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = arg1
                        _15161 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_15108 + 100] = 32
                        mem[_15108 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        _15670 = mem[_15161]
                        mem[_15108 + 164 len ceil32(mem[_15161])] = mem[_15161 + 32 len ceil32(mem[_15161])]
                        if ceil32(_15670) > _15670:
                            mem[_15108 + _15670 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_15108 + 168 len _15670 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_15108 + 164 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_15108 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_15108 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_15108 + (2 * ceil32(return_data.size)) + 164] - reserves
                                    while idx < borrowDepth:
                                        mem[_15108 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_15108 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                        mem[_15108 + (4 * ceil32(return_data.size)) + 200] = s
                                        mem[_15108 + (4 * ceil32(return_data.size)) + 232] = this.address
                                        mem[_15108 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                            mem[_15108 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_15108 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_15108 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                            mem[_15108 + (4 * ceil32(return_data.size)) + 232] = 2
                                            mem[_15108 + (4 * ceil32(return_data.size)) + 264] = 0
                                            mem[_15108 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                            mem[_15108 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_15108 + 196] == bool(mem[_15108 + 196])
                                if not mem[_15108 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_15108 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_15108 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_15108 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_15108 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                    while idx < borrowDepth:
                                        mem[_15108 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_15108 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                        mem[_15108 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                        mem[_15108 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                        mem[_15108 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                            mem[_15108 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_15108 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_15108 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                            mem[_15108 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                            mem[_15108 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                            mem[_15108 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                        if stor0:
                            _15188 = mem[64]
                            mem[mem[64] + 36] = address(vaultAddress)
                            mem[mem[64] + 68] = arg1
                            _15358 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_15188 + 100] = 32
                            mem[_15188 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _15811 = mem[_15358]
                            mem[_15188 + 164 len ceil32(mem[_15358])] = mem[_15358 + 32 len ceil32(mem[_15358])]
                            if ceil32(_15811) > _15811:
                                mem[_15188 + _15811 + 164] = 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args mem[_15188 + 168 len _15811 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_15188 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_15188 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_15188 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_15188 + (2 * ceil32(return_data.size)) + 164] - reserves
                                        while idx < borrowDepth:
                                            mem[_15188 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_15188 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_15188 + (4 * ceil32(return_data.size)) + 200] = s
                                            mem[_15188 + (4 * ceil32(return_data.size)) + 232] = this.address
                                            mem[_15188 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                mem[_15188 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_15188 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15188 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                mem[_15188 + (4 * ceil32(return_data.size)) + 232] = 2
                                                mem[_15188 + (4 * ceil32(return_data.size)) + 264] = 0
                                                mem[_15188 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                mem[_15188 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_15188 + 196] == bool(mem[_15188 + 196])
                                    if not mem[_15188 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_15188 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_15188 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_15188 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_15188 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                        while idx < borrowDepth:
                                            mem[_15188 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_15188 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_15188 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                            mem[_15188 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                            mem[_15188 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                mem[_15188 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_15188 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15188 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                mem[_15188 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                mem[_15188 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                mem[_15188 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                            if not arg1:
                                if 0 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _15992 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = arg1
                                _16115 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_15992 + 100] = 32
                                mem[_15992 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _16748 = mem[_16115]
                                mem[_15992 + 164 len ceil32(mem[_16115])] = mem[_16115 + 32 len ceil32(mem[_16115])]
                                if ceil32(_16748) > _16748:
                                    mem[_15992 + _16748 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_15992 + 168 len _16748 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15992 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15992 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15992 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15992 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_15992 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15992 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15992 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_15992 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_15992 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_15992 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15992 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_15992 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_15992 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_15992 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_15992 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_15992 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_15992 + 196] == bool(mem[_15992 + 196])
                                        if not mem[_15992 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_15992 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_15992 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_15992 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_15992 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_15992 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_15992 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15992 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_15992 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_15992 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_15992 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_15992 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_15992 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_15992 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_15992 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_15992 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                                if withdrawalFee * arg1 / arg1 != withdrawalFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if withdrawalFee * arg1 / 10000 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _16066 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = arg1 - (withdrawalFee * arg1 / 10000)
                                _16165 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_16066 + 100] = 32
                                mem[_16066 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _16813 = mem[_16165]
                                mem[_16066 + 164 len ceil32(mem[_16165])] = mem[_16165 + 32 len ceil32(mem[_16165])]
                                if ceil32(_16813) > _16813:
                                    mem[_16066 + _16813 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_16066 + 168 len _16813 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_16066 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_16066 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_16066 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_16066 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_16066 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_16066 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_16066 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_16066 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_16066 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_16066 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_16066 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_16066 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_16066 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_16066 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_16066 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_16066 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_16066 + 196] == bool(mem[_16066 + 196])
                                        if not mem[_16066 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_16066 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_16066 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_16066 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_16066 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_16066 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_16066 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_16066 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_16066 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_16066 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_16066 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_16066 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_16066 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_16066 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_16066 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_16066 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14772 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15069 = mem[_14772]
                if mem[_14772] <= arg1:
                    if tx.origin == owner:
                        _15572 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = _15069
                        _15639 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_15572 + 100] = 32
                        mem[_15572 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        _16067 = mem[_15639]
                        mem[_15572 + 164 len ceil32(mem[_15639])] = mem[_15639 + 32 len ceil32(mem[_15639])]
                        if ceil32(_16067) > _16067:
                            mem[_15572 + _16067 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_15572 + 168 len _16067 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_15572 + 164 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_15572 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_15572 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_15572 + (2 * ceil32(return_data.size)) + 164] - reserves
                                    while idx < borrowDepth:
                                        mem[_15572 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_15572 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                        mem[_15572 + (4 * ceil32(return_data.size)) + 200] = s
                                        mem[_15572 + (4 * ceil32(return_data.size)) + 232] = this.address
                                        mem[_15572 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                            mem[_15572 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_15572 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_15572 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                            mem[_15572 + (4 * ceil32(return_data.size)) + 232] = 2
                                            mem[_15572 + (4 * ceil32(return_data.size)) + 264] = 0
                                            mem[_15572 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                            mem[_15572 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_15572 + 196] == bool(mem[_15572 + 196])
                                if not mem[_15572 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_15572 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_15572 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_15572 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_15572 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                    while idx < borrowDepth:
                                        mem[_15572 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_15572 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                        mem[_15572 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                        mem[_15572 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                        mem[_15572 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                            mem[_15572 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_15572 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_15572 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                            mem[_15572 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                            mem[_15572 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                            mem[_15572 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                        if stor0:
                            _15672 = mem[64]
                            mem[mem[64] + 36] = address(vaultAddress)
                            mem[mem[64] + 68] = _15069
                            _15754 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_15672 + 100] = 32
                            mem[_15672 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _16253 = mem[_15754]
                            mem[_15672 + 164 len ceil32(mem[_15754])] = mem[_15754 + 32 len ceil32(mem[_15754])]
                            if ceil32(_16253) > _16253:
                                mem[_15672 + _16253 + 164] = 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args mem[_15672 + 168 len _16253 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_15672 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_15672 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_15672 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_15672 + (2 * ceil32(return_data.size)) + 164] - reserves
                                        while idx < borrowDepth:
                                            mem[_15672 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_15672 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_15672 + (4 * ceil32(return_data.size)) + 200] = s
                                            mem[_15672 + (4 * ceil32(return_data.size)) + 232] = this.address
                                            mem[_15672 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                mem[_15672 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_15672 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15672 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                mem[_15672 + (4 * ceil32(return_data.size)) + 232] = 2
                                                mem[_15672 + (4 * ceil32(return_data.size)) + 264] = 0
                                                mem[_15672 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                mem[_15672 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_15672 + 196] == bool(mem[_15672 + 196])
                                    if not mem[_15672 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_15672 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_15672 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_15672 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_15672 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                        while idx < borrowDepth:
                                            mem[_15672 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_15672 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_15672 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                            mem[_15672 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                            mem[_15672 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                mem[_15672 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_15672 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15672 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                mem[_15672 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                mem[_15672 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                mem[_15672 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                            if not mem[_14772]:
                                if 0 > mem[_14772]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _16517 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = _15069
                                _16698 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_16517 + 100] = 32
                                mem[_16517 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _17594 = mem[_16698]
                                mem[_16517 + 164 len ceil32(mem[_16698])] = mem[_16698 + 32 len ceil32(mem[_16698])]
                                if ceil32(_17594) > _17594:
                                    mem[_16517 + _17594 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_16517 + 168 len _17594 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_16517 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_16517 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_16517 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_16517 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_16517 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_16517 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_16517 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_16517 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_16517 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_16517 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_16517 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_16517 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_16517 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_16517 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_16517 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_16517 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_16517 + 196] == bool(mem[_16517 + 196])
                                        if not mem[_16517 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_16517 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_16517 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_16517 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_16517 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_16517 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_16517 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_16517 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_16517 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_16517 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_16517 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_16517 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_16517 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_16517 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_16517 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_16517 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                                if withdrawalFee * mem[_14772] / mem[_14772] != withdrawalFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if withdrawalFee * mem[_14772] / 10000 > mem[_14772]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _16611 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = _15069 - (withdrawalFee * _15069 / 10000)
                                _16750 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_16611 + 100] = 32
                                mem[_16611 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _17686 = mem[_16750]
                                mem[_16611 + 164 len ceil32(mem[_16750])] = mem[_16750 + 32 len ceil32(mem[_16750])]
                                if ceil32(_17686) > _17686:
                                    mem[_16611 + _17686 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_16611 + 168 len _17686 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_16611 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_16611 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_16611 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_16611 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_16611 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_16611 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_16611 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_16611 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_16611 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_16611 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_16611 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_16611 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_16611 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_16611 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_16611 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_16611 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_16611 + 196] == bool(mem[_16611 + 196])
                                        if not mem[_16611 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_16611 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_16611 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_16611 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_16611 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_16611 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_16611 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_16611 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_16611 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_16611 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_16611 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_16611 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_16611 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_16611 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_16611 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_16611 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                    if tx.origin == owner:
                        _15607 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = arg1
                        _15673 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_15607 + 100] = 32
                        mem[_15607 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        _16119 = mem[_15673]
                        mem[_15607 + 164 len ceil32(mem[_15673])] = mem[_15673 + 32 len ceil32(mem[_15673])]
                        if ceil32(_16119) > _16119:
                            mem[_15607 + _16119 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_15607 + 168 len _16119 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_15607 + 164 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_15607 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_15607 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_15607 + (2 * ceil32(return_data.size)) + 164] - reserves
                                    while idx < borrowDepth:
                                        mem[_15607 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_15607 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                        mem[_15607 + (4 * ceil32(return_data.size)) + 200] = s
                                        mem[_15607 + (4 * ceil32(return_data.size)) + 232] = this.address
                                        mem[_15607 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                            mem[_15607 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_15607 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_15607 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                            mem[_15607 + (4 * ceil32(return_data.size)) + 232] = 2
                                            mem[_15607 + (4 * ceil32(return_data.size)) + 264] = 0
                                            mem[_15607 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                            mem[_15607 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_15607 + 196] == bool(mem[_15607 + 196])
                                if not mem[_15607 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(dataProviderAddress)
                            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, this.address
                            mem[_15607 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                            mem[_15607 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                            if not stor0:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_15607 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[_15607 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                    while idx < borrowDepth:
                                        mem[_15607 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[_15607 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                        mem[_15607 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                        mem[_15607 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                        mem[_15607 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                            mem[_15607 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[_15607 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_15607 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                            mem[_15607 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                            mem[_15607 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                            mem[_15607 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                        if stor0:
                            _15712 = mem[64]
                            mem[mem[64] + 36] = address(vaultAddress)
                            mem[mem[64] + 68] = arg1
                            _15816 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_15712 + 100] = 32
                            mem[_15712 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _16340 = mem[_15816]
                            mem[_15712 + 164 len ceil32(mem[_15816])] = mem[_15816 + 32 len ceil32(mem[_15816])]
                            if ceil32(_16340) > _16340:
                                mem[_15712 + _16340 + 164] = 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args mem[_15712 + 168 len _16340 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_15712 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_15712 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_15712 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_15712 + (2 * ceil32(return_data.size)) + 164] - reserves
                                        while idx < borrowDepth:
                                            mem[_15712 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_15712 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                            mem[_15712 + (4 * ceil32(return_data.size)) + 200] = s
                                            mem[_15712 + (4 * ceil32(return_data.size)) + 232] = this.address
                                            mem[_15712 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                mem[_15712 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_15712 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_15712 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                mem[_15712 + (4 * ceil32(return_data.size)) + 232] = 2
                                                mem[_15712 + (4 * ceil32(return_data.size)) + 264] = 0
                                                mem[_15712 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                mem[_15712 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_15712 + 196] == bool(mem[_15712 + 196])
                                    if not mem[_15712 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(dataProviderAddress)
                                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args wantAddress, this.address
                                mem[_15712 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                mem[_15712 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                if not stor0:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_15712 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[_15712 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                        while idx < borrowDepth:
                                            mem[_15712 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[_15712 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                            mem[_15712 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                            mem[_15712 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                            mem[_15712 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                mem[_15712 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[_15712 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_15712 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                mem[_15712 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                mem[_15712 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                mem[_15712 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                            if not arg1:
                                if 0 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _16614 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = arg1
                                _16754 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_16614 + 100] = 32
                                mem[_16614 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _17698 = mem[_16754]
                                mem[_16614 + 164 len ceil32(mem[_16754])] = mem[_16754 + 32 len ceil32(mem[_16754])]
                                if ceil32(_17698) > _17698:
                                    mem[_16614 + _17698 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_16614 + 168 len _17698 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_16614 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_16614 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_16614 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_16614 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_16614 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_16614 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_16614 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_16614 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_16614 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_16614 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_16614 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_16614 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_16614 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_16614 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_16614 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_16614 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_16614 + 196] == bool(mem[_16614 + 196])
                                        if not mem[_16614 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_16614 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_16614 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_16614 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_16614 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_16614 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_16614 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_16614 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_16614 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_16614 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_16614 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_16614 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_16614 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_16614 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_16614 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_16614 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
                                if withdrawalFee * arg1 / arg1 != withdrawalFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if withdrawalFee * arg1 / 10000 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _16702 = mem[64]
                                mem[mem[64] + 36] = address(vaultAddress)
                                mem[mem[64] + 68] = arg1 - (withdrawalFee * arg1 / 10000)
                                _16821 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_16702 + 100] = 32
                                mem[_16702 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _17812 = mem[_16821]
                                mem[_16702 + 164 len ceil32(mem[_16821])] = mem[_16821 + 32 len ceil32(mem[_16821])]
                                if ceil32(_17812) > _17812:
                                    mem[_16702 + _17812 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_16702 + 168 len _17812 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_16702 + 164 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_16702 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_16702 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_16702 + (2 * ceil32(return_data.size)) + 164] - reserves
                                            while idx < borrowDepth:
                                                mem[_16702 + (4 * ceil32(return_data.size)) + 164] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_16702 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                mem[_16702 + (4 * ceil32(return_data.size)) + 200] = s
                                                mem[_16702 + (4 * ceil32(return_data.size)) + 232] = this.address
                                                mem[_16702 + (4 * ceil32(return_data.size)) + 264] = 0
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
                                                    mem[_16702 + (4 * ceil32(return_data.size)) + 164] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_16702 + (4 * ceil32(return_data.size)) + 168] = wantAddress
                                                    mem[_16702 + (4 * ceil32(return_data.size)) + 200] = borrowRate * s / 100
                                                    mem[_16702 + (4 * ceil32(return_data.size)) + 232] = 2
                                                    mem[_16702 + (4 * ceil32(return_data.size)) + 264] = 0
                                                    mem[_16702 + (4 * ceil32(return_data.size)) + 296] = this.address
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
                                    mem[_16702 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_16702 + 196] == bool(mem[_16702 + 196])
                                        if not mem[_16702 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(dataProviderAddress)
                                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args wantAddress, this.address
                                    mem[_16702 + ceil32(return_data.size) + 165 len 288] = ext_call.return_data[0 len 288]
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
                                    mem[_16702 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Withdraw(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
                                    if not stor0:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_16702 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if reserves > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] - reserves >= minLeverage:
                                            idx = 0
                                            s = mem[_16702 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] - reserves
                                            while idx < borrowDepth:
                                                mem[_16702 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                                mem[_16702 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                mem[_16702 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = s
                                                mem[_16702 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = this.address
                                                mem[_16702 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
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
                                                    mem[_16702 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                    mem[_16702 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = wantAddress
                                                    mem[_16702 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = borrowRate * s / 100
                                                    mem[_16702 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = 2
                                                    mem[_16702 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 0
                                                    mem[_16702 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = this.address
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
}



}
