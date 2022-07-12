contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - migrate(address arg1)
#
const name = 'StrategyLenderYieldOptimiser', 0

const apiVersion = '', 0

const weth = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const uniswapRouter = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d

const delegatedAssets = 0

const SECONDSPERYEAR = 31556952


array of uint256 metadataURI;
uint8 stor1;
address healthCheckAddress; offset 8
address vaultAddress;
address strategistAddress;
address rewardsAddress;
address keeperAddress;
address wantAddress;
uint256 minReportDelay;
uint256 maxReportDelay;
uint256 profitFactor;
uint256 debtThreshold;
uint8 stor11;
uint256 withdrawalThreshold;
array of address lenders;
uint8 externalOracle;
address wantToEthOracleAddress; offset 8

function metadataURI() payable {
    return metadataURI[0 len metadataURI.length]
}

function debtThreshold() payable {
    return debtThreshold
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function maxReportDelay() payable {
    return maxReportDelay
}

function wantToEthOracle() payable {
    return wantToEthOracleAddress
}

function externalOracle() payable {
    return bool(externalOracle)
}

function emergencyExit() payable {
    return bool(stor11)
}

function doHealthCheck() payable {
    return bool(stor1)
}

function withdrawalThreshold() payable {
    return withdrawalThreshold
}

function profitFactor() payable {
    return profitFactor
}

function lenders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lenders.length
    return lenders[arg1]
}

function minReportDelay() payable {
    return minReportDelay
}

function rewards() payable {
    return rewardsAddress
}

function keeper() payable {
    return keeperAddress
}

function healthCheck() payable {
    return healthCheckAddress
}

function numLenders() payable {
    return lenders.length
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function clone(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(this.address)
    call this.address.0xd0511842 with:
         gas gas_remaining wei
        args 0, 0, msg.sender, msg.sender, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function setWithdrawalThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    withdrawalThreshold = arg1
}

function setPriceOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    wantToEthOracleAddress = arg1
}

function setProfitFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    profitFactor = arg1
    emit UpdatedProfitFactor(arg1);
}

function setDebtThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    debtThreshold = arg1
    emit UpdatedDebtThreshold(arg1);
}

function setMinReportDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    minReportDelay = arg1
    emit UpdatedMinReportDelay(arg1);
}

function setMaxReportDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    maxReportDelay = arg1
    emit UpdatedMaxReportDelay(arg1);
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    require arg1
    keeperAddress = arg1
    emit UpdatedKeeper(arg1);
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    require arg1
    strategistAddress = arg1
    emit UpdatedStrategist(arg1);
}

function lentTotalAssets() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < lenders.length:
        mem[0] = 13
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].nav() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_15] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_15] + s
        continue 
    return (_16 * lenders.length)
}

function clone(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf8c8765e with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Cloned(address(create.new_address));
    return address(create.new_address)
}

function setDoHealthCheck(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.management() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    stor1 = uint8(arg1)
}

function setHealthCheck(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.management() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    healthCheckAddress = arg1
}

function setRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    require arg1
    require ext_code.size(vaultAddress)
    call vaultAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args rewardsAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    rewardsAddress = arg1
    require ext_code.size(vaultAddress)
    call vaultAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit UpdatedRewards(arg1);
}

function addLender(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!authorized'
    require ext_code.size(arg1)
    staticcall arg1.strategy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Undocked Lender'
    idx = 0
    while idx < lenders.length:
        mem[0] = 13
        if lenders[idx] == arg1:
            revert with 0, 'Already Added'
        idx = idx + 1
        continue 
    lenders.length++
    lenders[lenders.length] = arg1
}

function setMetadataURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    metadataURI.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        metadataURI[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while metadataURI.length + 31 / 32 > idx:
        metadataURI[idx] = 0
        idx = idx + 1
        continue 
    emit UpdatedMetadataURI(Array(len=arg1.length, data=arg1[all]));
}

function estimatedTotalAssets() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < lenders.length:
        mem[0] = 13
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].nav() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_21] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_21] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _22 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_22] + (_23 * lenders.length) < _23 * lenders.length:
        revert with 0, 'SafeMath: addition overflow'
    mem[mem[64]] = mem[_22] + (_23 * lenders.length)
    return memory
      from mem[64]
       len 32
}

function setEmergencyExit() payable {
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.guardian() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.management() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!authorized'
    stor11 = 1
    require ext_code.size(vaultAddress)
    call vaultAddress.revokeStrategy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyExitEnabled()
}

function ethToWant(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
    mem[160] = wantAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _22 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _21 + (32 * _22) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _22] = mem[_21 + 224 len 32 * _22]
    require _22 - 1 < _22
    mem[mem[64]] = mem[(32 * _22 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function isActive() payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    mem[64] = ceil32(return_data.size) + 384
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[96]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[128]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[160]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[192]
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[224]
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[256]
    if ext_call.return_data[64] > 0:
        return (ext_call.return_data[64] > 0)
    idx = 0
    s = 0
    while idx < lenders.length:
        mem[0] = 13
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].nav() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_37] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_37] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _38 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_38] + (_39 * lenders.length) < _39 * lenders.length:
        revert with 0, 'SafeMath: addition overflow'
    mem[mem[64]] = mem[_38] + (_39 * lenders.length) > 0
    return memory
      from mem[64]
       len 32
}

function estimatedAPR() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < lenders.length:
        mem[0] = 13
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].nav() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _36 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_36] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_36] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _37 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _39 = mem[_37]
    if mem[_37] + (_38 * lenders.length) < _38 * lenders.length:
        revert with 0, 'SafeMath: addition overflow'
    if not mem[_37] + (_38 * lenders.length):
        return 0
    idx = 0
    s = 0
    while idx < lenders.length:
        mem[0] = 13
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].weightedApr() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _68 = mem[_66]
        if mem[_66] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_66] + s
        continue 
    _61 = mem[64]
    mem[64] = mem[64] + 64
    mem[_61] = 26
    mem[_61 + 32] = 'SafeMath: division by zero'
    if _39 + (_38 * lenders.length):
        return (_68 * lenders.length / _39 + (_38 * lenders.length))
    _65 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = 26
    s = 0
    while lenders.length < 26:
        mem[lenders.length + _65 + 68] = mem[lenders.length + _61 + 32]
        s = lenders.length + 32
        continue 
    if lenders.length > 26:
        mem[_65 + 94] = 0
    revert with memory
      from mem[64]
       len _65 + -mem[64] + 100
}

function estimateAdjustPosition() payable {
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    t = -1
    while idx < lenders.length:
        mem[0] = 13
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].hasAssets() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == bool(mem[_31])
        if not mem[_31]:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < lenders.length
        mem[0] = 13
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].apr() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _42 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _43 = mem[_42]
        if mem[_42] >= t:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < lenders.length
        mem[0] = 13
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].nav() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _47 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        idx = idx + 1
        s = mem[_47]
        t = _43
        continue 
    if ext_call.return_data[0] + s < s:
        revert with 0, 'SafeMath: addition overflow'
    idx = 0
    u = 0
    while idx < lenders.length:
        mem[0] = 13
        mem[mem[64] + 4] = ext_call.return_data[0]
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _56 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_56] <= u:
            idx = idx + 1
            u = u
            continue 
        idx = idx + 1
        u = mem[_56]
        continue 
    require 0 < lenders.length
    mem[0] = 13
    mem[mem[64] + 4] = ext_call.return_data[0] + s
    require ext_code.size(lenders)
    staticcall lenders.aprAfterDeposit(uint256 arg1) with:
            gas gas_remaining wei
           args (ext_call.return_data[0] + s)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _55 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    return 0, t, 0, mem[_55]
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if wantAddress:
        revert with 0, 'Strategy already initialized'
    vaultAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.token() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    wantAddress = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(2 * ceil32(return_data.size)) + 132] = arg1
    mem[(2 * ceil32(return_data.size)) + 164] = -1
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    strategistAddress = arg2
    rewardsAddress = arg3
    keeperAddress = arg4
    minReportDelay = 0
    maxReportDelay = 24 * 3600
    profitFactor = 100
    debtThreshold = 0
    require ext_code.size(vaultAddress)
    call vaultAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sweep(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!authorized'
    if wantAddress == arg1:
        revert with 0, '!want'
    if vaultAddress == arg1:
        revert with 0, '!shares'
    mem[ceil32(return_data.size) + 96] = 1
    mem[ceil32(return_data.size) + 128] = wantAddress
    idx = 0
    while idx < 1:
        require idx < 1
        if arg1 == mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
            revert with 0, '!protected'
        idx = idx + 1
        continue 
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 32]
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 196] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 160] = (5 * ceil32(return_data.size)) + 68
    mem[(4 * ceil32(return_data.size)) + 196 len 28] = address(ext_call.return_data[0]) << 64
    mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 260] = 32
    mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 324 len floor32((5 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 260 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
    if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
        mem[(10 * ceil32(return_data.size)) + 392] = 0
    call arg1.mem[(4 * ceil32(return_data.size)) + 324 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 328 len (13 * ceil32(return_data.size)) + 64]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
            if not mem[(4 * ceil32(return_data.size)) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function harvestTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
    mem[160] = wantAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _110 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _111 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _110 + (32 * _111) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _111] = mem[_110 + 224 len 32 * _111]
    require _111 - 1 < _111
    _211 = mem[(32 * _111 - 1) + ceil32(return_data.size) + 224]
    _212 = mem[64]
    mem[64] = mem[64] + 288
    mem[_212] = 0
    mem[_212 + 32] = 0
    mem[_212 + 64] = 0
    mem[_212 + 96] = 0
    mem[_212 + 128] = 0
    mem[_212 + 160] = 0
    mem[_212 + 192] = 0
    mem[_212 + 224] = 0
    mem[_212 + 256] = 0
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _215 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 288
    _216 = mem[64]
    require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
    mem[64] = mem[64] + 288
    mem[_216] = mem[_215]
    mem[_216 + 32] = mem[_215 + 32]
    mem[_216 + 64] = mem[_215 + 64]
    mem[_216 + 96] = mem[_215 + 96]
    mem[_216 + 128] = mem[_215 + 128]
    mem[_216 + 160] = mem[_215 + 160]
    mem[_216 + 192] = mem[_215 + 192]
    mem[_216 + 224] = mem[_215 + 224]
    mem[_216 + 256] = mem[_215 + 256]
    if 0 == mem[_216 + 32]:
        return 0
    _227 = mem[_216 + 160]
    _228 = mem[64]
    mem[64] = mem[64] + 64
    mem[_228] = 30
    mem[_228 + 32] = 'SafeMath: subtraction overflow'
    if _227 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - _227 < minReportDelay:
        return 0
    _233 = mem[_216 + 160]
    _234 = mem[64]
    mem[64] = mem[64] + 64
    mem[_234] = 30
    mem[_234 + 32] = 'SafeMath: subtraction overflow'
    if _233 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - _233 >= maxReportDelay:
        return 1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.debtOutstanding() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _244 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_244] > debtThreshold:
        return 1
    idx = 0
    s = 0
    while idx < lenders.length:
        mem[0] = 13
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].nav() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _310 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _316 = mem[_310]
        if mem[_310] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_310] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _315 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _317 = mem[_315]
    if mem[_315] + (_316 * lenders.length) < _316 * lenders.length:
        revert with 0, 'SafeMath: addition overflow'
    if debtThreshold < 0:
        revert with 0, 'SafeMath: addition overflow'
    if debtThreshold + mem[_315] + (_316 * lenders.length) < mem[_216 + 192]:
        return 1
    if mem[_315] + (_316 * lenders.length) <= mem[_216 + 192]:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _331 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_331] < mem[_331]:
            revert with 0, 'SafeMath: addition overflow'
        if not profitFactor:
            mem[mem[64]] = 0 < mem[_331]
        else:
            if _211 * profitFactor / profitFactor != _211:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[mem[64]] = _211 * profitFactor < mem[_331]
    else:
        _328 = mem[_216 + 192]
        _329 = mem[64]
        mem[64] = mem[64] + 64
        mem[_329] = 30
        mem[_329 + 32] = 'SafeMath: subtraction overflow'
        if _328 > _317 + (_316 * lenders.length):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _339 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _317 + (_316 * lenders.length) - _328 + mem[_339] < mem[_339]:
            revert with 0, 'SafeMath: addition overflow'
        if not profitFactor:
            mem[mem[64]] = 0 < _317 + (_316 * lenders.length) - _328 + mem[_339]
        else:
            if _211 * profitFactor / profitFactor != _211:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[mem[64]] = _211 * profitFactor < _317 + (_316 * lenders.length) - _328 + mem[_339]
    return memory
      from mem[64]
       len 32
}

function lendStatuses() payable {
    require lenders.length <= test266151307()
    mem[96] = lenders.length
    mem[64] = (32 * lenders.length) + 128
    if not lenders.length:
        idx = 0
        while idx < lenders.length:
            _97 = mem[64]
            mem[64] = mem[64] + 128
            mem[_97] = 96
            mem[_97 + 32] = 0
            mem[_97 + 64] = 0
            mem[_97 + 96] = 0
            mem[0] = 13
            mem[mem[64]] = 0x8b20217600000000000000000000000000000000000000000000000000000000
            require ext_code.size(lenders[idx])
            staticcall lenders[idx].lenderName() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _109 = mem[_106]
            require mem[_106] <= test266151307()
            require _106 + mem[_106] + 31 < _106 + return_data.size
            _115 = mem[_106 + mem[_106]]
            require mem[_106 + mem[_106]] <= test266151307()
            require ceil32(mem[_106 + mem[_106]]) + 32 >= 0 and _106 + ceil32(return_data.size) + ceil32(mem[_106 + mem[_106]]) + 32 <= test266151307()
            mem[64] = _106 + ceil32(return_data.size) + ceil32(mem[_106 + mem[_106]]) + 32
            mem[_106 + ceil32(return_data.size)] = _115
            require _109 + _115 + 32 <= return_data.size
            s = 0
            while s < _115:
                mem[s + _106 + ceil32(return_data.size) + 32] = mem[s + _106 + _109 + 32]
                s = s + 32
                continue 
            if ceil32(_115) <= _115:
                mem[_97] = _106 + ceil32(return_data.size)
                require idx < lenders.length
                mem[_97 + 96] = lenders[idx]
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].nav() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _212 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_97 + 32] = mem[_212]
                require idx < lenders.length
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].apr() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_97 + 64] = mem[_232]
            else:
                mem[_115 + _106 + ceil32(return_data.size) + 32] = 0
                mem[_97] = _106 + ceil32(return_data.size)
                require idx < lenders.length
                mem[_97 + 96] = lenders[idx]
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].nav() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _213 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_97 + 32] = mem[_213]
                require idx < lenders.length
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].apr() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _233 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_97 + 64] = mem[_233]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _97
            idx = idx + 1
            continue 
        _96 = mem[64]
        mem[mem[64]] = 32
        _98 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _98:
            mem[u] = t + -_96 - 64
            _189 = mem[s]
            _190 = mem[mem[s]]
            mem[t] = 128
            _193 = mem[_190]
            mem[t + 128] = mem[_190]
            v = 0
            while v < _193:
                mem[v + t + 160] = mem[v + _190 + 32]
                v = v + 32
                continue 
            if ceil32(_193) > _193:
                mem[_193 + t + 160] = 0
            mem[t + 32] = mem[_189 + 32]
            mem[t + 64] = mem[_189 + 64]
            mem[t + 96] = mem[_189 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = ceil32(_193) + t + 160
            u = u + 32
            continue 
    else:
        mem[64] = (32 * lenders.length) + 256
        mem[(32 * lenders.length) + 128] = 96
        mem[(32 * lenders.length) + 160] = 0
        mem[(32 * lenders.length) + 192] = 0
        mem[(32 * lenders.length) + 224] = 0
        mem[var8001] = (32 * lenders.length) + 128
        s = var8001
        idx = var8002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * lenders.length) + 128] = 96
            mem[(32 * lenders.length) + 160] = 0
            mem[(32 * lenders.length) + 192] = 0
            mem[(32 * lenders.length) + 224] = 0
            mem[s + 32] = (32 * lenders.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < lenders.length:
            _273 = mem[64]
            mem[64] = mem[64] + 128
            mem[_273] = 96
            mem[_273 + 32] = 0
            mem[_273 + 64] = 0
            mem[_273 + 96] = 0
            mem[0] = 13
            mem[mem[64]] = 0x8b20217600000000000000000000000000000000000000000000000000000000
            require ext_code.size(lenders[idx])
            staticcall lenders[idx].lenderName() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _288 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _289 = mem[_288]
            require mem[_288] <= test266151307()
            require _288 + mem[_288] + 31 < _288 + return_data.size
            _291 = mem[_288 + mem[_288]]
            require mem[_288 + mem[_288]] <= test266151307()
            require ceil32(mem[_288 + mem[_288]]) + 32 >= 0 and _288 + ceil32(return_data.size) + ceil32(mem[_288 + mem[_288]]) + 32 <= test266151307()
            mem[64] = _288 + ceil32(return_data.size) + ceil32(mem[_288 + mem[_288]]) + 32
            mem[_288 + ceil32(return_data.size)] = _291
            require _289 + _291 + 32 <= return_data.size
            s = 0
            while s < _291:
                mem[s + _288 + ceil32(return_data.size) + 32] = mem[s + _288 + _289 + 32]
                s = s + 32
                continue 
            if ceil32(_291) <= _291:
                mem[_273] = _288 + ceil32(return_data.size)
                require idx < lenders.length
                mem[_273 + 96] = lenders[idx]
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].nav() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _344 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_273 + 32] = mem[_344]
                require idx < lenders.length
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].apr() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _354 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_273 + 64] = mem[_354]
            else:
                mem[_291 + _288 + ceil32(return_data.size) + 32] = 0
                mem[_273] = _288 + ceil32(return_data.size)
                require idx < lenders.length
                mem[_273 + 96] = lenders[idx]
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].nav() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _345 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_273 + 32] = mem[_345]
                require idx < lenders.length
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].apr() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_273 + 64] = mem[_355]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _273
            idx = idx + 1
            continue 
        _272 = mem[64]
        mem[mem[64]] = 32
        _274 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _274:
            mem[u] = t + -_272 - 64
            _324 = mem[s]
            _325 = mem[mem[s]]
            mem[t] = 128
            _328 = mem[_325]
            mem[t + 128] = mem[_325]
            v = 0
            while v < _328:
                mem[v + t + 160] = mem[v + _325 + 32]
                v = v + 32
                continue 
            if ceil32(_328) > _328:
                mem[_328 + t + 160] = 0
            mem[t + 32] = mem[_324 + 32]
            mem[t + 64] = mem[_324 + 64]
            mem[t + 96] = mem[_324 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = ceil32(_328) + t + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function estimatedFutureAPR(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    mem[64] = ceil32(return_data.size) + 384
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[96]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[128]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[160]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[192]
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[224]
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[256]
    if ext_call.return_data[192] >= arg1:
        idx = 0
        s = -1
        while idx < lenders.length:
            mem[0] = 13
            mem[mem[64] + 4] = ext_call.return_data[192] - arg1
            require ext_code.size(lenders[idx])
            staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                    gas gas_remaining wei
                   args (ext_call.return_data[192] - arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _75 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_75] >= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[_75]
            continue 
        idx = 0
        t = ext_call.return_data[192] - arg1
        while idx < lenders.length:
            require idx < lenders.length
            mem[0] = 13
            require ext_code.size(lenders[idx])
            if idx:
                staticcall lenders[idx].weightedApr() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _157 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_157] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                t = t
                continue 
            staticcall lenders[idx].nav() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_156] >= t:
                if s:
                    if t * s / s != t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if t * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                t = t
                continue 
            if s:
                if mem[_156] * s / s != mem[_156]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if mem[_156] * s < 0:
                    revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = mem[_156]
            continue 
        idx = 0
        s = 0
        while idx < lenders.length:
            mem[0] = 13
            require ext_code.size(lenders[idx])
            staticcall lenders[idx].nav() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_260] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_260] + s
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _265 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_265] + (_266 * lenders.length) < _266 * lenders.length:
            revert with 0, 'SafeMath: addition overflow'
        if t < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not t + mem[_265] + (_266 * lenders.length):
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / t + mem[_265] + (_266 * lenders.length))
    idx = 0
    s = 0
    t = 0
    while idx < lenders.length:
        mem[0] = 13
        mem[mem[64] + 4] = arg1 - ext_call.return_data[192]
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                gas gas_remaining wei
               args (arg1 - ext_call.return_data[192])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _76 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _81 = mem[_76]
        if mem[_76] <= t:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < lenders.length
        mem[0] = 13
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].nav() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        idx = idx + 1
        s = mem[_89]
        t = _81
        continue 
    if arg1 - ext_call.return_data[192] + s < s:
        revert with 0, 'SafeMath: addition overflow'
    if not t:
        idx = 0
        while idx < lenders.length:
            if idx:
                require idx < lenders.length
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].weightedApr() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _159 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_159] < 0:
                    revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < lenders.length:
            mem[0] = 13
            require ext_code.size(lenders[idx])
            staticcall lenders[idx].nav() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _264 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_264] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_264] + s
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _269 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_269] + (_270 * lenders.length) < _270 * lenders.length:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 - ext_call.return_data[192] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1 - ext_call.return_data[192] + mem[_269] + (_270 * lenders.length):
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / arg1 - ext_call.return_data[192] + mem[_269] + (_270 * lenders.length))
    if (arg1 * t) - (ext_call.return_data[192] * t) + (s * t) / t != arg1 - ext_call.return_data[192] + s:
        revert with 0, 'SafeMath: multiplication overflow'
    idx = 0
    while idx < lenders.length:
        if idx:
            require idx < lenders.length
            mem[0] = 13
            require ext_code.size(lenders[idx])
            staticcall lenders[idx].weightedApr() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_158] < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    u = 0
    while idx < lenders.length:
        mem[0] = 13
        require ext_code.size(lenders[idx])
        staticcall lenders[idx].nav() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _262 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_262] + u < u:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        u = mem[_262] + u
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _267 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_267] + (_268 * lenders.length) < _268 * lenders.length:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 - ext_call.return_data[192] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1 - ext_call.return_data[192] + mem[_267] + (_268 * lenders.length):
        revert with 0, 'SafeMath: division by zero', 0
    return ((arg1 * t) - (ext_call.return_data[192] * t) + (s * t) / arg1 - ext_call.return_data[192] + mem[_267] + (_268 * lenders.length))
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = arg1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call wantAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
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
        else:
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
    else:
        if not lenders.length:
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 132] = msg.sender
            if ext_call.return_data[0] < arg1:
                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
            else:
                mem[ceil32(return_data.size) + 164] = arg1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
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
            else:
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
        else:
            if arg1 - ext_call.return_data[0] < withdrawalThreshold:
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 132] = msg.sender
                if ext_call.return_data[0] < arg1:
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                else:
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
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
                else:
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
            else:
                s = 0
                idx = 0
                while idx < arg1 - ext_call.return_data[0]:
                    t = 0
                    u = -1
                    while t < lenders.length:
                        mem[0] = 13
                        require ext_code.size(lenders[t])
                        staticcall lenders[t].hasAssets() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1484 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1484] == bool(mem[_1484])
                        if not mem[_1484]:
                            t = t + 1
                            u = u
                            continue 
                        require t < lenders.length
                        mem[0] = 13
                        require ext_code.size(lenders[t])
                        staticcall lenders[t].apr() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1569 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1569] >= u:
                            t = t + 1
                            u = u
                            continue 
                        t = t + 1
                        u = mem[_1569]
                        continue 
                    require 0 < lenders.length
                    mem[0] = 13
                    require ext_code.size(lenders)
                    staticcall lenders.hasAssets() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1483 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1483] == bool(mem[_1483])
                    if not mem[_1483]:
                        if ext_call.return_data[0] + idx < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] + idx < arg1:
                            _1615 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ext_call.return_data[0] + idx
                            _1626 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1626 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1626 + 36 len 28]
                            mem[64] = _1615 + 164
                            mem[_1615 + 100] = 32
                            mem[_1615 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _1649 = mem[_1626]
                            idx = 0
                            while idx < _1649:
                                mem[idx + _1615 + 164] = mem[idx + _1626 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1649) > _1649:
                                mem[_1649 + _1615 + 164] = 0
                            call wantAddress.mem[_1615 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1615 + 168 len _1649 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1615 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1615 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1615 + 232] = mem[idx + _1615 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1615 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_1615 + 164] = return_data.size
                                mem[_1615 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1615 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1615 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1615 + ceil32(return_data.size) + 233] = mem[idx + _1615 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1615 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_1615 + 196] == bool(mem[_1615 + 196])
                                    if not mem[_1615 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            _1616 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg1
                            _1628 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1628 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1628 + 36 len 28]
                            mem[64] = _1616 + 164
                            mem[_1616 + 100] = 32
                            mem[_1616 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _1650 = mem[_1628]
                            idx = 0
                            while idx < _1650:
                                mem[idx + _1616 + 164] = mem[idx + _1628 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1650) > _1650:
                                mem[_1650 + _1616 + 164] = 0
                            call wantAddress.mem[_1616 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1616 + 168 len _1650 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1616 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1616 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1616 + 232] = mem[idx + _1616 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1616 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_1616 + 164] = return_data.size
                                mem[_1616 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1616 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1616 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1616 + ceil32(return_data.size) + 233] = mem[idx + _1616 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1616 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_1616 + 196] == bool(mem[_1616 + 196])
                                    if not mem[_1616 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require 0 < lenders.length
                        mem[0] = 13
                        mem[mem[64] + 4] = arg1 - ext_call.return_data[0] - idx
                        require ext_code.size(lenders)
                        call lenders.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args (arg1 - ext_call.return_data[0] - idx)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1579 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1606 = mem[_1579]
                        if mem[_1579] + idx < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        if s + 1 < 6:
                            s = s + 1
                            idx = mem[_1579] + idx
                            continue 
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] + mem[_1579] + idx < arg1:
                            _1655 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ext_call.return_data[0] + _1606 + idx
                            _1659 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1659 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1659 + 36 len 28]
                            mem[64] = _1655 + 164
                            mem[_1655 + 100] = 32
                            mem[_1655 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _1703 = mem[_1659]
                            idx = 0
                            while idx < _1703:
                                mem[idx + _1655 + 164] = mem[idx + _1659 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1703) > _1703:
                                mem[_1703 + _1655 + 164] = 0
                            call wantAddress.mem[_1655 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1655 + 168 len _1703 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1655 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1655 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1655 + 232] = mem[idx + _1655 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1655 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_1655 + 164] = return_data.size
                                mem[_1655 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1655 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1655 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1655 + ceil32(return_data.size) + 233] = mem[idx + _1655 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1655 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_1655 + 196] == bool(mem[_1655 + 196])
                                    if not mem[_1655 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            _1656 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg1
                            _1661 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1661 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1661 + 36 len 28]
                            mem[64] = _1656 + 164
                            mem[_1656 + 100] = 32
                            mem[_1656 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _1704 = mem[_1661]
                            idx = 0
                            while idx < _1704:
                                mem[idx + _1656 + 164] = mem[idx + _1661 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1704) > _1704:
                                mem[_1704 + _1656 + 164] = 0
                            call wantAddress.mem[_1656 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1656 + 168 len _1704 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1656 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1656 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1656 + 232] = mem[idx + _1656 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1656 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_1656 + 164] = return_data.size
                                mem[_1656 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1656 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1656 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1656 + ceil32(return_data.size) + 233] = mem[idx + _1656 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1656 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_1656 + 196] == bool(mem[_1656 + 196])
                                    if not mem[_1656 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return 0
                if ext_call.return_data[0] + idx < idx:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] + idx < arg1:
                    _1308 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = ext_call.return_data[0] + idx
                    _1310 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_1308 + 100] = 32
                    mem[_1308 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _1327 = mem[_1310]
                    mem[_1308 + 164 len ceil32(mem[_1310])] = mem[_1310 + 32 len ceil32(mem[_1310])]
                    if ceil32(_1327) > _1327:
                        mem[_1327 + _1308 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_1308 + 168 len _1327 - 4]
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
                    else:
                        mem[_1308 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1308 + 196] == bool(mem[_1308 + 196])
                            if not mem[_1308 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _1309 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    _1312 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_1309 + 100] = 32
                    mem[_1309 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _1328 = mem[_1312]
                    mem[_1309 + 164 len ceil32(mem[_1312])] = mem[_1312 + 32 len ceil32(mem[_1312])]
                    if ceil32(_1328) > _1328:
                        mem[_1328 + _1309 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_1309 + 168 len _1328 - 4]
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
                    else:
                        mem[_1309 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1309 + 196] == bool(mem[_1309 + 196])
                            if not mem[_1309 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return 0
}

function manualAllocation(address arg1, uint16[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (64 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require calldata.size - s >= 64
        _45 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_45] = cd[s]
        require cd[(s + 32)] == uint16(cd[(s + 32)])
        mem[_45 + 32] = cd[(s + 32)]
        mem[t] = _45
        s = s + 64
        t = t + 32
        idx = idx + 1
        continue 
    if msg.sender == strategistAddress:
        idx = 0
        while idx < lenders.length:
            mem[0] = 13
            require ext_code.size(lenders[idx])
            call lenders[idx].withdrawAll() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _98 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_98] == bool(mem[_98])
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _100 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _104 = mem[_100]
        _584 = mem[96]
        idx = 0
        s = 0
        while idx < _584:
            t = 0
            u = 0
            while t < lenders.length:
                require idx < mem[96]
                _607 = mem[mem[(32 * idx) + 128]]
                require t < lenders.length
                mem[0] = 13
                _584 = mem[96]
                if lenders[t] != address(_607):
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = 1
                continue 
            if not u:
                revert with 0, 'NOT LENDER'
            require idx < mem[96]
            _613 = mem[mem[(32 * idx) + 128] + 32]
            if mem[mem[(32 * idx) + 128] + 62 len 2] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[96]
            _625 = mem[mem[(32 * idx) + 128] + 32]
            if not _104:
                _632 = mem[64]
                mem[64] = mem[64] + 64
                mem[_632] = 26
                mem[_632 + 32] = 'SafeMath: division by zero'
                require idx < mem[96]
                _648 = mem[64]
                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                mem[mem[64] + 68] = 0
                _654 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_654 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_654 + 36 len 28]
                mem[64] = _648 + 164
                mem[_648 + 100] = 32
                mem[_648 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _675 = mem[_654]
                t = 0
                while t < _675:
                    mem[t + _648 + 164] = mem[t + _654 + 32]
                    _584 = mem[96]
                    t = t + 32
                    continue 
                if ceil32(_675) <= _675:
                    call wantAddress.mem[_648 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_648 + 168 len _675 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_648 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_648 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _648 + 232] = mem[idx + _648 + 132]
                                _584 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_648 + 232]
                        if not mem[96]:
                            require idx < mem[96]
                            _1243 = mem[mem[(32 * idx) + 128]]
                            mem[_648 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1243))
                            call address(_1243).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1387 = mem[mem[(32 * idx) + 128]]
                            mem[_648 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1387))
                            call address(_1387).deposit() with:
                                 gas gas_remaining wei
                    else:
                        mem[64] = _648 + ceil32(return_data.size) + 165
                        mem[_648 + 164] = return_data.size
                        mem[_648 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_648 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_648 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _648 + ceil32(return_data.size) + 233] = mem[idx + _648 + 132]
                                _584 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_648 + ceil32(return_data.size) + 233]
                        if not return_data.size:
                            require idx < mem[96]
                            _1247 = mem[mem[(32 * idx) + 128]]
                            mem[_648 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1247))
                            call address(_1247).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require return_data.size >= 32
                            require mem[_648 + 196] == bool(mem[_648 + 196])
                            if not mem[_648 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1391 = mem[mem[(32 * idx) + 128]]
                            mem[_648 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1391))
                            call address(_1391).deposit() with:
                                 gas gas_remaining wei
                else:
                    mem[_675 + _648 + 164] = 0
                    call wantAddress.mem[_648 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_648 + 168 len _675 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_648 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_648 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _648 + 232] = mem[idx + _648 + 132]
                                _584 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_648 + 232]
                        if not mem[96]:
                            require idx < mem[96]
                            _1251 = mem[mem[(32 * idx) + 128]]
                            mem[_648 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1251))
                            call address(_1251).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1395 = mem[mem[(32 * idx) + 128]]
                            mem[_648 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1395))
                            call address(_1395).deposit() with:
                                 gas gas_remaining wei
                    else:
                        mem[64] = _648 + ceil32(return_data.size) + 165
                        mem[_648 + 164] = return_data.size
                        mem[_648 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_648 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_648 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _648 + ceil32(return_data.size) + 233] = mem[idx + _648 + 132]
                                _584 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_648 + ceil32(return_data.size) + 233]
                        if not return_data.size:
                            require idx < mem[96]
                            _1255 = mem[mem[(32 * idx) + 128]]
                            mem[_648 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1255))
                            call address(_1255).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require return_data.size >= 32
                            require mem[_648 + 196] == bool(mem[_648 + 196])
                            if not mem[_648 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1399 = mem[mem[(32 * idx) + 128]]
                            mem[_648 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1399))
                            call address(_1399).deposit() with:
                                 gas gas_remaining wei
            else:
                if mem[mem[(32 * idx) + 128] + 62 len 2] * _104 / _104 != mem[mem[(32 * idx) + 128] + 62 len 2]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _634 = mem[64]
                mem[64] = mem[64] + 64
                mem[_634] = 26
                mem[_634 + 32] = 'SafeMath: division by zero'
                require idx < mem[96]
                _652 = mem[64]
                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                mem[mem[64] + 68] = uint16(_625) * _104 / 1000
                _658 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_658 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_658 + 36 len 28]
                mem[64] = _652 + 164
                mem[_652 + 100] = 32
                mem[_652 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _680 = mem[_658]
                t = 0
                while t < _680:
                    mem[t + _652 + 164] = mem[t + _658 + 32]
                    _584 = mem[96]
                    t = t + 32
                    continue 
                if ceil32(_680) <= _680:
                    call wantAddress.mem[_652 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_652 + 168 len _680 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_652 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_652 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _652 + 232] = mem[idx + _652 + 132]
                                _584 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_652 + 232]
                        if not mem[96]:
                            require idx < mem[96]
                            _1227 = mem[mem[(32 * idx) + 128]]
                            mem[_652 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1227))
                            call address(_1227).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1371 = mem[mem[(32 * idx) + 128]]
                            mem[_652 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1371))
                            call address(_1371).deposit() with:
                                 gas gas_remaining wei
                    else:
                        mem[64] = _652 + ceil32(return_data.size) + 165
                        mem[_652 + 164] = return_data.size
                        mem[_652 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_652 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_652 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _652 + ceil32(return_data.size) + 233] = mem[idx + _652 + 132]
                                _584 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_652 + ceil32(return_data.size) + 233]
                        if not return_data.size:
                            require idx < mem[96]
                            _1231 = mem[mem[(32 * idx) + 128]]
                            mem[_652 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1231))
                            call address(_1231).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require return_data.size >= 32
                            require mem[_652 + 196] == bool(mem[_652 + 196])
                            if not mem[_652 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1375 = mem[mem[(32 * idx) + 128]]
                            mem[_652 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1375))
                            call address(_1375).deposit() with:
                                 gas gas_remaining wei
                else:
                    mem[_680 + _652 + 164] = 0
                    call wantAddress.mem[_652 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_652 + 168 len _680 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_652 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_652 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _652 + 232] = mem[idx + _652 + 132]
                                _584 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_652 + 232]
                        if not mem[96]:
                            require idx < mem[96]
                            _1235 = mem[mem[(32 * idx) + 128]]
                            mem[_652 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1235))
                            call address(_1235).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1379 = mem[mem[(32 * idx) + 128]]
                            mem[_652 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1379))
                            call address(_1379).deposit() with:
                                 gas gas_remaining wei
                    else:
                        mem[64] = _652 + ceil32(return_data.size) + 165
                        mem[_652 + 164] = return_data.size
                        mem[_652 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_652 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_652 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _652 + ceil32(return_data.size) + 233] = mem[idx + _652 + 132]
                                _584 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_652 + ceil32(return_data.size) + 233]
                        if not return_data.size:
                            require idx < mem[96]
                            _1239 = mem[mem[(32 * idx) + 128]]
                            mem[_652 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1239))
                            call address(_1239).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require return_data.size >= 32
                            require mem[_652 + 196] == bool(mem[_652 + 196])
                            if not mem[_652 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1383 = mem[mem[(32 * idx) + 128]]
                            mem[_652 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1383))
                            call address(_1383).deposit() with:
                                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _584 = mem[96]
            idx = idx + 1
            s = uint16(_613) + s
            continue 
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_49] == mem[_49 + 12 len 20]
        if mem[_49 + 12 len 20] != msg.sender:
            revert with 0, '!authorized'
        idx = 0
        while idx < lenders.length:
            mem[0] = 13
            require ext_code.size(lenders[idx])
            call lenders[idx].withdrawAll() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _99 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_99] == bool(mem[_99])
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _101 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _105 = mem[_101]
        _585 = mem[96]
        idx = 0
        s = 0
        while idx < _585:
            t = 0
            u = 0
            while t < lenders.length:
                require idx < mem[96]
                _611 = mem[mem[(32 * idx) + 128]]
                require t < lenders.length
                mem[0] = 13
                _585 = mem[96]
                if lenders[t] != address(_611):
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = 1
                continue 
            if not u:
                revert with 0, 'NOT LENDER'
            require idx < mem[96]
            _616 = mem[mem[(32 * idx) + 128] + 32]
            if mem[mem[(32 * idx) + 128] + 62 len 2] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[96]
            _628 = mem[mem[(32 * idx) + 128] + 32]
            if not _105:
                _633 = mem[64]
                mem[64] = mem[64] + 64
                mem[_633] = 26
                mem[_633 + 32] = 'SafeMath: division by zero'
                require idx < mem[96]
                _651 = mem[64]
                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                mem[mem[64] + 68] = 0
                _656 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_656 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_656 + 36 len 28]
                mem[64] = _651 + 164
                mem[_651 + 100] = 32
                mem[_651 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _679 = mem[_656]
                t = 0
                while t < _679:
                    mem[t + _651 + 164] = mem[t + _656 + 32]
                    _585 = mem[96]
                    t = t + 32
                    continue 
                if ceil32(_679) <= _679:
                    call wantAddress.mem[_651 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_651 + 168 len _679 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_651 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_651 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _651 + 232] = mem[idx + _651 + 132]
                                _585 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_651 + 232]
                        if not mem[96]:
                            require idx < mem[96]
                            _1275 = mem[mem[(32 * idx) + 128]]
                            mem[_651 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1275))
                            call address(_1275).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1419 = mem[mem[(32 * idx) + 128]]
                            mem[_651 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1419))
                            call address(_1419).deposit() with:
                                 gas gas_remaining wei
                    else:
                        mem[64] = _651 + ceil32(return_data.size) + 165
                        mem[_651 + 164] = return_data.size
                        mem[_651 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_651 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_651 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _651 + ceil32(return_data.size) + 233] = mem[idx + _651 + 132]
                                _585 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_651 + ceil32(return_data.size) + 233]
                        if not return_data.size:
                            require idx < mem[96]
                            _1279 = mem[mem[(32 * idx) + 128]]
                            mem[_651 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1279))
                            call address(_1279).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require return_data.size >= 32
                            require mem[_651 + 196] == bool(mem[_651 + 196])
                            if not mem[_651 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1423 = mem[mem[(32 * idx) + 128]]
                            mem[_651 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1423))
                            call address(_1423).deposit() with:
                                 gas gas_remaining wei
                else:
                    mem[_679 + _651 + 164] = 0
                    call wantAddress.mem[_651 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_651 + 168 len _679 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_651 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_651 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _651 + 232] = mem[idx + _651 + 132]
                                _585 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_651 + 232]
                        if not mem[96]:
                            require idx < mem[96]
                            _1283 = mem[mem[(32 * idx) + 128]]
                            mem[_651 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1283))
                            call address(_1283).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1427 = mem[mem[(32 * idx) + 128]]
                            mem[_651 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1427))
                            call address(_1427).deposit() with:
                                 gas gas_remaining wei
                    else:
                        mem[64] = _651 + ceil32(return_data.size) + 165
                        mem[_651 + 164] = return_data.size
                        mem[_651 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_651 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_651 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _651 + ceil32(return_data.size) + 233] = mem[idx + _651 + 132]
                                _585 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_651 + ceil32(return_data.size) + 233]
                        if not return_data.size:
                            require idx < mem[96]
                            _1287 = mem[mem[(32 * idx) + 128]]
                            mem[_651 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1287))
                            call address(_1287).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require return_data.size >= 32
                            require mem[_651 + 196] == bool(mem[_651 + 196])
                            if not mem[_651 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1431 = mem[mem[(32 * idx) + 128]]
                            mem[_651 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1431))
                            call address(_1431).deposit() with:
                                 gas gas_remaining wei
            else:
                if mem[mem[(32 * idx) + 128] + 62 len 2] * _105 / _105 != mem[mem[(32 * idx) + 128] + 62 len 2]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _636 = mem[64]
                mem[64] = mem[64] + 64
                mem[_636] = 26
                mem[_636 + 32] = 'SafeMath: division by zero'
                require idx < mem[96]
                _653 = mem[64]
                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                mem[mem[64] + 68] = uint16(_628) * _105 / 1000
                _661 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_661 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_661 + 36 len 28]
                mem[64] = _653 + 164
                mem[_653 + 100] = 32
                mem[_653 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _683 = mem[_661]
                t = 0
                while t < _683:
                    mem[t + _653 + 164] = mem[t + _661 + 32]
                    _585 = mem[96]
                    t = t + 32
                    continue 
                if ceil32(_683) <= _683:
                    call wantAddress.mem[_653 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_653 + 168 len _683 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_653 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_653 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _653 + 232] = mem[idx + _653 + 132]
                                _585 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_653 + 232]
                        if not mem[96]:
                            require idx < mem[96]
                            _1259 = mem[mem[(32 * idx) + 128]]
                            mem[_653 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1259))
                            call address(_1259).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1403 = mem[mem[(32 * idx) + 128]]
                            mem[_653 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1403))
                            call address(_1403).deposit() with:
                                 gas gas_remaining wei
                    else:
                        mem[64] = _653 + ceil32(return_data.size) + 165
                        mem[_653 + 164] = return_data.size
                        mem[_653 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_653 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_653 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _653 + ceil32(return_data.size) + 233] = mem[idx + _653 + 132]
                                _585 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_653 + ceil32(return_data.size) + 233]
                        if not return_data.size:
                            require idx < mem[96]
                            _1263 = mem[mem[(32 * idx) + 128]]
                            mem[_653 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1263))
                            call address(_1263).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require return_data.size >= 32
                            require mem[_653 + 196] == bool(mem[_653 + 196])
                            if not mem[_653 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1407 = mem[mem[(32 * idx) + 128]]
                            mem[_653 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1407))
                            call address(_1407).deposit() with:
                                 gas gas_remaining wei
                else:
                    mem[_683 + _653 + 164] = 0
                    call wantAddress.mem[_653 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_653 + 168 len _683 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_653 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_653 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _653 + 232] = mem[idx + _653 + 132]
                                _585 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_653 + 232]
                        if not mem[96]:
                            require idx < mem[96]
                            _1267 = mem[mem[(32 * idx) + 128]]
                            mem[_653 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1267))
                            call address(_1267).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1411 = mem[mem[(32 * idx) + 128]]
                            mem[_653 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1411))
                            call address(_1411).deposit() with:
                                 gas gas_remaining wei
                    else:
                        mem[64] = _653 + ceil32(return_data.size) + 165
                        mem[_653 + 164] = return_data.size
                        mem[_653 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_653 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_653 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _653 + ceil32(return_data.size) + 233] = mem[idx + _653 + 132]
                                _585 = mem[96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_653 + ceil32(return_data.size) + 233]
                        if not return_data.size:
                            require idx < mem[96]
                            _1271 = mem[mem[(32 * idx) + 128]]
                            mem[_653 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1271))
                            call address(_1271).deposit() with:
                                 gas gas_remaining wei
                        else:
                            require return_data.size >= 32
                            require mem[_653 + 196] == bool(mem[_653 + 196])
                            if not mem[_653 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require idx < mem[96]
                            _1415 = mem[mem[(32 * idx) + 128]]
                            mem[_653 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1415))
                            call address(_1415).deposit() with:
                                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _585 = mem[96]
            idx = idx + 1
            s = uint16(_616) + s
            continue 
    if s != 1000:
        revert with 0, 'SHARE!=1000'
}

function tend() payable {
    require ext_code.size(vaultAddress)
    if msg.sender == keeperAddress:
        staticcall vaultAddress.debtOutstanding() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor11:
            if lenders.length:
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                idx = 0
                s = 0
                t = -1
                while idx < lenders.length:
                    mem[0] = 13
                    require ext_code.size(lenders[idx])
                    staticcall lenders[idx].hasAssets() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _185 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_185] == bool(mem[_185])
                    if not mem[_185]:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    require idx < lenders.length
                    mem[0] = 13
                    require ext_code.size(lenders[idx])
                    staticcall lenders[idx].apr() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _240 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _245 = mem[_240]
                    if mem[_240] >= t:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    require idx < lenders.length
                    mem[0] = 13
                    require ext_code.size(lenders[idx])
                    staticcall lenders[idx].nav() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_265]
                    t = _245
                    continue 
                if ext_call.return_data[0] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                u = 0
                while idx < lenders.length:
                    mem[0] = 13
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    require ext_code.size(lenders[idx])
                    staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _306 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_306] <= u:
                        idx = idx + 1
                        u = u
                        continue 
                    idx = idx + 1
                    u = mem[_306]
                    continue 
                require 0 < lenders.length
                mem[0] = 13
                mem[mem[64] + 4] = ext_call.return_data[0] + s
                require ext_code.size(lenders)
                staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                        gas gas_remaining wei
                       args (ext_call.return_data[0] + s)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _305 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_305] <= t:
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
                    _365 = mem[_355]
                    if mem[_355]:
                        require 0 < lenders.length
                        mem[0] = 13
                        _375 = mem[64]
                        mem[mem[64] + 36] = lenders
                        mem[mem[64] + 68] = _365
                        _385 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_375 + 100] = 32
                        mem[_375 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        _435 = mem[_385]
                        mem[_375 + 164 len ceil32(mem[_385])] = mem[_385 + 32 len ceil32(mem[_385])]
                        if ceil32(_435) > _435:
                            mem[_435 + _375 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_375 + 168 len _435 - 4]
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
                        else:
                            mem[_375 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_375 + 196] == bool(mem[_375 + 196])
                                if not mem[_375 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require 0 < lenders.length
                        require ext_code.size(lenders)
                        call lenders.deposit() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require 0 < lenders.length
                    mem[0] = 13
                    require ext_code.size(lenders)
                    call lenders.withdrawAll() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _350 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_350] == bool(mem[_350])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _405 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _410 = mem[_405]
                    if mem[_405]:
                        require 0 < lenders.length
                        mem[0] = 13
                        _436 = mem[64]
                        mem[mem[64] + 36] = lenders
                        mem[mem[64] + 68] = _410
                        _455 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_436 + 100] = 32
                        mem[_436 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        _538 = mem[_455]
                        mem[_436 + 164 len ceil32(mem[_455])] = mem[_455 + 32 len ceil32(mem[_455])]
                        if ceil32(_538) > _538:
                            mem[_538 + _436 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_436 + 168 len _538 - 4]
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
                        else:
                            mem[_436 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_436 + 196] == bool(mem[_436 + 196])
                                if not mem[_436 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require 0 < lenders.length
                        require ext_code.size(lenders)
                        call lenders.deposit() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender == strategistAddress:
            staticcall vaultAddress.debtOutstanding() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor11:
                if lenders.length:
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    idx = 0
                    s = 0
                    t = -1
                    while idx < lenders.length:
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].hasAssets() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _186 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_186] == bool(mem[_186])
                        if not mem[_186]:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < lenders.length
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].apr() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _241 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _246 = mem[_241]
                        if mem[_241] >= t:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < lenders.length
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].nav() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _266 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        s = mem[_266]
                        t = _246
                        continue 
                    if ext_call.return_data[0] + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = 0
                    u = 0
                    while idx < lenders.length:
                        mem[0] = 13
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _308 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_308] <= u:
                            idx = idx + 1
                            u = u
                            continue 
                        idx = idx + 1
                        u = mem[_308]
                        continue 
                    require 0 < lenders.length
                    mem[0] = 13
                    mem[mem[64] + 4] = ext_call.return_data[0] + s
                    require ext_code.size(lenders)
                    staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                            gas gas_remaining wei
                           args (ext_call.return_data[0] + s)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _307 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_307] <= t:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _356 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _366 = mem[_356]
                        if mem[_356]:
                            require 0 < lenders.length
                            mem[0] = 13
                            _377 = mem[64]
                            mem[mem[64] + 36] = lenders
                            mem[mem[64] + 68] = _366
                            _388 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_377 + 100] = 32
                            mem[_377 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _437 = mem[_388]
                            mem[_377 + 164 len ceil32(mem[_388])] = mem[_388 + 32 len ceil32(mem[_388])]
                            if ceil32(_437) > _437:
                                mem[_437 + _377 + 164] = 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args mem[_377 + 168 len _437 - 4]
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
                            else:
                                mem[_377 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_377 + 196] == bool(mem[_377 + 196])
                                    if not mem[_377 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require 0 < lenders.length
                            require ext_code.size(lenders)
                            call lenders.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require 0 < lenders.length
                        mem[0] = 13
                        require ext_code.size(lenders)
                        call lenders.withdrawAll() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _351 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_351] == bool(mem[_351])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _406 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _411 = mem[_406]
                        if mem[_406]:
                            require 0 < lenders.length
                            mem[0] = 13
                            _438 = mem[64]
                            mem[mem[64] + 36] = lenders
                            mem[mem[64] + 68] = _411
                            _457 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_438 + 100] = 32
                            mem[_438 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            _547 = mem[_457]
                            mem[_438 + 164 len ceil32(mem[_457])] = mem[_457 + 32 len ceil32(mem[_457])]
                            if ceil32(_547) > _547:
                                mem[_547 + _438 + 164] = 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args mem[_438 + 168 len _547 - 4]
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
                            else:
                                mem[_438 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_438 + 196] == bool(mem[_438 + 196])
                                    if not mem[_438 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require 0 < lenders.length
                            require ext_code.size(lenders)
                            call lenders.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            staticcall vaultAddress.governance() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(vaultAddress)
            if msg.sender == ext_call.return_data[12 len 20]:
                staticcall vaultAddress.debtOutstanding() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor11:
                    if lenders.length:
                        mem[(2 * ceil32(return_data.size)) + 100] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        t = -1
                        while idx < lenders.length:
                            mem[0] = 13
                            require ext_code.size(lenders[idx])
                            staticcall lenders[idx].hasAssets() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _187 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_187] == bool(mem[_187])
                            if not mem[_187]:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < lenders.length
                            mem[0] = 13
                            require ext_code.size(lenders[idx])
                            staticcall lenders[idx].apr() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _242 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _247 = mem[_242]
                            if mem[_242] >= t:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < lenders.length
                            mem[0] = 13
                            require ext_code.size(lenders[idx])
                            staticcall lenders[idx].nav() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _267 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            s = mem[_267]
                            t = _247
                            continue 
                        if ext_call.return_data[0] + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = 0
                        u = 0
                        while idx < lenders.length:
                            mem[0] = 13
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            require ext_code.size(lenders[idx])
                            staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_310] <= u:
                                idx = idx + 1
                                u = u
                                continue 
                            idx = idx + 1
                            u = mem[_310]
                            continue 
                        require 0 < lenders.length
                        mem[0] = 13
                        mem[mem[64] + 4] = ext_call.return_data[0] + s
                        require ext_code.size(lenders)
                        staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                                gas gas_remaining wei
                               args (ext_call.return_data[0] + s)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _309 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_309] <= t:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _357 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _367 = mem[_357]
                            if mem[_357]:
                                require 0 < lenders.length
                                mem[0] = 13
                                _379 = mem[64]
                                mem[mem[64] + 36] = lenders
                                mem[mem[64] + 68] = _367
                                _391 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_379 + 100] = 32
                                mem[_379 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _439 = mem[_391]
                                mem[_379 + 164 len ceil32(mem[_391])] = mem[_391 + 32 len ceil32(mem[_391])]
                                if ceil32(_439) > _439:
                                    mem[_439 + _379 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_379 + 168 len _439 - 4]
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
                                else:
                                    mem[_379 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_379 + 196] == bool(mem[_379 + 196])
                                        if not mem[_379 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require 0 < lenders.length
                                require ext_code.size(lenders)
                                call lenders.deposit() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require 0 < lenders.length
                            mem[0] = 13
                            require ext_code.size(lenders)
                            call lenders.withdrawAll() with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_352] == bool(mem[_352])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _412 = mem[_407]
                            if mem[_407]:
                                require 0 < lenders.length
                                mem[0] = 13
                                _440 = mem[64]
                                mem[mem[64] + 36] = lenders
                                mem[mem[64] + 68] = _412
                                _459 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_440 + 100] = 32
                                mem[_440 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _556 = mem[_459]
                                mem[_440 + 164 len ceil32(mem[_459])] = mem[_459 + 32 len ceil32(mem[_459])]
                                if ceil32(_556) > _556:
                                    mem[_556 + _440 + 164] = 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args mem[_440 + 168 len _556 - 4]
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
                                else:
                                    mem[_440 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_440 + 196] == bool(mem[_440 + 196])
                                        if not mem[_440 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require 0 < lenders.length
                                require ext_code.size(lenders)
                                call lenders.deposit() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                staticcall vaultAddress.guardian() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(vaultAddress)
                if msg.sender == ext_call.return_data[12 len 20]:
                    staticcall vaultAddress.debtOutstanding() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not stor11:
                        if lenders.length:
                            mem[(4 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = -1
                            while idx < lenders.length:
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].hasAssets() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _188 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_188] == bool(mem[_188])
                                if not mem[_188]:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].apr() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _243 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _248 = mem[_243]
                                if mem[_243] >= t:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].nav() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _268 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                idx = idx + 1
                                s = mem[_268]
                                t = _248
                                continue 
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            u = 0
                            while idx < lenders.length:
                                mem[0] = 13
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _312 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_312] <= u:
                                    idx = idx + 1
                                    u = u
                                    continue 
                                idx = idx + 1
                                u = mem[_312]
                                continue 
                            require 0 < lenders.length
                            mem[0] = 13
                            mem[mem[64] + 4] = ext_call.return_data[0] + s
                            require ext_code.size(lenders)
                            staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (ext_call.return_data[0] + s)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_311] <= t:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _358 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _368 = mem[_358]
                                if mem[_358]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _381 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _368
                                    _394 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                    mem[64] = mem[64] + 164
                                    mem[_381 + 100] = 32
                                    mem[_381 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _441 = mem[_394]
                                    mem[_381 + 164 len ceil32(mem[_394])] = mem[_394 + 32 len ceil32(mem[_394])]
                                    if ceil32(_441) > _441:
                                        mem[_441 + _381 + 164] = 0
                                    call wantAddress with:
                                         gas gas_remaining wei
                                        args mem[_381 + 168 len _441 - 4]
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
                                    else:
                                        mem[_381 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_381 + 196] == bool(mem[_381 + 196])
                                            if not mem[_381 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 0 < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders)
                                call lenders.withdrawAll() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _353 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_353] == bool(mem[_353])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _408 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _413 = mem[_408]
                                if mem[_408]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _442 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _413
                                    _461 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                    mem[64] = mem[64] + 164
                                    mem[_442 + 100] = 32
                                    mem[_442 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _565 = mem[_461]
                                    mem[_442 + 164 len ceil32(mem[_461])] = mem[_461 + 32 len ceil32(mem[_461])]
                                    if ceil32(_565) > _565:
                                        mem[_565 + _442 + 164] = 0
                                    call wantAddress with:
                                         gas gas_remaining wei
                                        args mem[_442 + 168 len _565 - 4]
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
                                    else:
                                        mem[_442 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_442 + 196] == bool(mem[_442 + 196])
                                            if not mem[_442 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    staticcall vaultAddress.management() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        revert with 0, '!authorized'
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.debtOutstanding() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not stor11:
                        if lenders.length:
                            mem[(6 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = -1
                            while idx < lenders.length:
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].hasAssets() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _189 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_189] == bool(mem[_189])
                                if not mem[_189]:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].apr() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _244 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _249 = mem[_244]
                                if mem[_244] >= t:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].nav() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _269 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                idx = idx + 1
                                s = mem[_269]
                                t = _249
                                continue 
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            u = 0
                            while idx < lenders.length:
                                mem[0] = 13
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _314 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_314] <= u:
                                    idx = idx + 1
                                    u = u
                                    continue 
                                idx = idx + 1
                                u = mem[_314]
                                continue 
                            require 0 < lenders.length
                            mem[0] = 13
                            mem[mem[64] + 4] = ext_call.return_data[0] + s
                            require ext_code.size(lenders)
                            staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (ext_call.return_data[0] + s)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_313] <= t:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _359 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _369 = mem[_359]
                                if mem[_359]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _383 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _369
                                    _397 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                    mem[64] = mem[64] + 164
                                    mem[_383 + 100] = 32
                                    mem[_383 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _443 = mem[_397]
                                    mem[_383 + 164 len ceil32(mem[_397])] = mem[_397 + 32 len ceil32(mem[_397])]
                                    if ceil32(_443) > _443:
                                        mem[_443 + _383 + 164] = 0
                                    call wantAddress with:
                                         gas gas_remaining wei
                                        args mem[_383 + 168 len _443 - 4]
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
                                    else:
                                        mem[_383 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_383 + 196] == bool(mem[_383 + 196])
                                            if not mem[_383 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 0 < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders)
                                call lenders.withdrawAll() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _354 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_354] == bool(mem[_354])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _409 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _414 = mem[_409]
                                if mem[_409]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _444 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _414
                                    _463 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                    mem[64] = mem[64] + 164
                                    mem[_444 + 100] = 32
                                    mem[_444 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _574 = mem[_463]
                                    mem[_444 + 164 len ceil32(mem[_463])] = mem[_463 + 32 len ceil32(mem[_463])]
                                    if ceil32(_574) > _574:
                                        mem[_574 + _444 + 164] = 0
                                    call wantAddress with:
                                         gas gas_remaining wei
                                        args mem[_444 + 168 len _574 - 4]
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
                                    else:
                                        mem[_444 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_444 + 196] == bool(mem[_444 + 196])
                                            if not mem[_444 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
}

function forceRemoveLender(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == strategistAddress:
        idx = 0
        while idx < lenders.length:
            mem[0] = 13
            if lenders[idx] != arg1:
                idx = idx + 1
                continue 
            require idx < lenders.length
            require ext_code.size(lenders[idx])
            call lenders[idx].withdrawAll() with:
                 gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if idx == lenders.length - 1:
                require lenders.length
                mem[0] = 13
                lenders[lenders.length] = 0
                lenders.length--
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if not stor11:
                        if lenders.length:
                            mem[(2 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = -1
                            while idx < lenders.length:
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].hasAssets() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _311 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_311] == bool(mem[_311])
                                if not mem[_311]:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].apr() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _355 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _359 = mem[_355]
                                if mem[_355] >= t:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].nav() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _375 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                idx = idx + 1
                                s = mem[_375]
                                t = _359
                                continue 
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            u = 0
                            while idx < lenders.length:
                                mem[0] = 13
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _408 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_408] <= u:
                                    idx = idx + 1
                                    u = u
                                    continue 
                                idx = idx + 1
                                u = mem[_408]
                                continue 
                            require 0 < lenders.length
                            mem[0] = 13
                            mem[mem[64] + 4] = ext_call.return_data[0] + s
                            require ext_code.size(lenders)
                            staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (ext_call.return_data[0] + s)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_407] <= t:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _447 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _455 = mem[_447]
                                if mem[_447]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _463 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _455
                                    _471 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_471 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_471 + 36 len 28]
                                    mem[64] = _463 + 164
                                    mem[_463 + 100] = 32
                                    mem[_463 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _511 = mem[_471]
                                    idx = 0
                                    while idx < _511:
                                        mem[idx + _463 + 164] = mem[idx + _471 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_511) > _511:
                                        mem[_511 + _463 + 164] = 0
                                    call wantAddress.mem[_463 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_463 + 168 len _511 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_463 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_463 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _463 + 232] = mem[idx + _463 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_463 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_463 + 164] = return_data.size
                                        mem[_463 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_463 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_463 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _463 + ceil32(return_data.size) + 233] = mem[idx + _463 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_463 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_463 + 196] == bool(mem[_463 + 196])
                                            if not mem[_463 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 0 < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders)
                                call lenders.withdrawAll() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _443 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_443] == bool(mem[_443])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _487 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _491 = mem[_487]
                                if mem[_487]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _512 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _491
                                    _527 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_527 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_527 + 36 len 28]
                                    mem[64] = _512 + 164
                                    mem[_512 + 100] = 32
                                    mem[_512 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _595 = mem[_527]
                                    idx = 0
                                    while idx < _595:
                                        mem[idx + _512 + 164] = mem[idx + _527 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_595) > _595:
                                        mem[_595 + _512 + 164] = 0
                                    call wantAddress.mem[_512 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_512 + 168 len _595 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_512 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_512 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _512 + 232] = mem[idx + _512 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_512 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_512 + 164] = return_data.size
                                        mem[_512 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_512 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_512 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _512 + ceil32(return_data.size) + 233] = mem[idx + _512 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_512 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_512 + 196] == bool(mem[_512 + 196])
                                            if not mem[_512 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require lenders.length - 1 < lenders.length
                require idx < lenders.length
                lenders[idx] = lenders[lenders.length]
                require lenders.length
                mem[0] = 13
                lenders[lenders.length] = 0
                lenders.length--
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if not stor11:
                        if lenders.length:
                            mem[(2 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = -1
                            while idx < lenders.length:
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].hasAssets() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _312 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_312] == bool(mem[_312])
                                if not mem[_312]:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].apr() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _356 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _360 = mem[_356]
                                if mem[_356] >= t:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].nav() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _376 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                idx = idx + 1
                                s = mem[_376]
                                t = _360
                                continue 
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            u = 0
                            while idx < lenders.length:
                                mem[0] = 13
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _410 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_410] <= u:
                                    idx = idx + 1
                                    u = u
                                    continue 
                                idx = idx + 1
                                u = mem[_410]
                                continue 
                            require 0 < lenders.length
                            mem[0] = 13
                            mem[mem[64] + 4] = ext_call.return_data[0] + s
                            require ext_code.size(lenders)
                            staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (ext_call.return_data[0] + s)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _409 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_409] <= t:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _448 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _456 = mem[_448]
                                if mem[_448]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _465 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _456
                                    _474 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_474 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_474 + 36 len 28]
                                    mem[64] = _465 + 164
                                    mem[_465 + 100] = 32
                                    mem[_465 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _513 = mem[_474]
                                    idx = 0
                                    while idx < _513:
                                        mem[idx + _465 + 164] = mem[idx + _474 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_513) > _513:
                                        mem[_513 + _465 + 164] = 0
                                    call wantAddress.mem[_465 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_465 + 168 len _513 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_465 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_465 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _465 + 232] = mem[idx + _465 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_465 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_465 + 164] = return_data.size
                                        mem[_465 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_465 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_465 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _465 + ceil32(return_data.size) + 233] = mem[idx + _465 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_465 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_465 + 196] == bool(mem[_465 + 196])
                                            if not mem[_465 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 0 < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders)
                                call lenders.withdrawAll() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _444 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_444] == bool(mem[_444])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _488 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _492 = mem[_488]
                                if mem[_488]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _514 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _492
                                    _529 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_529 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_529 + 36 len 28]
                                    mem[64] = _514 + 164
                                    mem[_514 + 100] = 32
                                    mem[_514 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _604 = mem[_529]
                                    idx = 0
                                    while idx < _604:
                                        mem[idx + _514 + 164] = mem[idx + _529 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_604) > _604:
                                        mem[_604 + _514 + 164] = 0
                                    call wantAddress.mem[_514 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_514 + 168 len _604 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_514 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_514 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _514 + 232] = mem[idx + _514 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_514 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_514 + 164] = return_data.size
                                        mem[_514 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_514 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_514 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _514 + ceil32(return_data.size) + 233] = mem[idx + _514 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_514 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_514 + 196] == bool(mem[_514 + 196])
                                            if not mem[_514 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
        idx = 0
        while idx < lenders.length:
            mem[0] = 13
            if lenders[idx] != arg1:
                idx = idx + 1
                continue 
            require idx < lenders.length
            require ext_code.size(lenders[idx])
            call lenders[idx].withdrawAll() with:
                 gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if idx == lenders.length - 1:
                require lenders.length
                mem[0] = 13
                lenders[lenders.length] = 0
                lenders.length--
                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if not stor11:
                        if lenders.length:
                            mem[(4 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = -1
                            while idx < lenders.length:
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].hasAssets() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _313 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_313] == bool(mem[_313])
                                if not mem[_313]:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].apr() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _357 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _361 = mem[_357]
                                if mem[_357] >= t:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].nav() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _377 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                idx = idx + 1
                                s = mem[_377]
                                t = _361
                                continue 
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            u = 0
                            while idx < lenders.length:
                                mem[0] = 13
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _412 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_412] <= u:
                                    idx = idx + 1
                                    u = u
                                    continue 
                                idx = idx + 1
                                u = mem[_412]
                                continue 
                            require 0 < lenders.length
                            mem[0] = 13
                            mem[mem[64] + 4] = ext_call.return_data[0] + s
                            require ext_code.size(lenders)
                            staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (ext_call.return_data[0] + s)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_411] <= t:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _449 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _457 = mem[_449]
                                if mem[_449]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _467 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _457
                                    _477 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_477 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_477 + 36 len 28]
                                    mem[64] = _467 + 164
                                    mem[_467 + 100] = 32
                                    mem[_467 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _515 = mem[_477]
                                    idx = 0
                                    while idx < _515:
                                        mem[idx + _467 + 164] = mem[idx + _477 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_515) > _515:
                                        mem[_515 + _467 + 164] = 0
                                    call wantAddress.mem[_467 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_467 + 168 len _515 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_467 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_467 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _467 + 232] = mem[idx + _467 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_467 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_467 + 164] = return_data.size
                                        mem[_467 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_467 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_467 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _467 + ceil32(return_data.size) + 233] = mem[idx + _467 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_467 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_467 + 196] == bool(mem[_467 + 196])
                                            if not mem[_467 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 0 < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders)
                                call lenders.withdrawAll() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _445 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_445] == bool(mem[_445])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _489 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _493 = mem[_489]
                                if mem[_489]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _516 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _493
                                    _531 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_531 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_531 + 36 len 28]
                                    mem[64] = _516 + 164
                                    mem[_516 + 100] = 32
                                    mem[_516 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _613 = mem[_531]
                                    idx = 0
                                    while idx < _613:
                                        mem[idx + _516 + 164] = mem[idx + _531 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_613) > _613:
                                        mem[_613 + _516 + 164] = 0
                                    call wantAddress.mem[_516 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_516 + 168 len _613 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_516 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_516 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _516 + 232] = mem[idx + _516 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_516 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_516 + 164] = return_data.size
                                        mem[_516 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_516 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_516 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _516 + ceil32(return_data.size) + 233] = mem[idx + _516 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_516 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_516 + 196] == bool(mem[_516 + 196])
                                            if not mem[_516 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require lenders.length - 1 < lenders.length
                require idx < lenders.length
                lenders[idx] = lenders[lenders.length]
                require lenders.length
                mem[0] = 13
                lenders[lenders.length] = 0
                lenders.length--
                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if not stor11:
                        if lenders.length:
                            mem[(4 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = -1
                            while idx < lenders.length:
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].hasAssets() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _314 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_314] == bool(mem[_314])
                                if not mem[_314]:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].apr() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _358 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _362 = mem[_358]
                                if mem[_358] >= t:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].nav() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _378 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                idx = idx + 1
                                s = mem[_378]
                                t = _362
                                continue 
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            u = 0
                            while idx < lenders.length:
                                mem[0] = 13
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _414 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_414] <= u:
                                    idx = idx + 1
                                    u = u
                                    continue 
                                idx = idx + 1
                                u = mem[_414]
                                continue 
                            require 0 < lenders.length
                            mem[0] = 13
                            mem[mem[64] + 4] = ext_call.return_data[0] + s
                            require ext_code.size(lenders)
                            staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (ext_call.return_data[0] + s)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _413 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_413] <= t:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _450 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _458 = mem[_450]
                                if mem[_450]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _469 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _458
                                    _480 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_480 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_480 + 36 len 28]
                                    mem[64] = _469 + 164
                                    mem[_469 + 100] = 32
                                    mem[_469 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _517 = mem[_480]
                                    idx = 0
                                    while idx < _517:
                                        mem[idx + _469 + 164] = mem[idx + _480 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_517) > _517:
                                        mem[_517 + _469 + 164] = 0
                                    call wantAddress.mem[_469 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_469 + 168 len _517 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_469 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_469 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _469 + 232] = mem[idx + _469 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_469 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_469 + 164] = return_data.size
                                        mem[_469 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_469 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_469 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _469 + ceil32(return_data.size) + 233] = mem[idx + _469 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_469 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_469 + 196] == bool(mem[_469 + 196])
                                            if not mem[_469 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 0 < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders)
                                call lenders.withdrawAll() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _446 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_446] == bool(mem[_446])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _490 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _494 = mem[_490]
                                if mem[_490]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _518 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _494
                                    _533 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_533 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_533 + 36 len 28]
                                    mem[64] = _518 + 164
                                    mem[_518 + 100] = 32
                                    mem[_518 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _622 = mem[_533]
                                    idx = 0
                                    while idx < _622:
                                        mem[idx + _518 + 164] = mem[idx + _533 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_622) > _622:
                                        mem[_622 + _518 + 164] = 0
                                    call wantAddress.mem[_518 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_518 + 168 len _622 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_518 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_518 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _518 + 232] = mem[idx + _518 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_518 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_518 + 164] = return_data.size
                                        mem[_518 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_518 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_518 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _518 + ceil32(return_data.size) + 233] = mem[idx + _518 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_518 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_518 + 196] == bool(mem[_518 + 196])
                                            if not mem[_518 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'NOT LENDER'
}

function safeRemoveLender(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == strategistAddress:
        idx = 0
        while idx < lenders.length:
            mem[0] = 13
            if lenders[idx] != arg1:
                idx = idx + 1
                continue 
            require idx < lenders.length
            require ext_code.size(lenders[idx])
            call lenders[idx].withdrawAll() with:
                 gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'WITHDRAW FAILED'
            if idx == lenders.length - 1:
                require lenders.length
                mem[0] = 13
                lenders[lenders.length] = 0
                lenders.length--
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if not stor11:
                        if lenders.length:
                            mem[(2 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = -1
                            while idx < lenders.length:
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].hasAssets() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _319 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_319] == bool(mem[_319])
                                if not mem[_319]:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].apr() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _363 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _367 = mem[_363]
                                if mem[_363] >= t:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].nav() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _383 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                idx = idx + 1
                                s = mem[_383]
                                t = _367
                                continue 
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            u = 0
                            while idx < lenders.length:
                                mem[0] = 13
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _416 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_416] <= u:
                                    idx = idx + 1
                                    u = u
                                    continue 
                                idx = idx + 1
                                u = mem[_416]
                                continue 
                            require 0 < lenders.length
                            mem[0] = 13
                            mem[mem[64] + 4] = ext_call.return_data[0] + s
                            require ext_code.size(lenders)
                            staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (ext_call.return_data[0] + s)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _415 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_415] <= t:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _455 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _463 = mem[_455]
                                if mem[_455]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _471 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _463
                                    _479 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_479 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_479 + 36 len 28]
                                    mem[64] = _471 + 164
                                    mem[_471 + 100] = 32
                                    mem[_471 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _519 = mem[_479]
                                    idx = 0
                                    while idx < _519:
                                        mem[idx + _471 + 164] = mem[idx + _479 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_519) > _519:
                                        mem[_519 + _471 + 164] = 0
                                    call wantAddress.mem[_471 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_471 + 168 len _519 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_471 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_471 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _471 + 232] = mem[idx + _471 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_471 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_471 + 164] = return_data.size
                                        mem[_471 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_471 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_471 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _471 + ceil32(return_data.size) + 233] = mem[idx + _471 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_471 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_471 + 196] == bool(mem[_471 + 196])
                                            if not mem[_471 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 0 < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders)
                                call lenders.withdrawAll() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _451 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_451] == bool(mem[_451])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _495 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _499 = mem[_495]
                                if mem[_495]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _520 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _499
                                    _535 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_535 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_535 + 36 len 28]
                                    mem[64] = _520 + 164
                                    mem[_520 + 100] = 32
                                    mem[_520 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _603 = mem[_535]
                                    idx = 0
                                    while idx < _603:
                                        mem[idx + _520 + 164] = mem[idx + _535 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_603) > _603:
                                        mem[_603 + _520 + 164] = 0
                                    call wantAddress.mem[_520 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_520 + 168 len _603 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_520 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_520 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _520 + 232] = mem[idx + _520 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_520 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_520 + 164] = return_data.size
                                        mem[_520 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_520 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_520 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _520 + ceil32(return_data.size) + 233] = mem[idx + _520 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_520 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_520 + 196] == bool(mem[_520 + 196])
                                            if not mem[_520 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require lenders.length - 1 < lenders.length
                require idx < lenders.length
                lenders[idx] = lenders[lenders.length]
                require lenders.length
                mem[0] = 13
                lenders[lenders.length] = 0
                lenders.length--
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if not stor11:
                        if lenders.length:
                            mem[(2 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = -1
                            while idx < lenders.length:
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].hasAssets() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _320 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_320] == bool(mem[_320])
                                if not mem[_320]:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].apr() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _364 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _368 = mem[_364]
                                if mem[_364] >= t:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].nav() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _384 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                idx = idx + 1
                                s = mem[_384]
                                t = _368
                                continue 
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            u = 0
                            while idx < lenders.length:
                                mem[0] = 13
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _418 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_418] <= u:
                                    idx = idx + 1
                                    u = u
                                    continue 
                                idx = idx + 1
                                u = mem[_418]
                                continue 
                            require 0 < lenders.length
                            mem[0] = 13
                            mem[mem[64] + 4] = ext_call.return_data[0] + s
                            require ext_code.size(lenders)
                            staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (ext_call.return_data[0] + s)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _417 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_417] <= t:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _456 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _464 = mem[_456]
                                if mem[_456]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _473 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _464
                                    _482 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_482 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_482 + 36 len 28]
                                    mem[64] = _473 + 164
                                    mem[_473 + 100] = 32
                                    mem[_473 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _521 = mem[_482]
                                    idx = 0
                                    while idx < _521:
                                        mem[idx + _473 + 164] = mem[idx + _482 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_521) > _521:
                                        mem[_521 + _473 + 164] = 0
                                    call wantAddress.mem[_473 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_473 + 168 len _521 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_473 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_473 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _473 + 232] = mem[idx + _473 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_473 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_473 + 164] = return_data.size
                                        mem[_473 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_473 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_473 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _473 + ceil32(return_data.size) + 233] = mem[idx + _473 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_473 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_473 + 196] == bool(mem[_473 + 196])
                                            if not mem[_473 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 0 < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders)
                                call lenders.withdrawAll() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _452 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_452] == bool(mem[_452])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _496 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _500 = mem[_496]
                                if mem[_496]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _522 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _500
                                    _537 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_537 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_537 + 36 len 28]
                                    mem[64] = _522 + 164
                                    mem[_522 + 100] = 32
                                    mem[_522 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _612 = mem[_537]
                                    idx = 0
                                    while idx < _612:
                                        mem[idx + _522 + 164] = mem[idx + _537 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_612) > _612:
                                        mem[_612 + _522 + 164] = 0
                                    call wantAddress.mem[_522 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_522 + 168 len _612 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_522 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_522 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _522 + 232] = mem[idx + _522 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_522 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_522 + 164] = return_data.size
                                        mem[_522 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_522 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_522 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _522 + ceil32(return_data.size) + 233] = mem[idx + _522 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_522 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_522 + 196] == bool(mem[_522 + 196])
                                            if not mem[_522 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
        idx = 0
        while idx < lenders.length:
            mem[0] = 13
            if lenders[idx] != arg1:
                idx = idx + 1
                continue 
            require idx < lenders.length
            require ext_code.size(lenders[idx])
            call lenders[idx].withdrawAll() with:
                 gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'WITHDRAW FAILED'
            if idx == lenders.length - 1:
                require lenders.length
                mem[0] = 13
                lenders[lenders.length] = 0
                lenders.length--
                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if not stor11:
                        if lenders.length:
                            mem[(4 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = -1
                            while idx < lenders.length:
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].hasAssets() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _321 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_321] == bool(mem[_321])
                                if not mem[_321]:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].apr() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _365 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _369 = mem[_365]
                                if mem[_365] >= t:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].nav() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _385 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                idx = idx + 1
                                s = mem[_385]
                                t = _369
                                continue 
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            u = 0
                            while idx < lenders.length:
                                mem[0] = 13
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _420 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_420] <= u:
                                    idx = idx + 1
                                    u = u
                                    continue 
                                idx = idx + 1
                                u = mem[_420]
                                continue 
                            require 0 < lenders.length
                            mem[0] = 13
                            mem[mem[64] + 4] = ext_call.return_data[0] + s
                            require ext_code.size(lenders)
                            staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (ext_call.return_data[0] + s)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _419 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_419] <= t:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _457 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _465 = mem[_457]
                                if mem[_457]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _475 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _465
                                    _485 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_485 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_485 + 36 len 28]
                                    mem[64] = _475 + 164
                                    mem[_475 + 100] = 32
                                    mem[_475 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _523 = mem[_485]
                                    idx = 0
                                    while idx < _523:
                                        mem[idx + _475 + 164] = mem[idx + _485 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_523) > _523:
                                        mem[_523 + _475 + 164] = 0
                                    call wantAddress.mem[_475 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_475 + 168 len _523 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_475 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_475 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _475 + 232] = mem[idx + _475 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_475 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_475 + 164] = return_data.size
                                        mem[_475 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_475 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_475 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _475 + ceil32(return_data.size) + 233] = mem[idx + _475 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_475 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_475 + 196] == bool(mem[_475 + 196])
                                            if not mem[_475 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 0 < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders)
                                call lenders.withdrawAll() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _453 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_453] == bool(mem[_453])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _497 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _501 = mem[_497]
                                if mem[_497]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _524 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _501
                                    _539 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_539 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_539 + 36 len 28]
                                    mem[64] = _524 + 164
                                    mem[_524 + 100] = 32
                                    mem[_524 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _621 = mem[_539]
                                    idx = 0
                                    while idx < _621:
                                        mem[idx + _524 + 164] = mem[idx + _539 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_621) > _621:
                                        mem[_621 + _524 + 164] = 0
                                    call wantAddress.mem[_524 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_524 + 168 len _621 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_524 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_524 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _524 + 232] = mem[idx + _524 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_524 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_524 + 164] = return_data.size
                                        mem[_524 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_524 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_524 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _524 + ceil32(return_data.size) + 233] = mem[idx + _524 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_524 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_524 + 196] == bool(mem[_524 + 196])
                                            if not mem[_524 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require lenders.length - 1 < lenders.length
                require idx < lenders.length
                lenders[idx] = lenders[lenders.length]
                require lenders.length
                mem[0] = 13
                lenders[lenders.length] = 0
                lenders.length--
                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if not stor11:
                        if lenders.length:
                            mem[(4 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = -1
                            while idx < lenders.length:
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].hasAssets() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _322 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_322] == bool(mem[_322])
                                if not mem[_322]:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].apr() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _366 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _370 = mem[_366]
                                if mem[_366] >= t:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].nav() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _386 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                idx = idx + 1
                                s = mem[_386]
                                t = _370
                                continue 
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            u = 0
                            while idx < lenders.length:
                                mem[0] = 13
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                require ext_code.size(lenders[idx])
                                staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _422 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_422] <= u:
                                    idx = idx + 1
                                    u = u
                                    continue 
                                idx = idx + 1
                                u = mem[_422]
                                continue 
                            require 0 < lenders.length
                            mem[0] = 13
                            mem[mem[64] + 4] = ext_call.return_data[0] + s
                            require ext_code.size(lenders)
                            staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (ext_call.return_data[0] + s)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _421 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_421] <= t:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _458 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _466 = mem[_458]
                                if mem[_458]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _477 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _466
                                    _488 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_488 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_488 + 36 len 28]
                                    mem[64] = _477 + 164
                                    mem[_477 + 100] = 32
                                    mem[_477 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _525 = mem[_488]
                                    idx = 0
                                    while idx < _525:
                                        mem[idx + _477 + 164] = mem[idx + _488 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_525) > _525:
                                        mem[_525 + _477 + 164] = 0
                                    call wantAddress.mem[_477 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_477 + 168 len _525 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_477 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_477 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _477 + 232] = mem[idx + _477 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_477 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_477 + 164] = return_data.size
                                        mem[_477 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_477 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_477 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _477 + ceil32(return_data.size) + 233] = mem[idx + _477 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_477 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_477 + 196] == bool(mem[_477 + 196])
                                            if not mem[_477 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 0 < lenders.length
                                mem[0] = 13
                                require ext_code.size(lenders)
                                call lenders.withdrawAll() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _454 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_454] == bool(mem[_454])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _498 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _502 = mem[_498]
                                if mem[_498]:
                                    require 0 < lenders.length
                                    mem[0] = 13
                                    _526 = mem[64]
                                    mem[mem[64] + 36] = lenders
                                    mem[mem[64] + 68] = _502
                                    _541 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_541 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_541 + 36 len 28]
                                    mem[64] = _526 + 164
                                    mem[_526 + 100] = 32
                                    mem[_526 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    _630 = mem[_541]
                                    idx = 0
                                    while idx < _630:
                                        mem[idx + _526 + 164] = mem[idx + _541 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_630) > _630:
                                        mem[_630 + _526 + 164] = 0
                                    call wantAddress.mem[_526 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_526 + 168 len _630 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_526 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_526 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _526 + 232] = mem[idx + _526 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_526 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[_526 + 164] = return_data.size
                                        mem[_526 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_526 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_526 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _526 + ceil32(return_data.size) + 233] = mem[idx + _526 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_526 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_526 + 196] == bool(mem[_526 + 196])
                                            if not mem[_526 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require 0 < lenders.length
                                    require ext_code.size(lenders)
                                    call lenders.deposit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'NOT LENDER'
}

function tendTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
    mem[160] = wantAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _262 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _263 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _262 + (32 * _263) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _263] = mem[_262 + 224 len 32 * _263]
    require _263 - 1 < _263
    _515 = mem[(32 * _263 - 1) + ceil32(return_data.size) + 224]
    _516 = mem[64]
    mem[64] = mem[64] + 288
    mem[_516] = 0
    mem[_516 + 32] = 0
    mem[_516 + 64] = 0
    mem[_516 + 96] = 0
    mem[_516 + 128] = 0
    mem[_516 + 160] = 0
    mem[_516 + 192] = 0
    mem[_516 + 224] = 0
    mem[_516 + 256] = 0
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _519 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 288
    _520 = mem[64]
    require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
    mem[64] = mem[64] + 288
    mem[_520] = mem[_519]
    mem[_520 + 32] = mem[_519 + 32]
    mem[_520 + 64] = mem[_519 + 64]
    mem[_520 + 96] = mem[_519 + 96]
    mem[_520 + 128] = mem[_519 + 128]
    mem[_520 + 160] = mem[_519 + 160]
    mem[_520 + 192] = mem[_519 + 192]
    mem[_520 + 224] = mem[_519 + 224]
    mem[_520 + 256] = mem[_519 + 256]
    if 0 == mem[_520 + 32]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _540 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _543 = mem[_540]
        idx = 0
        s = 0
        t = -1
        while idx < lenders.length:
            mem[0] = 13
            require ext_code.size(lenders[idx])
            staticcall lenders[idx].hasAssets() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _776 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_776] == bool(mem[_776])
            if not mem[_776]:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < lenders.length
            mem[0] = 13
            require ext_code.size(lenders[idx])
            staticcall lenders[idx].apr() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _810 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _813 = mem[_810]
            if mem[_810] >= t:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < lenders.length
            mem[0] = 13
            require ext_code.size(lenders[idx])
            staticcall lenders[idx].nav() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _829 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_829]
            t = _813
            continue 
        if _543 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = 0
        u = 0
        while idx < lenders.length:
            mem[0] = 13
            mem[mem[64] + 4] = _543
            require ext_code.size(lenders[idx])
            staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                    gas gas_remaining wei
                   args _543
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1009 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1009] <= u:
                idx = idx + 1
                u = u
                continue 
            idx = idx + 1
            u = mem[_1009]
            continue 
        require 0 < lenders.length
        mem[0] = 13
        mem[mem[64] + 4] = _543 + s
        require ext_code.size(lenders)
        staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                gas gas_remaining wei
               args (_543 + s)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1008 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1020 = mem[_1008]
        if mem[_1008] <= t:
            return 0
        require 0 < lenders.length
        mem[0] = 13
        require ext_code.size(lenders)
        staticcall lenders.nav() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1061 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1067 = mem[_1061]
        if not mem[_1061]:
            _1095 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1095] = 26
            mem[_1095 + 32] = 'SafeMath: division by zero'
            _1105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1105] = 26
            mem[_1105 + 32] = 'SafeMath: division by zero'
            if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                if not arg1:
                    return 0
                if profitFactor * arg1 / arg1 != profitFactor:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (profitFactor * arg1 < 0)
            if wantToEthOracleAddress:
                mem[mem[64] + 4] = arg1
                require ext_code.size(wantToEthOracleAddress)
                staticcall wantToEthOracleAddress.0x780022a0 with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1172]:
                    return 0
                if profitFactor * mem[_1172] / mem[_1172] != profitFactor:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = profitFactor * mem[_1172] < 0
            else:
                _1126 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1126]
                mem[_1126 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                require 1 < mem[_1126]
                mem[_1126 + 64] = wantAddress
                mem[_1126 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1126 + 100] = arg1
                mem[_1126 + 132] = 64
                mem[_1126 + 164] = mem[_1126]
                idx = 0
                s = _1126 + 196
                t = _1126 + 32
                while idx < mem[_1126]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1126 + (32 * mem[_1126]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1543 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1561 = mem[_1543]
                require mem[_1543] <= test266151307()
                require _1543 + return_data.size > _1543 + mem[_1543] + 31
                _1579 = mem[_1543 + mem[_1543]]
                require mem[_1543 + mem[_1543]] <= test266151307()
                require (32 * mem[_1543 + mem[_1543]]) + 32 >= 0 and _1543 + ceil32(return_data.size) + (32 * mem[_1543 + mem[_1543]]) + 32 <= test266151307()
                mem[64] = _1543 + ceil32(return_data.size) + (32 * mem[_1543 + mem[_1543]]) + 32
                mem[_1543 + ceil32(return_data.size)] = _1579
                require return_data.size >= _1561 + (32 * _1579) + 32
                mem[_1543 + ceil32(return_data.size) + 32 len 32 * _1579] = mem[_1543 + _1561 + 32 len 32 * _1579]
                var133001 = _1543 + _1561 + (32 * _1579) + 32
                require _1579 - 1 < _1579
                if not mem[(32 * _1579 - 1) + _1543 + ceil32(return_data.size) + 32]:
                    return 0
                if profitFactor * mem[(32 * _1579 - 1) + _1543 + ceil32(return_data.size) + 32] / mem[(32 * _1579 - 1) + _1543 + ceil32(return_data.size) + 32] != profitFactor:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = profitFactor * mem[(32 * _1579 - 1) + _1543 + ceil32(return_data.size) + 32] < 0
        else:
            if t * mem[_1061] / mem[_1061] != t:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_1061]:
                _1097 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1097] = 26
                mem[_1097 + 32] = 'SafeMath: division by zero'
                if -1 * t * _1067 / 10^18:
                    if maxReportDelay * -1 * t * _1067 / 10^18 / -1 * t * _1067 / 10^18 != maxReportDelay:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1114 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1114] = 26
                    mem[_1114 + 32] = 'SafeMath: division by zero'
                    if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                        if not arg1:
                            return (0 < maxReportDelay * -1 * t * _1067 / 10^18 / 31556952)
                        if profitFactor * arg1 / arg1 != profitFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (profitFactor * arg1 < maxReportDelay * -1 * t * _1067 / 10^18 / 31556952)
                    if wantToEthOracleAddress:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(wantToEthOracleAddress)
                        staticcall wantToEthOracleAddress.0x780022a0 with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1199 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_1199]:
                            return (0 < maxReportDelay * -1 * t * _1067 / 10^18 / 31556952)
                        if profitFactor * mem[_1199] / mem[_1199] != profitFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = profitFactor * mem[_1199] < maxReportDelay * -1 * t * _1067 / 10^18 / 31556952
                    else:
                        _1151 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1151]
                        mem[_1151 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                        require 1 < mem[_1151]
                        mem[_1151 + 64] = wantAddress
                        mem[_1151 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1151 + 100] = arg1
                        mem[_1151 + 132] = 64
                        mem[_1151 + 164] = mem[_1151]
                        idx = 0
                        s = _1151 + 196
                        u = _1151 + 32
                        while idx < mem[_1151]:
                            mem[s] = mem[u + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            u = u + 32
                            continue 
                        require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                        staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1151 + (32 * mem[_1151]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1541 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1559 = mem[_1541]
                        require mem[_1541] <= test266151307()
                        require _1541 + return_data.size > _1541 + mem[_1541] + 31
                        _1577 = mem[_1541 + mem[_1541]]
                        require mem[_1541 + mem[_1541]] <= test266151307()
                        require (32 * mem[_1541 + mem[_1541]]) + 32 >= 0 and _1541 + ceil32(return_data.size) + (32 * mem[_1541 + mem[_1541]]) + 32 <= test266151307()
                        mem[64] = _1541 + ceil32(return_data.size) + (32 * mem[_1541 + mem[_1541]]) + 32
                        mem[_1541 + ceil32(return_data.size)] = _1577
                        require return_data.size >= _1559 + (32 * _1577) + 32
                        mem[_1541 + ceil32(return_data.size) + 32 len 32 * _1577] = mem[_1541 + _1559 + 32 len 32 * _1577]
                        require _1577 - 1 < _1577
                        if not mem[(32 * _1577 - 1) + _1541 + ceil32(return_data.size) + 32]:
                            return (0 < maxReportDelay * -1 * t * _1067 / 10^18 / 31556952)
                        if profitFactor * mem[(32 * _1577 - 1) + _1541 + ceil32(return_data.size) + 32] / mem[(32 * _1577 - 1) + _1541 + ceil32(return_data.size) + 32] != profitFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = profitFactor * mem[(32 * _1577 - 1) + _1541 + ceil32(return_data.size) + 32] < maxReportDelay * -1 * t * _1067 / 10^18 / 31556952
                else:
                    _1109 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1109] = 26
                    mem[_1109 + 32] = 'SafeMath: division by zero'
                    if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                        if not arg1:
                            return 0
                        if profitFactor * arg1 / arg1 != profitFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (profitFactor * arg1 < 0)
                    if wantToEthOracleAddress:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(wantToEthOracleAddress)
                        staticcall wantToEthOracleAddress.0x780022a0 with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_1185]:
                            return 0
                        if profitFactor * mem[_1185] / mem[_1185] != profitFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = profitFactor * mem[_1185] < 0
                    else:
                        _1136 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1136]
                        mem[_1136 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                        require 1 < mem[_1136]
                        mem[_1136 + 64] = wantAddress
                        mem[_1136 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1136 + 100] = arg1
                        mem[_1136 + 132] = 64
                        mem[_1136 + 164] = mem[_1136]
                        idx = 0
                        s = _1136 + 196
                        t = _1136 + 32
                        while idx < mem[_1136]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                        staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1136 + (32 * mem[_1136]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1542 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1560 = mem[_1542]
                        require mem[_1542] <= test266151307()
                        require _1542 + return_data.size > _1542 + mem[_1542] + 31
                        _1578 = mem[_1542 + mem[_1542]]
                        require mem[_1542 + mem[_1542]] <= test266151307()
                        require (32 * mem[_1542 + mem[_1542]]) + 32 >= 0 and _1542 + ceil32(return_data.size) + (32 * mem[_1542 + mem[_1542]]) + 32 <= test266151307()
                        mem[64] = _1542 + ceil32(return_data.size) + (32 * mem[_1542 + mem[_1542]]) + 32
                        mem[_1542 + ceil32(return_data.size)] = _1578
                        require return_data.size >= _1560 + (32 * _1578) + 32
                        mem[_1542 + ceil32(return_data.size) + 32 len 32 * _1578] = mem[_1542 + _1560 + 32 len 32 * _1578]
                        var134001 = _1542 + _1560 + (32 * _1578) + 32
                        require _1578 - 1 < _1578
                        if not mem[(32 * _1578 - 1) + _1542 + ceil32(return_data.size) + 32]:
                            return 0
                        if profitFactor * mem[(32 * _1578 - 1) + _1542 + ceil32(return_data.size) + 32] / mem[(32 * _1578 - 1) + _1542 + ceil32(return_data.size) + 32] != profitFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = profitFactor * mem[(32 * _1578 - 1) + _1542 + ceil32(return_data.size) + 32] < 0
            else:
                if _1020 * mem[_1061] / mem[_1061] != _1020:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1100] = 26
                mem[_1100 + 32] = 'SafeMath: division by zero'
                if not (_1020 * _1067) - (t * _1067) / 10^18:
                    _1113 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1113] = 26
                    mem[_1113 + 32] = 'SafeMath: division by zero'
                    if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                        if not arg1:
                            return 0
                        if profitFactor * arg1 / arg1 != profitFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (profitFactor * arg1 < 0)
                    if wantToEthOracleAddress:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(wantToEthOracleAddress)
                        staticcall wantToEthOracleAddress.0x780022a0 with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1197 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_1197]:
                            return 0
                        if profitFactor * mem[_1197] / mem[_1197] != profitFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = profitFactor * mem[_1197] < 0
                    else:
                        _1149 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1149]
                        mem[_1149 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                        require 1 < mem[_1149]
                        mem[_1149 + 64] = wantAddress
                        mem[_1149 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1149 + 100] = arg1
                        mem[_1149 + 132] = 64
                        mem[_1149 + 164] = mem[_1149]
                        idx = 0
                        s = _1149 + 196
                        t = _1149 + 32
                        while idx < mem[_1149]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                        staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1149 + (32 * mem[_1149]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1540 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1558 = mem[_1540]
                        require mem[_1540] <= test266151307()
                        require _1540 + return_data.size > _1540 + mem[_1540] + 31
                        _1576 = mem[_1540 + mem[_1540]]
                        require mem[_1540 + mem[_1540]] <= test266151307()
                        require (32 * mem[_1540 + mem[_1540]]) + 32 >= 0 and _1540 + ceil32(return_data.size) + (32 * mem[_1540 + mem[_1540]]) + 32 <= test266151307()
                        mem[64] = _1540 + ceil32(return_data.size) + (32 * mem[_1540 + mem[_1540]]) + 32
                        mem[_1540 + ceil32(return_data.size)] = _1576
                        require return_data.size >= _1558 + (32 * _1576) + 32
                        mem[_1540 + ceil32(return_data.size) + 32 len 32 * _1576] = mem[_1540 + _1558 + 32 len 32 * _1576]
                        require _1576 - 1 < _1576
                        if not mem[(32 * _1576 - 1) + _1540 + ceil32(return_data.size) + 32]:
                            return 0
                        if profitFactor * mem[(32 * _1576 - 1) + _1540 + ceil32(return_data.size) + 32] / mem[(32 * _1576 - 1) + _1540 + ceil32(return_data.size) + 32] != profitFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = profitFactor * mem[(32 * _1576 - 1) + _1540 + ceil32(return_data.size) + 32] < 0
                else:
                    if maxReportDelay * (_1020 * _1067) - (t * _1067) / 10^18 / (_1020 * _1067) - (t * _1067) / 10^18 != maxReportDelay:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1118 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1118] = 26
                    mem[_1118 + 32] = 'SafeMath: division by zero'
                    if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                        if not arg1:
                            return (0 < maxReportDelay * (_1020 * _1067) - (t * _1067) / 10^18 / 31556952)
                        if profitFactor * arg1 / arg1 != profitFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (profitFactor * arg1 < maxReportDelay * (_1020 * _1067) - (t * _1067) / 10^18 / 31556952)
                    if wantToEthOracleAddress:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(wantToEthOracleAddress)
                        staticcall wantToEthOracleAddress.0x780022a0 with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1213 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_1213]:
                            return (0 < maxReportDelay * (_1020 * _1067) - (t * _1067) / 10^18 / 31556952)
                        if profitFactor * mem[_1213] / mem[_1213] != profitFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = profitFactor * mem[_1213] < maxReportDelay * (_1020 * _1067) - (t * _1067) / 10^18 / 31556952
                    else:
                        _1165 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1165]
                        mem[_1165 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                        require 1 < mem[_1165]
                        mem[_1165 + 64] = wantAddress
                        mem[_1165 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1165 + 100] = arg1
                        mem[_1165 + 132] = 64
                        mem[_1165 + 164] = mem[_1165]
                        idx = 0
                        s = _1165 + 196
                        u = _1165 + 32
                        while idx < mem[_1165]:
                            mem[s] = mem[u + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            u = u + 32
                            continue 
                        require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                        staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1165 + (32 * mem[_1165]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1539 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1557 = mem[_1539]
                        require mem[_1539] <= test266151307()
                        require _1539 + return_data.size > _1539 + mem[_1539] + 31
                        _1575 = mem[_1539 + mem[_1539]]
                        require mem[_1539 + mem[_1539]] <= test266151307()
                        require (32 * mem[_1539 + mem[_1539]]) + 32 >= 0 and _1539 + ceil32(return_data.size) + (32 * mem[_1539 + mem[_1539]]) + 32 <= test266151307()
                        mem[64] = _1539 + ceil32(return_data.size) + (32 * mem[_1539 + mem[_1539]]) + 32
                        mem[_1539 + ceil32(return_data.size)] = _1575
                        require return_data.size >= _1557 + (32 * _1575) + 32
                        mem[_1539 + ceil32(return_data.size) + 32 len 32 * _1575] = mem[_1539 + _1557 + 32 len 32 * _1575]
                        var136001 = _1539 + _1557 + (32 * _1575) + 32
                        require _1575 - 1 < _1575
                        if not mem[(32 * _1575 - 1) + _1539 + ceil32(return_data.size) + 32]:
                            return (0 < maxReportDelay * (_1020 * _1067) - (t * _1067) / 10^18 / 31556952)
                        if profitFactor * mem[(32 * _1575 - 1) + _1539 + ceil32(return_data.size) + 32] / mem[(32 * _1575 - 1) + _1539 + ceil32(return_data.size) + 32] != profitFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = profitFactor * mem[(32 * _1575 - 1) + _1539 + ceil32(return_data.size) + 32] < maxReportDelay * (_1020 * _1067) - (t * _1067) / 10^18 / 31556952
    else:
        _531 = mem[_520 + 160]
        _532 = mem[64]
        mem[64] = mem[64] + 64
        mem[_532] = 30
        mem[_532 + 32] = 'SafeMath: subtraction overflow'
        if _531 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp - _531 < minReportDelay:
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _552 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _558 = mem[_552]
            idx = 0
            s = 0
            t = -1
            while idx < lenders.length:
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].hasAssets() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _775 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_775] == bool(mem[_775])
                if not mem[_775]:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require idx < lenders.length
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].apr() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _809 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _812 = mem[_809]
                if mem[_809] >= t:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require idx < lenders.length
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].nav() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _828 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_828]
                t = _812
                continue 
            if _558 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = 0
            u = 0
            while idx < lenders.length:
                mem[0] = 13
                mem[mem[64] + 4] = _558
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                        gas gas_remaining wei
                       args _558
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1007 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1007] <= u:
                    idx = idx + 1
                    u = u
                    continue 
                idx = idx + 1
                u = mem[_1007]
                continue 
            require 0 < lenders.length
            mem[0] = 13
            mem[mem[64] + 4] = _558 + s
            require ext_code.size(lenders)
            staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_558 + s)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1006 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1018 = mem[_1006]
            if mem[_1006] <= t:
                return 0
            require 0 < lenders.length
            mem[0] = 13
            require ext_code.size(lenders)
            staticcall lenders.nav() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1059 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1066 = mem[_1059]
            if not mem[_1059]:
                _1093 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1093] = 26
                mem[_1093 + 32] = 'SafeMath: division by zero'
                _1103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1103] = 26
                mem[_1103 + 32] = 'SafeMath: division by zero'
                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                    if not arg1:
                        return 0
                    if profitFactor * arg1 / arg1 != profitFactor:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (profitFactor * arg1 < 0)
                if wantToEthOracleAddress:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(wantToEthOracleAddress)
                    staticcall wantToEthOracleAddress.0x780022a0 with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1163 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_1163]:
                        return 0
                    if profitFactor * mem[_1163] / mem[_1163] != profitFactor:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = profitFactor * mem[_1163] < 0
                else:
                    _1123 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1123]
                    mem[_1123 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                    require 1 < mem[_1123]
                    mem[_1123 + 64] = wantAddress
                    mem[_1123 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1123 + 100] = arg1
                    mem[_1123 + 132] = 64
                    mem[_1123 + 164] = mem[_1123]
                    idx = 0
                    s = _1123 + 196
                    t = _1123 + 32
                    while idx < mem[_1123]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1123 + (32 * mem[_1123]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1538 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1556 = mem[_1538]
                    require mem[_1538] <= test266151307()
                    require _1538 + return_data.size > _1538 + mem[_1538] + 31
                    _1574 = mem[_1538 + mem[_1538]]
                    require mem[_1538 + mem[_1538]] <= test266151307()
                    require (32 * mem[_1538 + mem[_1538]]) + 32 >= 0 and _1538 + ceil32(return_data.size) + (32 * mem[_1538 + mem[_1538]]) + 32 <= test266151307()
                    mem[64] = _1538 + ceil32(return_data.size) + (32 * mem[_1538 + mem[_1538]]) + 32
                    mem[_1538 + ceil32(return_data.size)] = _1574
                    require return_data.size >= _1556 + (32 * _1574) + 32
                    mem[_1538 + ceil32(return_data.size) + 32 len 32 * _1574] = mem[_1538 + _1556 + 32 len 32 * _1574]
                    require _1574 - 1 < _1574
                    if not mem[(32 * _1574 - 1) + _1538 + ceil32(return_data.size) + 32]:
                        return 0
                    if profitFactor * mem[(32 * _1574 - 1) + _1538 + ceil32(return_data.size) + 32] / mem[(32 * _1574 - 1) + _1538 + ceil32(return_data.size) + 32] != profitFactor:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = profitFactor * mem[(32 * _1574 - 1) + _1538 + ceil32(return_data.size) + 32] < 0
            else:
                if t * mem[_1059] / mem[_1059] != t:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_1059]:
                    _1096 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1096] = 26
                    mem[_1096 + 32] = 'SafeMath: division by zero'
                    if not -1 * t * _1066 / 10^18:
                        _1107 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1107] = 26
                        mem[_1107 + 32] = 'SafeMath: division by zero'
                        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                            if not arg1:
                                return 0
                            if profitFactor * arg1 / arg1 != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            return (profitFactor * arg1 < 0)
                        if wantToEthOracleAddress:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(wantToEthOracleAddress)
                            staticcall wantToEthOracleAddress.0x780022a0 with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1178 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1178]:
                                return 0
                            if profitFactor * mem[_1178] / mem[_1178] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[_1178] < 0
                        else:
                            _1130 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1130]
                            mem[_1130 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                            require 1 < mem[_1130]
                            mem[_1130 + 64] = wantAddress
                            mem[_1130 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1130 + 100] = arg1
                            mem[_1130 + 132] = 64
                            mem[_1130 + 164] = mem[_1130]
                            idx = 0
                            s = _1130 + 196
                            t = _1130 + 32
                            while idx < mem[_1130]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1130 + (32 * mem[_1130]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1537 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1555 = mem[_1537]
                            require mem[_1537] <= test266151307()
                            require _1537 + return_data.size > _1537 + mem[_1537] + 31
                            _1573 = mem[_1537 + mem[_1537]]
                            require mem[_1537 + mem[_1537]] <= test266151307()
                            require (32 * mem[_1537 + mem[_1537]]) + 32 >= 0 and _1537 + ceil32(return_data.size) + (32 * mem[_1537 + mem[_1537]]) + 32 <= test266151307()
                            mem[64] = _1537 + ceil32(return_data.size) + (32 * mem[_1537 + mem[_1537]]) + 32
                            mem[_1537 + ceil32(return_data.size)] = _1573
                            require return_data.size >= _1555 + (32 * _1573) + 32
                            mem[_1537 + ceil32(return_data.size) + 32 len 32 * _1573] = mem[_1537 + _1555 + 32 len 32 * _1573]
                            require _1573 - 1 < _1573
                            if not mem[(32 * _1573 - 1) + _1537 + ceil32(return_data.size) + 32]:
                                return 0
                            if profitFactor * mem[(32 * _1573 - 1) + _1537 + ceil32(return_data.size) + 32] / mem[(32 * _1573 - 1) + _1537 + ceil32(return_data.size) + 32] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[(32 * _1573 - 1) + _1537 + ceil32(return_data.size) + 32] < 0
                    else:
                        if maxReportDelay * -1 * t * _1066 / 10^18 / -1 * t * _1066 / 10^18 != maxReportDelay:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1111 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1111] = 26
                        mem[_1111 + 32] = 'SafeMath: division by zero'
                        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                            if not arg1:
                                return (0 < maxReportDelay * -1 * t * _1066 / 10^18 / 31556952)
                            if profitFactor * arg1 / arg1 != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            return (profitFactor * arg1 < maxReportDelay * -1 * t * _1066 / 10^18 / 31556952)
                        if wantToEthOracleAddress:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(wantToEthOracleAddress)
                            staticcall wantToEthOracleAddress.0x780022a0 with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1191 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1191]:
                                return (0 < maxReportDelay * -1 * t * _1066 / 10^18 / 31556952)
                            if profitFactor * mem[_1191] / mem[_1191] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[_1191] < maxReportDelay * -1 * t * _1066 / 10^18 / 31556952
                        else:
                            _1143 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1143]
                            mem[_1143 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                            require 1 < mem[_1143]
                            mem[_1143 + 64] = wantAddress
                            mem[_1143 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1143 + 100] = arg1
                            mem[_1143 + 132] = 64
                            mem[_1143 + 164] = mem[_1143]
                            idx = 0
                            s = _1143 + 196
                            u = _1143 + 32
                            while idx < mem[_1143]:
                                mem[s] = mem[u + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                u = u + 32
                                continue 
                            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1143 + (32 * mem[_1143]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1536 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1554 = mem[_1536]
                            require mem[_1536] <= test266151307()
                            require _1536 + return_data.size > _1536 + mem[_1536] + 31
                            _1572 = mem[_1536 + mem[_1536]]
                            require mem[_1536 + mem[_1536]] <= test266151307()
                            require (32 * mem[_1536 + mem[_1536]]) + 32 >= 0 and _1536 + ceil32(return_data.size) + (32 * mem[_1536 + mem[_1536]]) + 32 <= test266151307()
                            mem[64] = _1536 + ceil32(return_data.size) + (32 * mem[_1536 + mem[_1536]]) + 32
                            mem[_1536 + ceil32(return_data.size)] = _1572
                            require return_data.size >= _1554 + (32 * _1572) + 32
                            mem[_1536 + ceil32(return_data.size) + 32 len 32 * _1572] = mem[_1536 + _1554 + 32 len 32 * _1572]
                            require _1572 - 1 < _1572
                            if not mem[(32 * _1572 - 1) + _1536 + ceil32(return_data.size) + 32]:
                                return (0 < maxReportDelay * -1 * t * _1066 / 10^18 / 31556952)
                            if profitFactor * mem[(32 * _1572 - 1) + _1536 + ceil32(return_data.size) + 32] / mem[(32 * _1572 - 1) + _1536 + ceil32(return_data.size) + 32] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[(32 * _1572 - 1) + _1536 + ceil32(return_data.size) + 32] < maxReportDelay * -1 * t * _1066 / 10^18 / 31556952
                else:
                    if _1018 * mem[_1059] / mem[_1059] != _1018:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1098 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1098] = 26
                    mem[_1098 + 32] = 'SafeMath: division by zero'
                    if not (_1018 * _1066) - (t * _1066) / 10^18:
                        _1110 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1110] = 26
                        mem[_1110 + 32] = 'SafeMath: division by zero'
                        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                            if not arg1:
                                return 0
                            if profitFactor * arg1 / arg1 != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            return (profitFactor * arg1 < 0)
                        if wantToEthOracleAddress:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(wantToEthOracleAddress)
                            staticcall wantToEthOracleAddress.0x780022a0 with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1189 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1189]:
                                return 0
                            if profitFactor * mem[_1189] / mem[_1189] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[_1189] < 0
                        else:
                            _1141 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1141]
                            mem[_1141 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                            require 1 < mem[_1141]
                            mem[_1141 + 64] = wantAddress
                            mem[_1141 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1141 + 100] = arg1
                            mem[_1141 + 132] = 64
                            mem[_1141 + 164] = mem[_1141]
                            idx = 0
                            s = _1141 + 196
                            t = _1141 + 32
                            while idx < mem[_1141]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1141 + (32 * mem[_1141]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1535 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1553 = mem[_1535]
                            require mem[_1535] <= test266151307()
                            require _1535 + return_data.size > _1535 + mem[_1535] + 31
                            _1571 = mem[_1535 + mem[_1535]]
                            require mem[_1535 + mem[_1535]] <= test266151307()
                            require (32 * mem[_1535 + mem[_1535]]) + 32 >= 0 and _1535 + ceil32(return_data.size) + (32 * mem[_1535 + mem[_1535]]) + 32 <= test266151307()
                            mem[64] = _1535 + ceil32(return_data.size) + (32 * mem[_1535 + mem[_1535]]) + 32
                            mem[_1535 + ceil32(return_data.size)] = _1571
                            require return_data.size >= _1553 + (32 * _1571) + 32
                            mem[_1535 + ceil32(return_data.size) + 32 len 32 * _1571] = mem[_1535 + _1553 + 32 len 32 * _1571]
                            require _1571 - 1 < _1571
                            if not mem[(32 * _1571 - 1) + _1535 + ceil32(return_data.size) + 32]:
                                return 0
                            if profitFactor * mem[(32 * _1571 - 1) + _1535 + ceil32(return_data.size) + 32] / mem[(32 * _1571 - 1) + _1535 + ceil32(return_data.size) + 32] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[(32 * _1571 - 1) + _1535 + ceil32(return_data.size) + 32] < 0
                    else:
                        if maxReportDelay * (_1018 * _1066) - (t * _1066) / 10^18 / (_1018 * _1066) - (t * _1066) / 10^18 != maxReportDelay:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1116 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1116] = 26
                        mem[_1116 + 32] = 'SafeMath: division by zero'
                        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                            if not arg1:
                                return (0 < maxReportDelay * (_1018 * _1066) - (t * _1066) / 10^18 / 31556952)
                            if profitFactor * arg1 / arg1 != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            return (profitFactor * arg1 < maxReportDelay * (_1018 * _1066) - (t * _1066) / 10^18 / 31556952)
                        if wantToEthOracleAddress:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(wantToEthOracleAddress)
                            staticcall wantToEthOracleAddress.0x780022a0 with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1204 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1204]:
                                return (0 < maxReportDelay * (_1018 * _1066) - (t * _1066) / 10^18 / 31556952)
                            if profitFactor * mem[_1204] / mem[_1204] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[_1204] < maxReportDelay * (_1018 * _1066) - (t * _1066) / 10^18 / 31556952
                        else:
                            _1156 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1156]
                            mem[_1156 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                            require 1 < mem[_1156]
                            mem[_1156 + 64] = wantAddress
                            mem[_1156 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1156 + 100] = arg1
                            mem[_1156 + 132] = 64
                            mem[_1156 + 164] = mem[_1156]
                            idx = 0
                            s = _1156 + 196
                            u = _1156 + 32
                            while idx < mem[_1156]:
                                mem[s] = mem[u + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                u = u + 32
                                continue 
                            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1156 + (32 * mem[_1156]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1534 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1552 = mem[_1534]
                            require mem[_1534] <= test266151307()
                            require _1534 + return_data.size > _1534 + mem[_1534] + 31
                            _1570 = mem[_1534 + mem[_1534]]
                            require mem[_1534 + mem[_1534]] <= test266151307()
                            require (32 * mem[_1534 + mem[_1534]]) + 32 >= 0 and _1534 + ceil32(return_data.size) + (32 * mem[_1534 + mem[_1534]]) + 32 <= test266151307()
                            mem[64] = _1534 + ceil32(return_data.size) + (32 * mem[_1534 + mem[_1534]]) + 32
                            mem[_1534 + ceil32(return_data.size)] = _1570
                            require return_data.size >= _1552 + (32 * _1570) + 32
                            mem[_1534 + ceil32(return_data.size) + 32 len 32 * _1570] = mem[_1534 + _1552 + 32 len 32 * _1570]
                            var142001 = _1534 + _1552 + (32 * _1570) + 32
                            require _1570 - 1 < _1570
                            if not mem[(32 * _1570 - 1) + _1534 + ceil32(return_data.size) + 32]:
                                return (0 < maxReportDelay * (_1018 * _1066) - (t * _1066) / 10^18 / 31556952)
                            if profitFactor * mem[(32 * _1570 - 1) + _1534 + ceil32(return_data.size) + 32] / mem[(32 * _1570 - 1) + _1534 + ceil32(return_data.size) + 32] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[(32 * _1570 - 1) + _1534 + ceil32(return_data.size) + 32] < maxReportDelay * (_1018 * _1066) - (t * _1066) / 10^18 / 31556952
        else:
            _536 = mem[_520 + 160]
            _538 = mem[64]
            mem[64] = mem[64] + 64
            mem[_538] = 30
            mem[_538 + 32] = 'SafeMath: subtraction overflow'
            if _536 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp - _536 >= maxReportDelay:
                return 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.debtOutstanding() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _550 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_550] > debtThreshold:
                return 0
            idx = 0
            s = 0
            while idx < lenders.length:
                mem[0] = 13
                require ext_code.size(lenders[idx])
                staticcall lenders[idx].nav() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _774 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _784 = mem[_774]
                if mem[_774] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_774] + s
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _783 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _791 = mem[_783]
            if mem[_783] + (_784 * lenders.length) < _784 * lenders.length:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + mem[_783] + (_784 * lenders.length) < mem[_520 + 192]:
                return 0
            if mem[_783] + (_784 * lenders.length) <= mem[_520 + 192]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _826 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_826] < mem[_826]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    if 0 < mem[_826]:
                        return 0
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _858 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _861 = mem[_858]
                    idx = 0
                    s = 0
                    t = -1
                    while idx < lenders.length:
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].hasAssets() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _989 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_989] == bool(mem[_989])
                        if not mem[_989]:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < lenders.length
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].apr() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1055 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1063 = mem[_1055]
                        if mem[_1055] >= t:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < lenders.length
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].nav() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1081 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        s = mem[_1081]
                        t = _1063
                        continue 
                    if _861 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = 0
                    u = 0
                    while idx < lenders.length:
                        mem[0] = 13
                        mem[mem[64] + 4] = _861
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                gas gas_remaining wei
                               args _861
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1547 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1547] <= u:
                            idx = idx + 1
                            u = u
                            continue 
                        idx = idx + 1
                        u = mem[_1547]
                        continue 
                    require 0 < lenders.length
                    mem[0] = 13
                    mem[mem[64] + 4] = _861 + s
                    require ext_code.size(lenders)
                    staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_861 + s)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1546 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1564 = mem[_1546]
                    if mem[_1546] <= t:
                        return 0
                    require 0 < lenders.length
                    mem[0] = 13
                    require ext_code.size(lenders)
                    staticcall lenders.nav() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1609 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1615 = mem[_1609]
                    if not mem[_1609]:
                        _1669 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1669] = 26
                        mem[_1669 + 32] = 'SafeMath: division by zero'
                        _1749 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1749] = 26
                        mem[_1749 + 32] = 'SafeMath: division by zero'
                        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                            if not arg1:
                                return 0
                            if profitFactor * arg1 / arg1 != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            return (profitFactor * arg1 < 0)
                        if wantToEthOracleAddress:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(wantToEthOracleAddress)
                            staticcall wantToEthOracleAddress.0x780022a0 with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1870 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1870]:
                                return 0
                            if profitFactor * mem[_1870] / mem[_1870] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[_1870] < 0
                        else:
                            _1790 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1790]
                            mem[_1790 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                            require 1 < mem[_1790]
                            mem[_1790 + 64] = wantAddress
                            mem[_1790 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1790 + 100] = arg1
                            mem[_1790 + 132] = 64
                            mem[_1790 + 164] = mem[_1790]
                            idx = 0
                            s = _1790 + 196
                            t = _1790 + 32
                            while idx < mem[_1790]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1790 + (32 * mem[_1790]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2611 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2631 = mem[_2611]
                            require mem[_2611] <= test266151307()
                            require _2611 + return_data.size > _2611 + mem[_2611] + 31
                            _2651 = mem[_2611 + mem[_2611]]
                            require mem[_2611 + mem[_2611]] <= test266151307()
                            require (32 * mem[_2611 + mem[_2611]]) + 32 >= 0 and _2611 + ceil32(return_data.size) + (32 * mem[_2611 + mem[_2611]]) + 32 <= test266151307()
                            mem[64] = _2611 + ceil32(return_data.size) + (32 * mem[_2611 + mem[_2611]]) + 32
                            mem[_2611 + ceil32(return_data.size)] = _2651
                            require return_data.size >= _2631 + (32 * _2651) + 32
                            mem[_2611 + ceil32(return_data.size) + 32 len 32 * _2651] = mem[_2611 + _2631 + 32 len 32 * _2651]
                            require _2651 - 1 < _2651
                            if not mem[(32 * _2651 - 1) + _2611 + ceil32(return_data.size) + 32]:
                                return 0
                            if profitFactor * mem[(32 * _2651 - 1) + _2611 + ceil32(return_data.size) + 32] / mem[(32 * _2651 - 1) + _2611 + ceil32(return_data.size) + 32] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[(32 * _2651 - 1) + _2611 + ceil32(return_data.size) + 32] < 0
                    else:
                        if t * mem[_1609] / mem[_1609] != t:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not mem[_1609]:
                            _1685 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1685] = 26
                            mem[_1685 + 32] = 'SafeMath: division by zero'
                            if not -1 * t * _1615 / 10^18:
                                _1757 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1757] = 26
                                mem[_1757 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return 0
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < 0)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1901 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1901]:
                                        return 0
                                    if profitFactor * mem[_1901] / mem[_1901] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1901] < 0
                                else:
                                    _1806 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1806]
                                    mem[_1806 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1806]
                                    mem[_1806 + 64] = wantAddress
                                    mem[_1806 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1806 + 100] = arg1
                                    mem[_1806 + 132] = 64
                                    mem[_1806 + 164] = mem[_1806]
                                    idx = 0
                                    s = _1806 + 196
                                    t = _1806 + 32
                                    while idx < mem[_1806]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1806 + (32 * mem[_1806]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2610 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2630 = mem[_2610]
                                    require mem[_2610] <= test266151307()
                                    require _2610 + return_data.size > _2610 + mem[_2610] + 31
                                    _2650 = mem[_2610 + mem[_2610]]
                                    require mem[_2610 + mem[_2610]] <= test266151307()
                                    require (32 * mem[_2610 + mem[_2610]]) + 32 >= 0 and _2610 + ceil32(return_data.size) + (32 * mem[_2610 + mem[_2610]]) + 32 <= test266151307()
                                    mem[64] = _2610 + ceil32(return_data.size) + (32 * mem[_2610 + mem[_2610]]) + 32
                                    mem[_2610 + ceil32(return_data.size)] = _2650
                                    require return_data.size >= _2630 + (32 * _2650) + 32
                                    mem[_2610 + ceil32(return_data.size) + 32 len 32 * _2650] = mem[_2610 + _2630 + 32 len 32 * _2650]
                                    require _2650 - 1 < _2650
                                    if not mem[(32 * _2650 - 1) + _2610 + ceil32(return_data.size) + 32]:
                                        return 0
                                    if profitFactor * mem[(32 * _2650 - 1) + _2610 + ceil32(return_data.size) + 32] / mem[(32 * _2650 - 1) + _2610 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2650 - 1) + _2610 + ceil32(return_data.size) + 32] < 0
                            else:
                                if maxReportDelay * -1 * t * _1615 / 10^18 / -1 * t * _1615 / 10^18 != maxReportDelay:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1766 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1766] = 26
                                mem[_1766 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return (0 < maxReportDelay * -1 * t * _1615 / 10^18 / 31556952)
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < maxReportDelay * -1 * t * _1615 / 10^18 / 31556952)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1929 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1929]:
                                        return (0 < maxReportDelay * -1 * t * _1615 / 10^18 / 31556952)
                                    if profitFactor * mem[_1929] / mem[_1929] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1929] < maxReportDelay * -1 * t * _1615 / 10^18 / 31556952
                                else:
                                    _1833 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1833]
                                    mem[_1833 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1833]
                                    mem[_1833 + 64] = wantAddress
                                    mem[_1833 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1833 + 100] = arg1
                                    mem[_1833 + 132] = 64
                                    mem[_1833 + 164] = mem[_1833]
                                    idx = 0
                                    s = _1833 + 196
                                    u = _1833 + 32
                                    while idx < mem[_1833]:
                                        mem[s] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1833 + (32 * mem[_1833]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2609 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2629 = mem[_2609]
                                    require mem[_2609] <= test266151307()
                                    require _2609 + return_data.size > _2609 + mem[_2609] + 31
                                    _2649 = mem[_2609 + mem[_2609]]
                                    require mem[_2609 + mem[_2609]] <= test266151307()
                                    require (32 * mem[_2609 + mem[_2609]]) + 32 >= 0 and _2609 + ceil32(return_data.size) + (32 * mem[_2609 + mem[_2609]]) + 32 <= test266151307()
                                    mem[64] = _2609 + ceil32(return_data.size) + (32 * mem[_2609 + mem[_2609]]) + 32
                                    mem[_2609 + ceil32(return_data.size)] = _2649
                                    require return_data.size >= _2629 + (32 * _2649) + 32
                                    mem[_2609 + ceil32(return_data.size) + 32 len 32 * _2649] = mem[_2609 + _2629 + 32 len 32 * _2649]
                                    require _2649 - 1 < _2649
                                    if not mem[(32 * _2649 - 1) + _2609 + ceil32(return_data.size) + 32]:
                                        return (0 < maxReportDelay * -1 * t * _1615 / 10^18 / 31556952)
                                    if profitFactor * mem[(32 * _2649 - 1) + _2609 + ceil32(return_data.size) + 32] / mem[(32 * _2649 - 1) + _2609 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2649 - 1) + _2609 + ceil32(return_data.size) + 32] < maxReportDelay * -1 * t * _1615 / 10^18 / 31556952
                        else:
                            if _1564 * mem[_1609] / mem[_1609] != _1564:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1690 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1690] = 26
                            mem[_1690 + 32] = 'SafeMath: division by zero'
                            if not (_1564 * _1615) - (t * _1615) / 10^18:
                                _1765 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1765] = 26
                                mem[_1765 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return 0
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < 0)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1927 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1927]:
                                        return 0
                                    if profitFactor * mem[_1927] / mem[_1927] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1927] < 0
                                else:
                                    _1831 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1831]
                                    mem[_1831 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1831]
                                    mem[_1831 + 64] = wantAddress
                                    mem[_1831 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1831 + 100] = arg1
                                    mem[_1831 + 132] = 64
                                    mem[_1831 + 164] = mem[_1831]
                                    idx = 0
                                    s = _1831 + 196
                                    t = _1831 + 32
                                    while idx < mem[_1831]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1831 + (32 * mem[_1831]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2608 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2628 = mem[_2608]
                                    require mem[_2608] <= test266151307()
                                    require _2608 + return_data.size > _2608 + mem[_2608] + 31
                                    _2648 = mem[_2608 + mem[_2608]]
                                    require mem[_2608 + mem[_2608]] <= test266151307()
                                    require (32 * mem[_2608 + mem[_2608]]) + 32 >= 0 and _2608 + ceil32(return_data.size) + (32 * mem[_2608 + mem[_2608]]) + 32 <= test266151307()
                                    mem[64] = _2608 + ceil32(return_data.size) + (32 * mem[_2608 + mem[_2608]]) + 32
                                    mem[_2608 + ceil32(return_data.size)] = _2648
                                    require return_data.size >= _2628 + (32 * _2648) + 32
                                    mem[_2608 + ceil32(return_data.size) + 32 len 32 * _2648] = mem[_2608 + _2628 + 32 len 32 * _2648]
                                    require _2648 - 1 < _2648
                                    if not mem[(32 * _2648 - 1) + _2608 + ceil32(return_data.size) + 32]:
                                        return 0
                                    if profitFactor * mem[(32 * _2648 - 1) + _2608 + ceil32(return_data.size) + 32] / mem[(32 * _2648 - 1) + _2608 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2648 - 1) + _2608 + ceil32(return_data.size) + 32] < 0
                            else:
                                if maxReportDelay * (_1564 * _1615) - (t * _1615) / 10^18 / (_1564 * _1615) - (t * _1615) / 10^18 != maxReportDelay:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1776 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1776] = 26
                                mem[_1776 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return (0 < maxReportDelay * (_1564 * _1615) - (t * _1615) / 10^18 / 31556952)
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < maxReportDelay * (_1564 * _1615) - (t * _1615) / 10^18 / 31556952)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1959 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1959]:
                                        return (0 < maxReportDelay * (_1564 * _1615) - (t * _1615) / 10^18 / 31556952)
                                    if profitFactor * mem[_1959] / mem[_1959] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1959] < maxReportDelay * (_1564 * _1615) - (t * _1615) / 10^18 / 31556952
                                else:
                                    _1863 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1863]
                                    mem[_1863 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1863]
                                    mem[_1863 + 64] = wantAddress
                                    mem[_1863 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1863 + 100] = arg1
                                    mem[_1863 + 132] = 64
                                    mem[_1863 + 164] = mem[_1863]
                                    idx = 0
                                    s = _1863 + 196
                                    u = _1863 + 32
                                    while idx < mem[_1863]:
                                        mem[s] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1863 + (32 * mem[_1863]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2607 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2627 = mem[_2607]
                                    require mem[_2607] <= test266151307()
                                    require _2607 + return_data.size > _2607 + mem[_2607] + 31
                                    _2647 = mem[_2607 + mem[_2607]]
                                    require mem[_2607 + mem[_2607]] <= test266151307()
                                    require (32 * mem[_2607 + mem[_2607]]) + 32 >= 0 and _2607 + ceil32(return_data.size) + (32 * mem[_2607 + mem[_2607]]) + 32 <= test266151307()
                                    mem[64] = _2607 + ceil32(return_data.size) + (32 * mem[_2607 + mem[_2607]]) + 32
                                    mem[_2607 + ceil32(return_data.size)] = _2647
                                    require return_data.size >= _2627 + (32 * _2647) + 32
                                    mem[_2607 + ceil32(return_data.size) + 32 len 32 * _2647] = mem[_2607 + _2627 + 32 len 32 * _2647]
                                    require _2647 - 1 < _2647
                                    if not mem[(32 * _2647 - 1) + _2607 + ceil32(return_data.size) + 32]:
                                        return (0 < maxReportDelay * (_1564 * _1615) - (t * _1615) / 10^18 / 31556952)
                                    if profitFactor * mem[(32 * _2647 - 1) + _2607 + ceil32(return_data.size) + 32] / mem[(32 * _2647 - 1) + _2607 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2647 - 1) + _2607 + ceil32(return_data.size) + 32] < maxReportDelay * (_1564 * _1615) - (t * _1615) / 10^18 / 31556952
                else:
                    if _515 * profitFactor / profitFactor != _515:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if _515 * profitFactor < mem[_826]:
                        return 0
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _859 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _863 = mem[_859]
                    idx = 0
                    s = 0
                    t = -1
                    while idx < lenders.length:
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].hasAssets() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _988 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_988] == bool(mem[_988])
                        if not mem[_988]:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < lenders.length
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].apr() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1054 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1062 = mem[_1054]
                        if mem[_1054] >= t:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < lenders.length
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].nav() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1080 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        s = mem[_1080]
                        t = _1062
                        continue 
                    if _863 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = 0
                    u = 0
                    while idx < lenders.length:
                        mem[0] = 13
                        mem[mem[64] + 4] = _863
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                gas gas_remaining wei
                               args _863
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1545 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1545] <= u:
                            idx = idx + 1
                            u = u
                            continue 
                        idx = idx + 1
                        u = mem[_1545]
                        continue 
                    require 0 < lenders.length
                    mem[0] = 13
                    mem[mem[64] + 4] = _863 + s
                    require ext_code.size(lenders)
                    staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_863 + s)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1544 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1562 = mem[_1544]
                    if mem[_1544] <= t:
                        return 0
                    require 0 < lenders.length
                    mem[0] = 13
                    require ext_code.size(lenders)
                    staticcall lenders.nav() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1607 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1614 = mem[_1607]
                    if not mem[_1607]:
                        _1667 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1667] = 26
                        mem[_1667 + 32] = 'SafeMath: division by zero'
                        _1747 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1747] = 26
                        mem[_1747 + 32] = 'SafeMath: division by zero'
                        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                            if not arg1:
                                return 0
                            if profitFactor * arg1 / arg1 != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            return (profitFactor * arg1 < 0)
                        if wantToEthOracleAddress:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(wantToEthOracleAddress)
                            staticcall wantToEthOracleAddress.0x780022a0 with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1861 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1861]:
                                return 0
                            if profitFactor * mem[_1861] / mem[_1861] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[_1861] < 0
                        else:
                            _1787 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1787]
                            mem[_1787 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                            require 1 < mem[_1787]
                            mem[_1787 + 64] = wantAddress
                            mem[_1787 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1787 + 100] = arg1
                            mem[_1787 + 132] = 64
                            mem[_1787 + 164] = mem[_1787]
                            idx = 0
                            s = _1787 + 196
                            t = _1787 + 32
                            while idx < mem[_1787]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1787 + (32 * mem[_1787]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2606 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2626 = mem[_2606]
                            require mem[_2606] <= test266151307()
                            require _2606 + return_data.size > _2606 + mem[_2606] + 31
                            _2646 = mem[_2606 + mem[_2606]]
                            require mem[_2606 + mem[_2606]] <= test266151307()
                            require (32 * mem[_2606 + mem[_2606]]) + 32 >= 0 and _2606 + ceil32(return_data.size) + (32 * mem[_2606 + mem[_2606]]) + 32 <= test266151307()
                            mem[64] = _2606 + ceil32(return_data.size) + (32 * mem[_2606 + mem[_2606]]) + 32
                            mem[_2606 + ceil32(return_data.size)] = _2646
                            require return_data.size >= _2626 + (32 * _2646) + 32
                            mem[_2606 + ceil32(return_data.size) + 32 len 32 * _2646] = mem[_2606 + _2626 + 32 len 32 * _2646]
                            require _2646 - 1 < _2646
                            if not mem[(32 * _2646 - 1) + _2606 + ceil32(return_data.size) + 32]:
                                return 0
                            if profitFactor * mem[(32 * _2646 - 1) + _2606 + ceil32(return_data.size) + 32] / mem[(32 * _2646 - 1) + _2606 + ceil32(return_data.size) + 32] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[(32 * _2646 - 1) + _2606 + ceil32(return_data.size) + 32] < 0
                    else:
                        if t * mem[_1607] / mem[_1607] != t:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not mem[_1607]:
                            _1684 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1684] = 26
                            mem[_1684 + 32] = 'SafeMath: division by zero'
                            if not -1 * t * _1614 / 10^18:
                                _1755 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1755] = 26
                                mem[_1755 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return 0
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < 0)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1894 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1894]:
                                        return 0
                                    if profitFactor * mem[_1894] / mem[_1894] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1894] < 0
                                else:
                                    _1800 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1800]
                                    mem[_1800 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1800]
                                    mem[_1800 + 64] = wantAddress
                                    mem[_1800 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1800 + 100] = arg1
                                    mem[_1800 + 132] = 64
                                    mem[_1800 + 164] = mem[_1800]
                                    idx = 0
                                    s = _1800 + 196
                                    t = _1800 + 32
                                    while idx < mem[_1800]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1800 + (32 * mem[_1800]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2605 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2625 = mem[_2605]
                                    require mem[_2605] <= test266151307()
                                    require _2605 + return_data.size > _2605 + mem[_2605] + 31
                                    _2645 = mem[_2605 + mem[_2605]]
                                    require mem[_2605 + mem[_2605]] <= test266151307()
                                    require (32 * mem[_2605 + mem[_2605]]) + 32 >= 0 and _2605 + ceil32(return_data.size) + (32 * mem[_2605 + mem[_2605]]) + 32 <= test266151307()
                                    mem[64] = _2605 + ceil32(return_data.size) + (32 * mem[_2605 + mem[_2605]]) + 32
                                    mem[_2605 + ceil32(return_data.size)] = _2645
                                    require return_data.size >= _2625 + (32 * _2645) + 32
                                    mem[_2605 + ceil32(return_data.size) + 32 len 32 * _2645] = mem[_2605 + _2625 + 32 len 32 * _2645]
                                    require _2645 - 1 < _2645
                                    if not mem[(32 * _2645 - 1) + _2605 + ceil32(return_data.size) + 32]:
                                        return 0
                                    if profitFactor * mem[(32 * _2645 - 1) + _2605 + ceil32(return_data.size) + 32] / mem[(32 * _2645 - 1) + _2605 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2645 - 1) + _2605 + ceil32(return_data.size) + 32] < 0
                            else:
                                if maxReportDelay * -1 * t * _1614 / 10^18 / -1 * t * _1614 / 10^18 != maxReportDelay:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1763 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1763] = 26
                                mem[_1763 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return (0 < maxReportDelay * -1 * t * _1614 / 10^18 / 31556952)
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < maxReportDelay * -1 * t * _1614 / 10^18 / 31556952)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1921 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1921]:
                                        return (0 < maxReportDelay * -1 * t * _1614 / 10^18 / 31556952)
                                    if profitFactor * mem[_1921] / mem[_1921] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1921] < maxReportDelay * -1 * t * _1614 / 10^18 / 31556952
                                else:
                                    _1825 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1825]
                                    mem[_1825 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1825]
                                    mem[_1825 + 64] = wantAddress
                                    mem[_1825 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1825 + 100] = arg1
                                    mem[_1825 + 132] = 64
                                    mem[_1825 + 164] = mem[_1825]
                                    idx = 0
                                    s = _1825 + 196
                                    u = _1825 + 32
                                    while idx < mem[_1825]:
                                        mem[s] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1825 + (32 * mem[_1825]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2604 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2624 = mem[_2604]
                                    require mem[_2604] <= test266151307()
                                    require _2604 + return_data.size > _2604 + mem[_2604] + 31
                                    _2644 = mem[_2604 + mem[_2604]]
                                    require mem[_2604 + mem[_2604]] <= test266151307()
                                    require (32 * mem[_2604 + mem[_2604]]) + 32 >= 0 and _2604 + ceil32(return_data.size) + (32 * mem[_2604 + mem[_2604]]) + 32 <= test266151307()
                                    mem[64] = _2604 + ceil32(return_data.size) + (32 * mem[_2604 + mem[_2604]]) + 32
                                    mem[_2604 + ceil32(return_data.size)] = _2644
                                    require return_data.size >= _2624 + (32 * _2644) + 32
                                    mem[_2604 + ceil32(return_data.size) + 32 len 32 * _2644] = mem[_2604 + _2624 + 32 len 32 * _2644]
                                    require _2644 - 1 < _2644
                                    if not mem[(32 * _2644 - 1) + _2604 + ceil32(return_data.size) + 32]:
                                        return (0 < maxReportDelay * -1 * t * _1614 / 10^18 / 31556952)
                                    if profitFactor * mem[(32 * _2644 - 1) + _2604 + ceil32(return_data.size) + 32] / mem[(32 * _2644 - 1) + _2604 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2644 - 1) + _2604 + ceil32(return_data.size) + 32] < maxReportDelay * -1 * t * _1614 / 10^18 / 31556952
                        else:
                            if _1562 * mem[_1607] / mem[_1607] != _1562:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1688 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1688] = 26
                            mem[_1688 + 32] = 'SafeMath: division by zero'
                            if not (_1562 * _1614) - (t * _1614) / 10^18:
                                _1762 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1762] = 26
                                mem[_1762 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return 0
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < 0)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1919 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1919]:
                                        return 0
                                    if profitFactor * mem[_1919] / mem[_1919] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1919] < 0
                                else:
                                    _1823 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1823]
                                    mem[_1823 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1823]
                                    mem[_1823 + 64] = wantAddress
                                    mem[_1823 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1823 + 100] = arg1
                                    mem[_1823 + 132] = 64
                                    mem[_1823 + 164] = mem[_1823]
                                    idx = 0
                                    s = _1823 + 196
                                    t = _1823 + 32
                                    while idx < mem[_1823]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1823 + (32 * mem[_1823]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2603 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2623 = mem[_2603]
                                    require mem[_2603] <= test266151307()
                                    require _2603 + return_data.size > _2603 + mem[_2603] + 31
                                    _2643 = mem[_2603 + mem[_2603]]
                                    require mem[_2603 + mem[_2603]] <= test266151307()
                                    require (32 * mem[_2603 + mem[_2603]]) + 32 >= 0 and _2603 + ceil32(return_data.size) + (32 * mem[_2603 + mem[_2603]]) + 32 <= test266151307()
                                    mem[64] = _2603 + ceil32(return_data.size) + (32 * mem[_2603 + mem[_2603]]) + 32
                                    mem[_2603 + ceil32(return_data.size)] = _2643
                                    require return_data.size >= _2623 + (32 * _2643) + 32
                                    mem[_2603 + ceil32(return_data.size) + 32 len 32 * _2643] = mem[_2603 + _2623 + 32 len 32 * _2643]
                                    require _2643 - 1 < _2643
                                    if not mem[(32 * _2643 - 1) + _2603 + ceil32(return_data.size) + 32]:
                                        return 0
                                    if profitFactor * mem[(32 * _2643 - 1) + _2603 + ceil32(return_data.size) + 32] / mem[(32 * _2643 - 1) + _2603 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2643 - 1) + _2603 + ceil32(return_data.size) + 32] < 0
                            else:
                                if maxReportDelay * (_1562 * _1614) - (t * _1614) / 10^18 / (_1562 * _1614) - (t * _1614) / 10^18 != maxReportDelay:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1774 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1774] = 26
                                mem[_1774 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return (0 < maxReportDelay * (_1562 * _1614) - (t * _1614) / 10^18 / 31556952)
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < maxReportDelay * (_1562 * _1614) - (t * _1614) / 10^18 / 31556952)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1950 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1950]:
                                        return (0 < maxReportDelay * (_1562 * _1614) - (t * _1614) / 10^18 / 31556952)
                                    if profitFactor * mem[_1950] / mem[_1950] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1950] < maxReportDelay * (_1562 * _1614) - (t * _1614) / 10^18 / 31556952
                                else:
                                    _1854 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1854]
                                    mem[_1854 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1854]
                                    mem[_1854 + 64] = wantAddress
                                    mem[_1854 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1854 + 100] = arg1
                                    mem[_1854 + 132] = 64
                                    mem[_1854 + 164] = mem[_1854]
                                    idx = 0
                                    s = _1854 + 196
                                    u = _1854 + 32
                                    while idx < mem[_1854]:
                                        mem[s] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1854 + (32 * mem[_1854]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2602 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2622 = mem[_2602]
                                    require mem[_2602] <= test266151307()
                                    require _2602 + return_data.size > _2602 + mem[_2602] + 31
                                    _2642 = mem[_2602 + mem[_2602]]
                                    require mem[_2602 + mem[_2602]] <= test266151307()
                                    require (32 * mem[_2602 + mem[_2602]]) + 32 >= 0 and _2602 + ceil32(return_data.size) + (32 * mem[_2602 + mem[_2602]]) + 32 <= test266151307()
                                    mem[64] = _2602 + ceil32(return_data.size) + (32 * mem[_2602 + mem[_2602]]) + 32
                                    mem[_2602 + ceil32(return_data.size)] = _2642
                                    require return_data.size >= _2622 + (32 * _2642) + 32
                                    mem[_2602 + ceil32(return_data.size) + 32 len 32 * _2642] = mem[_2602 + _2622 + 32 len 32 * _2642]
                                    require _2642 - 1 < _2642
                                    if not mem[(32 * _2642 - 1) + _2602 + ceil32(return_data.size) + 32]:
                                        return (0 < maxReportDelay * (_1562 * _1614) - (t * _1614) / 10^18 / 31556952)
                                    if profitFactor * mem[(32 * _2642 - 1) + _2602 + ceil32(return_data.size) + 32] / mem[(32 * _2642 - 1) + _2602 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2642 - 1) + _2602 + ceil32(return_data.size) + 32] < maxReportDelay * (_1562 * _1614) - (t * _1614) / 10^18 / 31556952
            else:
                _818 = mem[_520 + 192]
                _819 = mem[64]
                mem[64] = mem[64] + 64
                mem[_819] = 30
                mem[_819 + 32] = 'SafeMath: subtraction overflow'
                if _818 > _791 + (_784 * lenders.length):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _839 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _791 + (_784 * lenders.length) - _818 + mem[_839] < mem[_839]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    if 0 < _791 + (_784 * lenders.length) - _818 + mem[_839]:
                        return 0
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _874 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _882 = mem[_874]
                    idx = 0
                    s = 0
                    t = -1
                    while idx < lenders.length:
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].hasAssets() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _991 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_991] == bool(mem[_991])
                        if not mem[_991]:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < lenders.length
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].apr() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1057 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1065 = mem[_1057]
                        if mem[_1057] >= t:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < lenders.length
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].nav() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1083 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        s = mem[_1083]
                        t = _1065
                        continue 
                    if _882 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = 0
                    u = 0
                    while idx < lenders.length:
                        mem[0] = 13
                        mem[mem[64] + 4] = _882
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                gas gas_remaining wei
                               args _882
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1551 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1551] <= u:
                            idx = idx + 1
                            u = u
                            continue 
                        idx = idx + 1
                        u = mem[_1551]
                        continue 
                    require 0 < lenders.length
                    mem[0] = 13
                    mem[mem[64] + 4] = _882 + s
                    require ext_code.size(lenders)
                    staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_882 + s)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1550 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1568 = mem[_1550]
                    if mem[_1550] <= t:
                        return 0
                    require 0 < lenders.length
                    mem[0] = 13
                    require ext_code.size(lenders)
                    staticcall lenders.nav() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1613 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1617 = mem[_1613]
                    if not mem[_1613]:
                        _1673 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1673] = 26
                        mem[_1673 + 32] = 'SafeMath: division by zero'
                        _1753 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1753] = 26
                        mem[_1753 + 32] = 'SafeMath: division by zero'
                        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                            if not arg1:
                                return 0
                            if profitFactor * arg1 / arg1 != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            return (profitFactor * arg1 < 0)
                        if wantToEthOracleAddress:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(wantToEthOracleAddress)
                            staticcall wantToEthOracleAddress.0x780022a0 with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1888 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1888]:
                                return 0
                            if profitFactor * mem[_1888] / mem[_1888] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[_1888] < 0
                        else:
                            _1796 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1796]
                            mem[_1796 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                            require 1 < mem[_1796]
                            mem[_1796 + 64] = wantAddress
                            mem[_1796 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1796 + 100] = arg1
                            mem[_1796 + 132] = 64
                            mem[_1796 + 164] = mem[_1796]
                            idx = 0
                            s = _1796 + 196
                            t = _1796 + 32
                            while idx < mem[_1796]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1796 + (32 * mem[_1796]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2621 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2641 = mem[_2621]
                            require mem[_2621] <= test266151307()
                            require _2621 + return_data.size > _2621 + mem[_2621] + 31
                            _2661 = mem[_2621 + mem[_2621]]
                            require mem[_2621 + mem[_2621]] <= test266151307()
                            require (32 * mem[_2621 + mem[_2621]]) + 32 >= 0 and _2621 + ceil32(return_data.size) + (32 * mem[_2621 + mem[_2621]]) + 32 <= test266151307()
                            mem[64] = _2621 + ceil32(return_data.size) + (32 * mem[_2621 + mem[_2621]]) + 32
                            mem[_2621 + ceil32(return_data.size)] = _2661
                            require return_data.size >= _2641 + (32 * _2661) + 32
                            mem[_2621 + ceil32(return_data.size) + 32 len 32 * _2661] = mem[_2621 + _2641 + 32 len 32 * _2661]
                            require _2661 - 1 < _2661
                            if not mem[(32 * _2661 - 1) + _2621 + ceil32(return_data.size) + 32]:
                                return 0
                            if profitFactor * mem[(32 * _2661 - 1) + _2621 + ceil32(return_data.size) + 32] / mem[(32 * _2661 - 1) + _2621 + ceil32(return_data.size) + 32] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[(32 * _2661 - 1) + _2621 + ceil32(return_data.size) + 32] < 0
                    else:
                        if t * mem[_1613] / mem[_1613] != t:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not mem[_1613]:
                            _1687 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1687] = 26
                            mem[_1687 + 32] = 'SafeMath: division by zero'
                            if not -1 * t * _1617 / 10^18:
                                _1761 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1761] = 26
                                mem[_1761 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return 0
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < 0)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1915 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1915]:
                                        return 0
                                    if profitFactor * mem[_1915] / mem[_1915] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1915] < 0
                                else:
                                    _1818 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1818]
                                    mem[_1818 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1818]
                                    mem[_1818 + 64] = wantAddress
                                    mem[_1818 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1818 + 100] = arg1
                                    mem[_1818 + 132] = 64
                                    mem[_1818 + 164] = mem[_1818]
                                    idx = 0
                                    s = _1818 + 196
                                    t = _1818 + 32
                                    while idx < mem[_1818]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1818 + (32 * mem[_1818]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2620 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2640 = mem[_2620]
                                    require mem[_2620] <= test266151307()
                                    require _2620 + return_data.size > _2620 + mem[_2620] + 31
                                    _2660 = mem[_2620 + mem[_2620]]
                                    require mem[_2620 + mem[_2620]] <= test266151307()
                                    require (32 * mem[_2620 + mem[_2620]]) + 32 >= 0 and _2620 + ceil32(return_data.size) + (32 * mem[_2620 + mem[_2620]]) + 32 <= test266151307()
                                    mem[64] = _2620 + ceil32(return_data.size) + (32 * mem[_2620 + mem[_2620]]) + 32
                                    mem[_2620 + ceil32(return_data.size)] = _2660
                                    require return_data.size >= _2640 + (32 * _2660) + 32
                                    mem[_2620 + ceil32(return_data.size) + 32 len 32 * _2660] = mem[_2620 + _2640 + 32 len 32 * _2660]
                                    require _2660 - 1 < _2660
                                    if not mem[(32 * _2660 - 1) + _2620 + ceil32(return_data.size) + 32]:
                                        return 0
                                    if profitFactor * mem[(32 * _2660 - 1) + _2620 + ceil32(return_data.size) + 32] / mem[(32 * _2660 - 1) + _2620 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2660 - 1) + _2620 + ceil32(return_data.size) + 32] < 0
                            else:
                                if maxReportDelay * -1 * t * _1617 / 10^18 / -1 * t * _1617 / 10^18 != maxReportDelay:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1772 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1772] = 26
                                mem[_1772 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return (0 < maxReportDelay * -1 * t * _1617 / 10^18 / 31556952)
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < maxReportDelay * -1 * t * _1617 / 10^18 / 31556952)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1945 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1945]:
                                        return (0 < maxReportDelay * -1 * t * _1617 / 10^18 / 31556952)
                                    if profitFactor * mem[_1945] / mem[_1945] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1945] < maxReportDelay * -1 * t * _1617 / 10^18 / 31556952
                                else:
                                    _1849 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1849]
                                    mem[_1849 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1849]
                                    mem[_1849 + 64] = wantAddress
                                    mem[_1849 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1849 + 100] = arg1
                                    mem[_1849 + 132] = 64
                                    mem[_1849 + 164] = mem[_1849]
                                    idx = 0
                                    s = _1849 + 196
                                    u = _1849 + 32
                                    while idx < mem[_1849]:
                                        mem[s] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1849 + (32 * mem[_1849]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2619 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2639 = mem[_2619]
                                    require mem[_2619] <= test266151307()
                                    require _2619 + return_data.size > _2619 + mem[_2619] + 31
                                    _2659 = mem[_2619 + mem[_2619]]
                                    require mem[_2619 + mem[_2619]] <= test266151307()
                                    require (32 * mem[_2619 + mem[_2619]]) + 32 >= 0 and _2619 + ceil32(return_data.size) + (32 * mem[_2619 + mem[_2619]]) + 32 <= test266151307()
                                    mem[64] = _2619 + ceil32(return_data.size) + (32 * mem[_2619 + mem[_2619]]) + 32
                                    mem[_2619 + ceil32(return_data.size)] = _2659
                                    require return_data.size >= _2639 + (32 * _2659) + 32
                                    mem[_2619 + ceil32(return_data.size) + 32 len 32 * _2659] = mem[_2619 + _2639 + 32 len 32 * _2659]
                                    require _2659 - 1 < _2659
                                    if not mem[(32 * _2659 - 1) + _2619 + ceil32(return_data.size) + 32]:
                                        return (0 < maxReportDelay * -1 * t * _1617 / 10^18 / 31556952)
                                    if profitFactor * mem[(32 * _2659 - 1) + _2619 + ceil32(return_data.size) + 32] / mem[(32 * _2659 - 1) + _2619 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2659 - 1) + _2619 + ceil32(return_data.size) + 32] < maxReportDelay * -1 * t * _1617 / 10^18 / 31556952
                        else:
                            if _1568 * mem[_1613] / mem[_1613] != _1568:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1694 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1694] = 26
                            mem[_1694 + 32] = 'SafeMath: division by zero'
                            if not (_1568 * _1617) - (t * _1617) / 10^18:
                                _1771 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1771] = 26
                                mem[_1771 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return 0
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < 0)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1943 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1943]:
                                        return 0
                                    if profitFactor * mem[_1943] / mem[_1943] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1943] < 0
                                else:
                                    _1847 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1847]
                                    mem[_1847 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1847]
                                    mem[_1847 + 64] = wantAddress
                                    mem[_1847 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1847 + 100] = arg1
                                    mem[_1847 + 132] = 64
                                    mem[_1847 + 164] = mem[_1847]
                                    idx = 0
                                    s = _1847 + 196
                                    t = _1847 + 32
                                    while idx < mem[_1847]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1847 + (32 * mem[_1847]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2618 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2638 = mem[_2618]
                                    require mem[_2618] <= test266151307()
                                    require _2618 + return_data.size > _2618 + mem[_2618] + 31
                                    _2658 = mem[_2618 + mem[_2618]]
                                    require mem[_2618 + mem[_2618]] <= test266151307()
                                    require (32 * mem[_2618 + mem[_2618]]) + 32 >= 0 and _2618 + ceil32(return_data.size) + (32 * mem[_2618 + mem[_2618]]) + 32 <= test266151307()
                                    mem[64] = _2618 + ceil32(return_data.size) + (32 * mem[_2618 + mem[_2618]]) + 32
                                    mem[_2618 + ceil32(return_data.size)] = _2658
                                    require return_data.size >= _2638 + (32 * _2658) + 32
                                    mem[_2618 + ceil32(return_data.size) + 32 len 32 * _2658] = mem[_2618 + _2638 + 32 len 32 * _2658]
                                    require _2658 - 1 < _2658
                                    if not mem[(32 * _2658 - 1) + _2618 + ceil32(return_data.size) + 32]:
                                        return 0
                                    if profitFactor * mem[(32 * _2658 - 1) + _2618 + ceil32(return_data.size) + 32] / mem[(32 * _2658 - 1) + _2618 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2658 - 1) + _2618 + ceil32(return_data.size) + 32] < 0
                            else:
                                if maxReportDelay * (_1568 * _1617) - (t * _1617) / 10^18 / (_1568 * _1617) - (t * _1617) / 10^18 != maxReportDelay:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1780 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1780] = 26
                                mem[_1780 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return (0 < maxReportDelay * (_1568 * _1617) - (t * _1617) / 10^18 / 31556952)
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < maxReportDelay * (_1568 * _1617) - (t * _1617) / 10^18 / 31556952)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1977 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1977]:
                                        return (0 < maxReportDelay * (_1568 * _1617) - (t * _1617) / 10^18 / 31556952)
                                    if profitFactor * mem[_1977] / mem[_1977] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1977] < maxReportDelay * (_1568 * _1617) - (t * _1617) / 10^18 / 31556952
                                else:
                                    _1881 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1881]
                                    mem[_1881 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1881]
                                    mem[_1881 + 64] = wantAddress
                                    mem[_1881 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1881 + 100] = arg1
                                    mem[_1881 + 132] = 64
                                    mem[_1881 + 164] = mem[_1881]
                                    idx = 0
                                    s = _1881 + 196
                                    u = _1881 + 32
                                    while idx < mem[_1881]:
                                        mem[s] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1881 + (32 * mem[_1881]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2617 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2637 = mem[_2617]
                                    require mem[_2617] <= test266151307()
                                    require _2617 + return_data.size > _2617 + mem[_2617] + 31
                                    _2657 = mem[_2617 + mem[_2617]]
                                    require mem[_2617 + mem[_2617]] <= test266151307()
                                    require (32 * mem[_2617 + mem[_2617]]) + 32 >= 0 and _2617 + ceil32(return_data.size) + (32 * mem[_2617 + mem[_2617]]) + 32 <= test266151307()
                                    mem[64] = _2617 + ceil32(return_data.size) + (32 * mem[_2617 + mem[_2617]]) + 32
                                    mem[_2617 + ceil32(return_data.size)] = _2657
                                    require return_data.size >= _2637 + (32 * _2657) + 32
                                    mem[_2617 + ceil32(return_data.size) + 32 len 32 * _2657] = mem[_2617 + _2637 + 32 len 32 * _2657]
                                    require _2657 - 1 < _2657
                                    if not mem[(32 * _2657 - 1) + _2617 + ceil32(return_data.size) + 32]:
                                        return (0 < maxReportDelay * (_1568 * _1617) - (t * _1617) / 10^18 / 31556952)
                                    if profitFactor * mem[(32 * _2657 - 1) + _2617 + ceil32(return_data.size) + 32] / mem[(32 * _2657 - 1) + _2617 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2657 - 1) + _2617 + ceil32(return_data.size) + 32] < maxReportDelay * (_1568 * _1617) - (t * _1617) / 10^18 / 31556952
                else:
                    if _515 * profitFactor / profitFactor != _515:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if _515 * profitFactor < _791 + (_784 * lenders.length) - _818 + mem[_839]:
                        return 0
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _879 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _885 = mem[_879]
                    idx = 0
                    s = 0
                    t = -1
                    while idx < lenders.length:
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].hasAssets() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _990 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_990] == bool(mem[_990])
                        if not mem[_990]:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < lenders.length
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].apr() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1056 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1064 = mem[_1056]
                        if mem[_1056] >= t:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < lenders.length
                        mem[0] = 13
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].nav() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1082 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        s = mem[_1082]
                        t = _1064
                        continue 
                    if _885 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = 0
                    u = 0
                    while idx < lenders.length:
                        mem[0] = 13
                        mem[mem[64] + 4] = _885
                        require ext_code.size(lenders[idx])
                        staticcall lenders[idx].aprAfterDeposit(uint256 arg1) with:
                                gas gas_remaining wei
                               args _885
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1549 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1549] <= u:
                            idx = idx + 1
                            u = u
                            continue 
                        idx = idx + 1
                        u = mem[_1549]
                        continue 
                    require 0 < lenders.length
                    mem[0] = 13
                    mem[mem[64] + 4] = _885 + s
                    require ext_code.size(lenders)
                    staticcall lenders.aprAfterDeposit(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_885 + s)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1548 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1566 = mem[_1548]
                    if mem[_1548] <= t:
                        return 0
                    require 0 < lenders.length
                    mem[0] = 13
                    require ext_code.size(lenders)
                    staticcall lenders.nav() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1616 = mem[_1611]
                    if not mem[_1611]:
                        _1671 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1671] = 26
                        mem[_1671 + 32] = 'SafeMath: division by zero'
                        _1751 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1751] = 26
                        mem[_1751 + 32] = 'SafeMath: division by zero'
                        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                            if not arg1:
                                return 0
                            if profitFactor * arg1 / arg1 != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            return (profitFactor * arg1 < 0)
                        if wantToEthOracleAddress:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(wantToEthOracleAddress)
                            staticcall wantToEthOracleAddress.0x780022a0 with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1879 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1879]:
                                return 0
                            if profitFactor * mem[_1879] / mem[_1879] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[_1879] < 0
                        else:
                            _1793 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1793]
                            mem[_1793 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                            require 1 < mem[_1793]
                            mem[_1793 + 64] = wantAddress
                            mem[_1793 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1793 + 100] = arg1
                            mem[_1793 + 132] = 64
                            mem[_1793 + 164] = mem[_1793]
                            idx = 0
                            s = _1793 + 196
                            t = _1793 + 32
                            while idx < mem[_1793]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1793 + (32 * mem[_1793]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2616 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2636 = mem[_2616]
                            require mem[_2616] <= test266151307()
                            require _2616 + return_data.size > _2616 + mem[_2616] + 31
                            _2656 = mem[_2616 + mem[_2616]]
                            require mem[_2616 + mem[_2616]] <= test266151307()
                            require (32 * mem[_2616 + mem[_2616]]) + 32 >= 0 and _2616 + ceil32(return_data.size) + (32 * mem[_2616 + mem[_2616]]) + 32 <= test266151307()
                            mem[64] = _2616 + ceil32(return_data.size) + (32 * mem[_2616 + mem[_2616]]) + 32
                            mem[_2616 + ceil32(return_data.size)] = _2656
                            require return_data.size >= _2636 + (32 * _2656) + 32
                            mem[_2616 + ceil32(return_data.size) + 32 len 32 * _2656] = mem[_2616 + _2636 + 32 len 32 * _2656]
                            require _2656 - 1 < _2656
                            if not mem[(32 * _2656 - 1) + _2616 + ceil32(return_data.size) + 32]:
                                return 0
                            if profitFactor * mem[(32 * _2656 - 1) + _2616 + ceil32(return_data.size) + 32] / mem[(32 * _2656 - 1) + _2616 + ceil32(return_data.size) + 32] != profitFactor:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = profitFactor * mem[(32 * _2656 - 1) + _2616 + ceil32(return_data.size) + 32] < 0
                    else:
                        if t * mem[_1611] / mem[_1611] != t:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not mem[_1611]:
                            _1686 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1686] = 26
                            mem[_1686 + 32] = 'SafeMath: division by zero'
                            if not -1 * t * _1616 / 10^18:
                                _1759 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1759] = 26
                                mem[_1759 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return 0
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < 0)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1908 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1908]:
                                        return 0
                                    if profitFactor * mem[_1908] / mem[_1908] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1908] < 0
                                else:
                                    _1812 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1812]
                                    mem[_1812 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1812]
                                    mem[_1812 + 64] = wantAddress
                                    mem[_1812 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1812 + 100] = arg1
                                    mem[_1812 + 132] = 64
                                    mem[_1812 + 164] = mem[_1812]
                                    idx = 0
                                    s = _1812 + 196
                                    t = _1812 + 32
                                    while idx < mem[_1812]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1812 + (32 * mem[_1812]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2615 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2635 = mem[_2615]
                                    require mem[_2615] <= test266151307()
                                    require _2615 + return_data.size > _2615 + mem[_2615] + 31
                                    _2655 = mem[_2615 + mem[_2615]]
                                    require mem[_2615 + mem[_2615]] <= test266151307()
                                    require (32 * mem[_2615 + mem[_2615]]) + 32 >= 0 and _2615 + ceil32(return_data.size) + (32 * mem[_2615 + mem[_2615]]) + 32 <= test266151307()
                                    mem[64] = _2615 + ceil32(return_data.size) + (32 * mem[_2615 + mem[_2615]]) + 32
                                    mem[_2615 + ceil32(return_data.size)] = _2655
                                    require return_data.size >= _2635 + (32 * _2655) + 32
                                    mem[_2615 + ceil32(return_data.size) + 32 len 32 * _2655] = mem[_2615 + _2635 + 32 len 32 * _2655]
                                    require _2655 - 1 < _2655
                                    if not mem[(32 * _2655 - 1) + _2615 + ceil32(return_data.size) + 32]:
                                        return 0
                                    if profitFactor * mem[(32 * _2655 - 1) + _2615 + ceil32(return_data.size) + 32] / mem[(32 * _2655 - 1) + _2615 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2655 - 1) + _2615 + ceil32(return_data.size) + 32] < 0
                            else:
                                if maxReportDelay * -1 * t * _1616 / 10^18 / -1 * t * _1616 / 10^18 != maxReportDelay:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1769 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1769] = 26
                                mem[_1769 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return (0 < maxReportDelay * -1 * t * _1616 / 10^18 / 31556952)
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < maxReportDelay * -1 * t * _1616 / 10^18 / 31556952)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1937 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1937]:
                                        return (0 < maxReportDelay * -1 * t * _1616 / 10^18 / 31556952)
                                    if profitFactor * mem[_1937] / mem[_1937] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1937] < maxReportDelay * -1 * t * _1616 / 10^18 / 31556952
                                else:
                                    _1841 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1841]
                                    mem[_1841 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1841]
                                    mem[_1841 + 64] = wantAddress
                                    mem[_1841 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1841 + 100] = arg1
                                    mem[_1841 + 132] = 64
                                    mem[_1841 + 164] = mem[_1841]
                                    idx = 0
                                    s = _1841 + 196
                                    u = _1841 + 32
                                    while idx < mem[_1841]:
                                        mem[s] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1841 + (32 * mem[_1841]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2614 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2634 = mem[_2614]
                                    require mem[_2614] <= test266151307()
                                    require _2614 + return_data.size > _2614 + mem[_2614] + 31
                                    _2654 = mem[_2614 + mem[_2614]]
                                    require mem[_2614 + mem[_2614]] <= test266151307()
                                    require (32 * mem[_2614 + mem[_2614]]) + 32 >= 0 and _2614 + ceil32(return_data.size) + (32 * mem[_2614 + mem[_2614]]) + 32 <= test266151307()
                                    mem[64] = _2614 + ceil32(return_data.size) + (32 * mem[_2614 + mem[_2614]]) + 32
                                    mem[_2614 + ceil32(return_data.size)] = _2654
                                    require return_data.size >= _2634 + (32 * _2654) + 32
                                    mem[_2614 + ceil32(return_data.size) + 32 len 32 * _2654] = mem[_2614 + _2634 + 32 len 32 * _2654]
                                    require _2654 - 1 < _2654
                                    if not mem[(32 * _2654 - 1) + _2614 + ceil32(return_data.size) + 32]:
                                        return (0 < maxReportDelay * -1 * t * _1616 / 10^18 / 31556952)
                                    if profitFactor * mem[(32 * _2654 - 1) + _2614 + ceil32(return_data.size) + 32] / mem[(32 * _2654 - 1) + _2614 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2654 - 1) + _2614 + ceil32(return_data.size) + 32] < maxReportDelay * -1 * t * _1616 / 10^18 / 31556952
                        else:
                            if _1566 * mem[_1611] / mem[_1611] != _1566:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1692 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1692] = 26
                            mem[_1692 + 32] = 'SafeMath: division by zero'
                            if not (_1566 * _1616) - (t * _1616) / 10^18:
                                _1768 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1768] = 26
                                mem[_1768 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return 0
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < 0)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1935 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1935]:
                                        return 0
                                    if profitFactor * mem[_1935] / mem[_1935] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1935] < 0
                                else:
                                    _1839 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1839]
                                    mem[_1839 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1839]
                                    mem[_1839 + 64] = wantAddress
                                    mem[_1839 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1839 + 100] = arg1
                                    mem[_1839 + 132] = 64
                                    mem[_1839 + 164] = mem[_1839]
                                    idx = 0
                                    s = _1839 + 196
                                    t = _1839 + 32
                                    while idx < mem[_1839]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1839 + (32 * mem[_1839]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2613 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2633 = mem[_2613]
                                    require mem[_2613] <= test266151307()
                                    require _2613 + return_data.size > _2613 + mem[_2613] + 31
                                    _2653 = mem[_2613 + mem[_2613]]
                                    require mem[_2613 + mem[_2613]] <= test266151307()
                                    require (32 * mem[_2613 + mem[_2613]]) + 32 >= 0 and _2613 + ceil32(return_data.size) + (32 * mem[_2613 + mem[_2613]]) + 32 <= test266151307()
                                    mem[64] = _2613 + ceil32(return_data.size) + (32 * mem[_2613 + mem[_2613]]) + 32
                                    mem[_2613 + ceil32(return_data.size)] = _2653
                                    require return_data.size >= _2633 + (32 * _2653) + 32
                                    mem[_2613 + ceil32(return_data.size) + 32 len 32 * _2653] = mem[_2613 + _2633 + 32 len 32 * _2653]
                                    require _2653 - 1 < _2653
                                    if not mem[(32 * _2653 - 1) + _2613 + ceil32(return_data.size) + 32]:
                                        return 0
                                    if profitFactor * mem[(32 * _2653 - 1) + _2613 + ceil32(return_data.size) + 32] / mem[(32 * _2653 - 1) + _2613 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2653 - 1) + _2613 + ceil32(return_data.size) + 32] < 0
                            else:
                                if maxReportDelay * (_1566 * _1616) - (t * _1616) / 10^18 / (_1566 * _1616) - (t * _1616) / 10^18 != maxReportDelay:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1778 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1778] = 26
                                mem[_1778 + 32] = 'SafeMath: division by zero'
                                if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == wantAddress:
                                    if not arg1:
                                        return (0 < maxReportDelay * (_1566 * _1616) - (t * _1616) / 10^18 / 31556952)
                                    if profitFactor * arg1 / arg1 != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    return (profitFactor * arg1 < maxReportDelay * (_1566 * _1616) - (t * _1616) / 10^18 / 31556952)
                                if wantToEthOracleAddress:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(wantToEthOracleAddress)
                                    staticcall wantToEthOracleAddress.0x780022a0 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1968 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_1968]:
                                        return (0 < maxReportDelay * (_1566 * _1616) - (t * _1616) / 10^18 / 31556952)
                                    if profitFactor * mem[_1968] / mem[_1968] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[_1968] < maxReportDelay * (_1566 * _1616) - (t * _1616) / 10^18 / 31556952
                                else:
                                    _1872 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_1872]
                                    mem[_1872 + 32] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
                                    require 1 < mem[_1872]
                                    mem[_1872 + 64] = wantAddress
                                    mem[_1872 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_1872 + 100] = arg1
                                    mem[_1872 + 132] = 64
                                    mem[_1872 + 164] = mem[_1872]
                                    idx = 0
                                    s = _1872 + 196
                                    u = _1872 + 32
                                    while idx < mem[_1872]:
                                        mem[s] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1872 + (32 * mem[_1872]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2612 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2632 = mem[_2612]
                                    require mem[_2612] <= test266151307()
                                    require _2612 + return_data.size > _2612 + mem[_2612] + 31
                                    _2652 = mem[_2612 + mem[_2612]]
                                    require mem[_2612 + mem[_2612]] <= test266151307()
                                    require (32 * mem[_2612 + mem[_2612]]) + 32 >= 0 and _2612 + ceil32(return_data.size) + (32 * mem[_2612 + mem[_2612]]) + 32 <= test266151307()
                                    mem[64] = _2612 + ceil32(return_data.size) + (32 * mem[_2612 + mem[_2612]]) + 32
                                    mem[_2612 + ceil32(return_data.size)] = _2652
                                    require return_data.size >= _2632 + (32 * _2652) + 32
                                    mem[_2612 + ceil32(return_data.size) + 32 len 32 * _2652] = mem[_2612 + _2632 + 32 len 32 * _2652]
                                    require _2652 - 1 < _2652
                                    if not mem[(32 * _2652 - 1) + _2612 + ceil32(return_data.size) + 32]:
                                        return (0 < maxReportDelay * (_1566 * _1616) - (t * _1616) / 10^18 / 31556952)
                                    if profitFactor * mem[(32 * _2652 - 1) + _2612 + ceil32(return_data.size) + 32] / mem[(32 * _2652 - 1) + _2612 + ceil32(return_data.size) + 32] != profitFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = profitFactor * mem[(32 * _2652 - 1) + _2612 + ceil32(return_data.size) + 32] < maxReportDelay * (_1566 * _1616) - (t * _1616) / 10^18 / 31556952
    return memory
      from mem[64]
       len 32
}



}
