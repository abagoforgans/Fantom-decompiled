contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - tend()
#  - harvest()
#
const apiVersion = '', 0

const delegatedAssets = 0


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
uint8 emergencyExit;
address stor11;
address balancerVaultAddress; offset 8
address bptAddress;
address rewardTokenAddress;
array of struct stor15;
array of struct stor16;
uint256 stor18; offset 32
uint256 balancerPoolId;
uint8 numTokens;
uint8 tokenIndex; offset 8
address stor19;
address stor19; offset 16
array of address stor20;
address stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 maxSlippageIn;
uint256 maxSlippageOut;
uint256 maxSingleDeposit;
uint256 minDepositPeriod;
uint256 lastDepositTime;
uint256 stor30;
uint256 stor31;

function metadataURI() {
    return metadataURI[0 len metadataURI.length]
}

function balancerVault() {
    return balancerVaultAddress
}

function debtThreshold() {
    return debtThreshold
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function maxReportDelay() {
    return maxReportDelay
}

function bpt() {
    return bptAddress
}

function emergencyExit() {
    return bool(emergencyExit)
}

function doHealthCheck() {
    return bool(stor1)
}

function maxSlippageOut() {
    return maxSlippageOut
}

function maxSingleDeposit() {
    return maxSingleDeposit
}

function minDepositPeriod() {
    return minDepositPeriod
}

function profitFactor() {
    return profitFactor
}

function numTokens() {
    return numTokens
}

function maxSlippageIn() {
    return maxSlippageIn
}

function minReportDelay() {
    return minReportDelay
}

function rewards() {
    return rewardsAddress
}

function keeper() {
    return keeperAddress
}

function healthCheck() {
    return healthCheckAddress
}

function lastDepositTime() {
    return lastDepositTime
}

function tokenIndex() {
    return tokenIndex
}

function balancerPoolId() {
    return balancerPoolId
}

function rewardToken() {
    return rewardTokenAddress
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function ethToWant(uint256 arg1) {
    require calldata.size - 4 >= 32
    return 0
}

function balanceOfBpt() {
    require ext_code.size(bptAddress)
    staticcall bptAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfWant() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfReward() {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_325e7370(?) {
    require ext_code.size(address(stor19.field_16))
    staticcall address(stor19.field_16).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor30, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function sub_800afef5(?) {
    require ext_code.size(address(stor19.field_16))
    staticcall address(stor19.field_16).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor31, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function tendTrigger(uint256 arg1) {
    require calldata.size - 4 >= 32
    if lastDepositTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - lastDepositTime <= minDepositPeriod:
        return (block.timestamp - lastDepositTime > minDepositPeriod)
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function setProfitFactor(uint256 arg1) {
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

function setDebtThreshold(uint256 arg1) {
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

function setMinReportDelay(uint256 arg1) {
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

function setMaxReportDelay(uint256 arg1) {
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

function setKeeper(address arg1) {
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

function setStrategist(address arg1) {
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

function balanceOfPendingReward() {
    require ext_code.size(address(stor19.field_16))
    staticcall address(stor19.field_16).pendingBeets(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor30, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor19.field_16))
    staticcall address(stor19.field_16).pendingBeets(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor31, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function setDoHealthCheck(bool arg1) {
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

function setHealthCheck(address arg1) {
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

function setRewards(address arg1) {
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

function setMetadataURI(string arg1) {
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

function setParams(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
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
    if arg1 > 10000:
        revert with 0, 'maxSlippageIn too high'
    maxSlippageIn = arg1
    if arg2 > 10000:
        revert with 0, 'maxSlippageOut too high'
    maxSlippageOut = arg2
    maxSingleDeposit = arg3
    minDepositPeriod = arg4
}

function setEmergencyExit() {
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
    emergencyExit = 1
    require ext_code.size(vaultAddress)
    call vaultAddress.revokeStrategy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyExitEnabled()
}

function sub_c01330f8(?) {
    require calldata.size - 4 >= 192
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.management() with:
            gas gas_remaining wei
    mem[(32 * ('cd', 68).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    stor23 = cd[4]
    stor24 = cd[36]
    stor20.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while stor20.length > idx:
            stor20[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 68).length) + 128 > idx:
            stor20[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while stor20.length > idx:
            stor20[idx] = 0
            idx = idx + 1
            continue 
    stor31 = cd[164]
    stor21 = address(cd[100])
    require ext_code.size(address(cd[100]))
    call address(cd[100]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor19.field_0), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor22 = cd[132]
}

function setMasterChef(address arg1) {
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
    require ext_code.size(address(stor19.field_16))
    staticcall address(stor19.field_16).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor30, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(stor19.field_16))
    call address(stor19.field_16).withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor30, ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor19.field_16))
    staticcall address(stor19.field_16).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor31, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(stor19.field_16))
    call address(stor19.field_16).withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor31, ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(bptAddress)
    call bptAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor19.field_0), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor21)
    call stor21.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor19.field_0), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    address(stor19.field_16) = arg1
    require ext_code.size(bptAddress)
    call bptAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor21)
    call stor21.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor19.field_0), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sweep(address arg1) {
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
    idx = 0
    while idx < ext_call.return_data[0]:
        require idx < ext_call.return_data[0]
        if arg1 == mem[(32 * idx) + 140 len 20]:
            revert with 0, '!protected'
        idx = idx + 1
        continue 
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 68
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 196] = 32
    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) << 288)
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
        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
            if not mem[(4 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function getSwapSteps() {
    if not stor15.length:
        mem[(32 * stor15.length) + 256] = stor16.length
        if not stor16.length:
            mem[(32 * stor15.length) + (32 * stor16.length) + 288] = 32
            mem[(32 * stor15.length) + (32 * stor16.length) + 320] = 64
            mem[(32 * stor15.length) + (32 * stor16.length) + 384] = stor15.length
            mem[(32 * stor15.length) + (32 * stor16.length) + 416 len 32 * stor15.length] = mem[256 len 32 * stor15.length]
            mem[(32 * stor15.length) + (32 * stor16.length) + 352] = (32 * stor15.length) + 96
            mem[(64 * stor15.length) + (32 * stor16.length) + 416] = stor16.length
            idx = 0
            s = (32 * stor15.length) + 288
            t = (64 * stor15.length) + (32 * stor16.length) + 448
            while idx < stor16.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor15.length) + (32 * stor16.length) + 288
               len (96 * stor15.length) + (32 * stor16.length) + 160
        mem[(32 * stor15.length) + 288] = address(stor16.field_0)
        idx = (32 * stor15.length) + 288
        s = 0
        while (32 * stor15.length) + (32 * stor16.length) + 256 > idx:
            mem[idx + 32] = stor16[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor15.length) + (32 * stor16.length) + 288] = 32
        mem[(32 * stor15.length) + (32 * stor16.length) + 320] = 64
        mem[(32 * stor15.length) + (32 * stor16.length) + 384] = stor15.length
        mem[(32 * stor15.length) + (32 * stor16.length) + 416 len 32 * stor15.length] = mem[256 len 32 * stor15.length]
    else:
        mem[256] = uint256(stor15.field_0)
        idx = 256
        s = 0
        while (32 * stor15.length) + 256 > idx + 32:
            mem[idx + 32] = stor15[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor15.length) + 256] = stor16.length
        if not stor16.length:
            mem[(32 * stor15.length) + (32 * stor16.length) + 288] = 32
            mem[(32 * stor15.length) + (32 * stor16.length) + 320] = 64
            mem[(32 * stor15.length) + (32 * stor16.length) + 384] = stor15.length
            mem[(32 * stor15.length) + (32 * stor16.length) + 416 len 32 * stor15.length] = mem[256 len 32 * stor15.length]
            mem[(32 * stor15.length) + (32 * stor16.length) + 352] = (32 * stor15.length) + 96
            mem[(64 * stor15.length) + (32 * stor16.length) + 416] = stor16.length
            idx = 0
            s = (32 * stor15.length) + 288
            t = (64 * stor15.length) + (32 * stor16.length) + 448
            while idx < stor16.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor15.length) + (32 * stor16.length) + 288
               len (96 * stor15.length) + (32 * stor16.length) + 160
        mem[(32 * stor15.length) + 288] = address(stor16.field_0)
        idx = (32 * stor15.length) + 288
        s = 0
        while (32 * stor15.length) + (32 * stor16.length) + 256 > idx:
            mem[idx + 32] = stor16[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor15.length) + (32 * stor16.length) + 288] = 32
        mem[(32 * stor15.length) + (32 * stor16.length) + 320] = 64
        mem[(32 * stor15.length) + (32 * stor16.length) + 384] = stor15.length
        mem[(32 * stor15.length) + (32 * stor16.length) + 416 len 32 * stor15.length] = mem[256 len 32 * stor15.length]
        var20002 = (64 * stor15.length) + (32 * stor16.length) + 416
    mem[(32 * stor15.length) + (32 * stor16.length) + 352] = (32 * stor15.length) + 96
    mem[(64 * stor15.length) + (32 * stor16.length) + 416] = stor16.length
    idx = 0
    s = (32 * stor15.length) + 288
    t = (64 * stor15.length) + (32 * stor16.length) + 448
    while idx < mem[(32 * stor15.length) + 256]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor15.length) + (32 * stor16.length) + 288
       len (32 * stor15.length) + (32 * mem[(32 * stor15.length) + 256]) + 160
}

function sub_9cd7005e(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 64
    require ('cd', 36).length <= test266151307()
    require calldata.size > cd[36] + ('cd', 36).length + 35
    require cd[(cd[36] + ('cd', 36).length + 4)] <= test266151307()
    require (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 192 >= 160 and (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 192 <= test266151307()
    require calldata.size >= cd[36] + ('cd', 36).length + (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 36
    s = cd[36] + ('cd', 36).length + 36
    t = 192
    idx = 0
    while idx < cd[(cd[36] + ('cd', 36).length + 4)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ('cd', 36)[0] <= test266151307()
    require cd[36] + ('cd', 36)[0] + 35 < calldata.size
    require cd[(cd[36] + ('cd', 36)[0] + 4)] <= test266151307()
    require (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 224 >= 192 and (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 224 <= test266151307()
    mem[(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 192] = cd[(cd[36] + ('cd', 36)[0] + 4)]
    require calldata.size >= cd[36] + ('cd', 36)[0] + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 36
    idx = 0
    s = cd[36] + ('cd', 36)[0] + 36
    t = (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 224
    while idx < cd[(cd[36] + ('cd', 36)[0] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.management() with:
            gas gas_remaining wei
    mem[(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        rewardTokenAddress = address(cd[4])
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor11, -1
        mem[(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
        rewardTokenAddress = address(cd[4])
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor11, -1
        mem[(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor15.length = cd[(cd[36] + ('cd', 36).length + 4)]
    if not cd[(cd[36] + ('cd', 36).length + 4)]:
        idx = 0
        while stor15.length > idx:
            stor15[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 192
        while (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 192 > idx:
            stor15[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 31) >> 5
        while stor15.length > idx:
            stor15[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor16.length = cd[(cd[36] + ('cd', 36)[0] + 4)]
    if not cd[(cd[36] + ('cd', 36)[0] + 4)]:
        idx = 0
        while stor16.length > idx:
            stor16[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 224
        while (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 224 > idx:
            stor16[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 31) >> 5
        while stor16.length > idx:
            stor16[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function migrate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == vaultAddress
    require ext_code.size(arg1)
    staticcall arg1.0xfbfa77cf with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == vaultAddress
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(address(stor19.field_16))
    staticcall address(stor19.field_16).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor30, this.address
    mem[ceil32(return_data.size) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(2 * ceil32(return_data.size)) + 164] = arg1
    require ext_code.size(address(stor19.field_16))
    call address(stor19.field_16).withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor30, ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(address(stor19.field_16))
    staticcall address(stor19.field_16).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor31, this.address
    mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 164] = arg1
    require ext_code.size(address(stor19.field_16))
    call address(stor19.field_16).withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor31, ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 132] = arg1
        mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = 68
        mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(7 * ceil32(return_data.size)) + 196] = 32
        mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[(7 * ceil32(return_data.size)) + 328] = 0
        call wantAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
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
            mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                if not mem[(7 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(6 * ceil32(return_data.size)) + 100] = arg1
        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 132] = arg1
        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 96] = 68
        mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(8 * ceil32(return_data.size)) + 196] = 32
        mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[(8 * ceil32(return_data.size)) + 328] = 0
        call wantAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
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
            mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                if not mem[(8 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function name() {
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(bptAddress)
    staticcall bptAddress.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _153 = mem[_151]
        require mem[_151] <= test266151307()
        require _151 + mem[_151] + 31 < _151 + return_data.size
        _155 = mem[_151 + mem[_151]]
        require mem[_151 + mem[_151]] <= test266151307()
        require ceil32(mem[_151 + mem[_151]]) + 32 >= 0 and _151 + ceil32(return_data.size) + ceil32(mem[_151 + mem[_151]]) + 32 <= test266151307()
        mem[64] = _151 + ceil32(return_data.size) + ceil32(mem[_151 + mem[_151]]) + 32
        mem[_151 + ceil32(return_data.size)] = _155
        require _153 + _155 + 32 <= return_data.size
        mem[_151 + ceil32(return_data.size) + 32 len ceil32(_155)] = mem[_151 + _153 + 32 len ceil32(_155)]
        if ceil32(_155) <= _155:
            _287 = mem[64]
            mem[mem[64] + 32] = 0x53696e676c65536964656442616c616e63657220000000000000000000000000
            mem[mem[64] + 52 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            mem[mem[64] + _5 + 52] = 0x506f6f6c20000000000000000000000000000000000000000000000000000000
            mem[mem[64] + _5 + 57 len ceil32(_155)] = mem[_151 + ceil32(return_data.size) + 32 len ceil32(_155)]
            if ceil32(_5) <= _5:
                if ceil32(_155) <= _155:
                    _535 = mem[64]
                    mem[64] = _155 + mem[64] + _5 + 57
                    mem[_155 + _287 + _5 + 57] = 32
                    _567 = mem[_535]
                    mem[_155 + _287 + _5 + 89] = mem[_535]
                    mem[_155 + _287 + _5 + 121 len ceil32(_567)] = mem[_535 + 32 len ceil32(_567)]
                    if ceil32(_567) > _567:
                        mem[_567 + _155 + _287 + _5 + 121] = 0
                    return 32, mem[_155 + _287 + _5 + 89 len ceil32(_567) + 32]
                mem[_155 + mem[64] + _5 + 57] = 0
                _536 = mem[64]
                mem[64] = _155 + mem[64] + _5 + 57
                mem[_155 + _287 + _5 + 57] = 32
                _568 = mem[_536]
                mem[_155 + _287 + _5 + 89] = mem[_536]
                mem[_155 + _287 + _5 + 121 len ceil32(_568)] = mem[_536 + 32 len ceil32(_568)]
                if ceil32(_568) > _568:
                    mem[_568 + _155 + _287 + _5 + 121] = 0
                return 32, mem[_155 + _287 + _5 + 89 len ceil32(_568) + 32]
            if ceil32(_155) <= _155:
                _537 = mem[64]
                mem[64] = _155 + mem[64] + _5 + 57
                mem[_155 + _287 + _5 + 57] = 32
                _569 = mem[_537]
                mem[_155 + _287 + _5 + 89] = mem[_537]
                mem[_155 + _287 + _5 + 121 len ceil32(_569)] = mem[_537 + 32 len ceil32(_569)]
                if ceil32(_569) > _569:
                    mem[_569 + _155 + _287 + _5 + 121] = 0
                return 32, mem[_155 + _287 + _5 + 89 len ceil32(_569) + 32]
            mem[_155 + mem[64] + _5 + 57] = 0
            _538 = mem[64]
            mem[64] = _155 + mem[64] + _5 + 57
            mem[_155 + _287 + _5 + 57] = 32
            _570 = mem[_538]
            mem[_155 + _287 + _5 + 89] = mem[_538]
            mem[_155 + _287 + _5 + 121 len ceil32(_570)] = mem[_538 + 32 len ceil32(_570)]
            if ceil32(_570) > _570:
                mem[_570 + _155 + _287 + _5 + 121] = 0
            return 32, mem[_155 + _287 + _5 + 89 len ceil32(_570) + 32]
        mem[_155 + _151 + ceil32(return_data.size) + 32] = 0
        _288 = mem[64]
        mem[mem[64] + 32] = 0x53696e676c65536964656442616c616e63657220000000000000000000000000
        mem[mem[64] + 52 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        mem[mem[64] + _5 + 52] = 0x506f6f6c20000000000000000000000000000000000000000000000000000000
        mem[mem[64] + _5 + 57 len ceil32(_155)] = mem[_151 + ceil32(return_data.size) + 32 len ceil32(_155)]
        if ceil32(_5) <= _5:
            if ceil32(_155) <= _155:
                _539 = mem[64]
                mem[64] = _155 + mem[64] + _5 + 57
                mem[_155 + _288 + _5 + 57] = 32
                _571 = mem[_539]
                mem[_155 + _288 + _5 + 89] = mem[_539]
                mem[_155 + _288 + _5 + 121 len ceil32(_571)] = mem[_539 + 32 len ceil32(_571)]
                if ceil32(_571) > _571:
                    mem[_571 + _155 + _288 + _5 + 121] = 0
                return 32, mem[_155 + _288 + _5 + 89 len ceil32(_571) + 32]
            mem[_155 + mem[64] + _5 + 57] = 0
            _540 = mem[64]
            mem[64] = _155 + mem[64] + _5 + 57
            mem[_155 + _288 + _5 + 57] = 32
            _572 = mem[_540]
            mem[_155 + _288 + _5 + 89] = mem[_540]
            mem[_155 + _288 + _5 + 121 len ceil32(_572)] = mem[_540 + 32 len ceil32(_572)]
            if ceil32(_572) > _572:
                mem[_572 + _155 + _288 + _5 + 121] = 0
            return 32, mem[_155 + _288 + _5 + 89 len ceil32(_572) + 32]
        if ceil32(_155) <= _155:
            _541 = mem[64]
            mem[64] = _155 + mem[64] + _5 + 57
            mem[_155 + _288 + _5 + 57] = 32
            _573 = mem[_541]
            mem[_155 + _288 + _5 + 89] = mem[_541]
            mem[_155 + _288 + _5 + 121 len ceil32(_573)] = mem[_541 + 32 len ceil32(_573)]
            if ceil32(_573) > _573:
                mem[_573 + _155 + _288 + _5 + 121] = 0
            return 32, mem[_155 + _288 + _5 + 89 len ceil32(_573) + 32]
        mem[_155 + mem[64] + _5 + 57] = 0
        _542 = mem[64]
        mem[64] = _155 + mem[64] + _5 + 57
        mem[_155 + _288 + _5 + 57] = 32
        _574 = mem[_542]
        mem[_155 + _288 + _5 + 89] = mem[_542]
        mem[_155 + _288 + _5 + 121 len ceil32(_574)] = mem[_542 + 32 len ceil32(_574)]
        if ceil32(_574) > _574:
            mem[_574 + _155 + _288 + _5 + 121] = 0
        return 32, mem[_155 + _288 + _5 + 89 len ceil32(_574) + 32]
    mem[_5 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _152 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _154 = mem[_152]
    require mem[_152] <= test266151307()
    require _152 + mem[_152] + 31 < _152 + return_data.size
    _156 = mem[_152 + mem[_152]]
    require mem[_152 + mem[_152]] <= test266151307()
    require ceil32(mem[_152 + mem[_152]]) + 32 >= 0 and _152 + ceil32(return_data.size) + ceil32(mem[_152 + mem[_152]]) + 32 <= test266151307()
    mem[64] = _152 + ceil32(return_data.size) + ceil32(mem[_152 + mem[_152]]) + 32
    mem[_152 + ceil32(return_data.size)] = _156
    require _154 + _156 + 32 <= return_data.size
    mem[_152 + ceil32(return_data.size) + 32 len ceil32(_156)] = mem[_152 + _154 + 32 len ceil32(_156)]
    if ceil32(_156) <= _156:
        _289 = mem[64]
        mem[mem[64] + 32] = 0x53696e676c65536964656442616c616e63657220000000000000000000000000
        mem[mem[64] + 52 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        mem[mem[64] + _5 + 52] = 0x506f6f6c20000000000000000000000000000000000000000000000000000000
        mem[mem[64] + _5 + 57 len ceil32(_156)] = mem[_152 + ceil32(return_data.size) + 32 len ceil32(_156)]
        if ceil32(_5) <= _5:
            if ceil32(_156) <= _156:
                _543 = mem[64]
                mem[64] = _156 + mem[64] + _5 + 57
                mem[_156 + _289 + _5 + 57] = 32
                _575 = mem[_543]
                mem[_156 + _289 + _5 + 89] = mem[_543]
                mem[_156 + _289 + _5 + 121 len ceil32(_575)] = mem[_543 + 32 len ceil32(_575)]
                if ceil32(_575) > _575:
                    mem[_575 + _156 + _289 + _5 + 121] = 0
                return 32, mem[_156 + _289 + _5 + 89 len ceil32(_575) + 32]
            mem[_156 + mem[64] + _5 + 57] = 0
            _544 = mem[64]
            mem[64] = _156 + _289 + _5 + 57
            mem[_156 + _289 + _5 + 57] = 32
            _576 = mem[_544]
            mem[_156 + _289 + _5 + 89] = mem[_544]
            mem[_156 + _289 + _5 + 121 len ceil32(_576)] = mem[_544 + 32 len ceil32(_576)]
            if ceil32(_576) > _576:
                mem[_576 + _156 + _289 + _5 + 121] = 0
            return 32, mem[_156 + _289 + _5 + 89 len ceil32(_576) + 32]
        if ceil32(_156) <= _156:
            _545 = mem[64]
            mem[64] = _156 + mem[64] + _5 + 57
            mem[_156 + _289 + _5 + 57] = 32
            _577 = mem[_545]
            mem[_156 + _289 + _5 + 89] = mem[_545]
            mem[_156 + _289 + _5 + 121 len ceil32(_577)] = mem[_545 + 32 len ceil32(_577)]
            if ceil32(_577) > _577:
                mem[_577 + _156 + _289 + _5 + 121] = 0
            return 32, mem[_156 + _289 + _5 + 89 len ceil32(_577) + 32]
        mem[_156 + mem[64] + _5 + 57] = 0
        _546 = mem[64]
        mem[64] = _156 + _289 + _5 + 57
        mem[_156 + _289 + _5 + 57] = 32
        _578 = mem[_546]
        mem[_156 + _289 + _5 + 89] = mem[_546]
        mem[_156 + _289 + _5 + 121 len ceil32(_578)] = mem[_546 + 32 len ceil32(_578)]
        if ceil32(_578) > _578:
            mem[_578 + _156 + _289 + _5 + 121] = 0
        return 32, mem[_156 + _289 + _5 + 89 len ceil32(_578) + 32]
    mem[_156 + _152 + ceil32(return_data.size) + 32] = 0
    _290 = mem[64]
    mem[mem[64] + 32] = 0x53696e676c65536964656442616c616e63657220000000000000000000000000
    mem[mem[64] + 52 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    mem[mem[64] + _5 + 52] = 0x506f6f6c20000000000000000000000000000000000000000000000000000000
    mem[mem[64] + _5 + 57 len ceil32(_156)] = mem[_152 + ceil32(return_data.size) + 32 len ceil32(_156)]
    if ceil32(_5) <= _5:
        if ceil32(_156) <= _156:
            _547 = mem[64]
            mem[64] = _156 + mem[64] + _5 + 57
            mem[_156 + _290 + _5 + 57] = 32
            _579 = mem[_547]
            mem[_156 + _290 + _5 + 89] = mem[_547]
            mem[_156 + _290 + _5 + 121 len ceil32(_579)] = mem[_547 + 32 len ceil32(_579)]
            if ceil32(_579) > _579:
                mem[_579 + _156 + _290 + _5 + 121] = 0
            return 32, mem[_156 + _290 + _5 + 89 len ceil32(_579) + 32]
        mem[_156 + mem[64] + _5 + 57] = 0
        _548 = mem[64]
        mem[64] = _156 + _290 + _5 + 57
        mem[_156 + _290 + _5 + 57] = 32
        _580 = mem[_548]
        mem[_156 + _290 + _5 + 89] = mem[_548]
        mem[_156 + _290 + _5 + 121 len ceil32(_580)] = mem[_548 + 32 len ceil32(_580)]
        if ceil32(_580) > _580:
            mem[_580 + _156 + _290 + _5 + 121] = 0
        return 32, mem[_156 + _290 + _5 + 89 len ceil32(_580) + 32]
    if ceil32(_156) <= _156:
        _549 = mem[64]
        mem[64] = _156 + mem[64] + _5 + 57
        mem[_156 + _290 + _5 + 57] = 32
        _581 = mem[_549]
        mem[_156 + _290 + _5 + 89] = mem[_549]
        mem[_156 + _290 + _5 + 121 len ceil32(_581)] = mem[_549 + 32 len ceil32(_581)]
        if ceil32(_581) > _581:
            mem[_581 + _156 + _290 + _5 + 121] = 0
        return 32, mem[_156 + _290 + _5 + 89 len ceil32(_581) + 32]
    mem[_156 + mem[64] + _5 + 57] = 0
    _550 = mem[64]
    mem[64] = _156 + _290 + _5 + 57
    mem[_156 + _290 + _5 + 57] = 32
    _582 = mem[_550]
    mem[_156 + _290 + _5 + 89] = mem[_550]
    mem[_156 + _290 + _5 + 121 len ceil32(_582)] = mem[_550 + 32 len ceil32(_582)]
    if ceil32(_582) > _582:
        mem[_582 + _156 + _290 + _5 + 121] = 0
    return 32, mem[_156 + _290 + _5 + 89 len ceil32(_582) + 32]
}

function balanceOfPooled() {
    mem[96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[100] = balancerPoolId
    require ext_code.size(balancerVaultAddress)
    staticcall balancerVaultAddress.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args balancerPoolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], stor18
    require mem[96 len 4], stor18 <= test266151307()
    require mem[96 len 4], stor18 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], stor18 + 96]
    require mem[mem[96 len 4], stor18 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], stor18 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], stor18 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], stor18 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _104 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 127 < return_data.size + 96
    _106 = mem[mem[128] + 96]
    require mem[mem[128] + 96] <= test266151307()
    _107 = mem[64]
    require mem[64] + (32 * mem[mem[128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[mem[128] + 96]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[mem[128] + 96]) + 32
    mem[_107] = _106
    require return_data.size >= _104 + (32 * _106) + 32
    mem[_107 + 32 len 32 * _106] = mem[_104 + 128 len 32 * _106]
    _202 = mem[160]
    idx = 0
    s = 0
    while uint8(idx) < numTokens:
        require ext_code.size(bptAddress)
        staticcall bptAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _297 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _299 = mem[_297]
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(stor19.field_16))
        staticcall address(stor19.field_16).userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor30, this.address
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _302 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _303 = mem[_302]
        mem[mem[64] + 4] = this.address
        require ext_code.size(bptAddress)
        staticcall bptAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _307 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _308 = mem[_307]
        if _303 + mem[_307] < mem[_307]:
            revert with 0, 'SafeMath: addition overflow'
        require uint8(idx) < mem[_107]
        _312 = mem[(32 * uint8(idx)) + _107 + 32]
        if not mem[(32 * uint8(idx)) + _107 + 32]:
            _314 = mem[64]
            mem[64] = mem[64] + 64
            mem[_314] = 26
            mem[_314 + 32] = 'SafeMath: division by zero'
            if not _299:
                _317 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _317 + 68] = mem[idx + _314 + 32]
                    idx = idx + 32
                    continue 
                mem[_317 + 94] = 0
                revert with memory
                  from mem[64]
                   len _317 + -mem[64] + 100
            if not 0 / _299:
                idx = idx + 1
                s = s
                continue 
            require uint8(idx) < mem[ceil32(return_data.size) + 96]
            _323 = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 128]
            if wantAddress == mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]:
                idx = idx + 1
                s = (0 / _299) + s
                continue 
            _327 = mem[64]
            mem[64] = mem[64] + 288
            mem[_327] = 0
            mem[_327 + 32] = 0
            mem[_327 + 64] = 0
            mem[_327 + 96] = 0
            mem[_327 + 128] = 0
            mem[_327 + 160] = 0
            mem[_327 + 192] = 0
            mem[_327 + 224] = 0
            mem[_327 + 256] = 96
            _331 = mem[64]
            mem[64] = mem[64] + 288
            mem[_331] = 0
            mem[_331 + 32] = 0
            mem[_331 + 64] = 0
            mem[_331 + 96] = 0
            mem[_331 + 128] = 0
            mem[_331 + 160] = 0
            mem[_331 + 192] = 0
            mem[_331 + 224] = 0
            mem[_331 + 256] = 96
            _334 = mem[64]
            mem[64] = mem[64] + 288
            mem[_334] = 0
            mem[_334 + 32] = address(_323)
            mem[_334 + 64] = wantAddress
            mem[_334 + 96] = 0 / _299
            mem[_334 + 128] = balancerPoolId
            mem[_334 + 160] = _202
            mem[_334 + 192] = this.address
            mem[_334 + 224] = this.address
            _335 = mem[64]
            mem[mem[64] + 32] = 0
            _339 = mem[64]
            mem[64] = mem[64] + 64
            mem[_334 + 256] = _339
            mem[_335 + 64] = 0x1ec954a00000000000000000000000000000000000000000000000000000000
            mem[_335 + 68] = 128
            mem[_335 + 196] = 0
            mem[_335 + 228] = address(_323)
            mem[_335 + 260] = wantAddress
            mem[_335 + 292] = 0 / _299
            mem[_335 + 324] = balancerPoolId
            mem[_335 + 356] = _202
            mem[_335 + 388] = this.address
            mem[_335 + 420] = this.address
            mem[_335 + 452] = 288
            _360 = mem[_339]
            mem[_335 + 484] = mem[_339]
            t = 0
            while t < _360:
                mem[t + _335 + 516] = mem[t + _339 + 32]
                t = t + 32
                continue 
            if ceil32(_360) <= _360:
                mem[_335 + 100] = ceil32(_360) + 448
                _391 = mem[_107]
                mem[ceil32(_360) + _335 + 516] = mem[_107]
                t = 0
                u = _107 + 32
                v = ceil32(_360) + _335 + 548
                while t < _391:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_335 + 132] = uint8(idx)
                mem[_335 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_360) + 448, idx << 248, tokenIndex, 0, address(_323), wantAddress, 0 / _299, balancerPoolId, _202, address(this.address), address(this.address), 288, mem[_335 + 484 len ceil32(_360) + (32 * _391) + 64]
            else:
                mem[_360 + _335 + 516] = 0
                mem[_335 + 100] = ceil32(_360) + 448
                _392 = mem[_107]
                mem[ceil32(_360) + _335 + 516] = mem[_107]
                t = 0
                u = _107 + 32
                v = ceil32(_360) + _335 + 548
                while t < _392:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_335 + 132] = uint8(idx)
                mem[_335 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_360) + 448, idx << 248, tokenIndex, 0, address(_323), wantAddress, 0 / _299, balancerPoolId, _202, address(this.address), address(this.address), 288, mem[_335 + 484 len _360 + 32], 0, mem[_335 + _360 + 548 len ceil32(_360) + (32 * _392) - _360]
            mem[_335 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _335 + ceil32(return_data.size) + 64
        else:
            if (_303 * mem[(32 * uint8(idx)) + _107 + 32]) + (mem[_307] * mem[(32 * uint8(idx)) + _107 + 32]) / mem[(32 * uint8(idx)) + _107 + 32] != _303 + mem[_307]:
                revert with 0, 'SafeMath: multiplication overflow'
            _316 = mem[64]
            mem[64] = mem[64] + 64
            mem[_316] = 26
            mem[_316 + 32] = 'SafeMath: division by zero'
            if not _299:
                _318 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _318 + 68] = mem[idx + _316 + 32]
                    idx = idx + 32
                    continue 
                mem[_318 + 94] = 0
                revert with memory
                  from mem[64]
                   len _318 + -mem[64] + 100
            if not (_303 * _312) + (_308 * _312) / _299:
                idx = idx + 1
                s = s
                continue 
            require uint8(idx) < mem[ceil32(return_data.size) + 96]
            _326 = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 128]
            if wantAddress == mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]:
                idx = idx + 1
                s = ((_303 * _312) + (_308 * _312) / _299) + s
                continue 
            _328 = mem[64]
            mem[64] = mem[64] + 288
            mem[_328] = 0
            mem[_328 + 32] = 0
            mem[_328 + 64] = 0
            mem[_328 + 96] = 0
            mem[_328 + 128] = 0
            mem[_328 + 160] = 0
            mem[_328 + 192] = 0
            mem[_328 + 224] = 0
            mem[_328 + 256] = 96
            _336 = mem[64]
            mem[64] = mem[64] + 288
            mem[_336] = 0
            mem[_336 + 32] = 0
            mem[_336 + 64] = 0
            mem[_336 + 96] = 0
            mem[_336 + 128] = 0
            mem[_336 + 160] = 0
            mem[_336 + 192] = 0
            mem[_336 + 224] = 0
            mem[_336 + 256] = 96
            _337 = mem[64]
            mem[64] = mem[64] + 288
            mem[_337] = 0
            mem[_337 + 32] = address(_326)
            mem[_337 + 64] = wantAddress
            mem[_337 + 96] = (_303 * _312) + (_308 * _312) / _299
            mem[_337 + 128] = balancerPoolId
            mem[_337 + 160] = _202
            mem[_337 + 192] = this.address
            mem[_337 + 224] = this.address
            _338 = mem[64]
            mem[mem[64] + 32] = 0
            _341 = mem[64]
            mem[64] = mem[64] + 64
            mem[_337 + 256] = _341
            mem[_338 + 64] = 0x1ec954a00000000000000000000000000000000000000000000000000000000
            mem[_338 + 68] = 128
            mem[_338 + 196] = 0
            mem[_338 + 228] = address(_326)
            mem[_338 + 260] = wantAddress
            mem[_338 + 292] = (_303 * _312) + (_308 * _312) / _299
            mem[_338 + 324] = balancerPoolId
            mem[_338 + 356] = _202
            mem[_338 + 388] = this.address
            mem[_338 + 420] = this.address
            mem[_338 + 452] = 288
            _362 = mem[_341]
            mem[_338 + 484] = mem[_341]
            t = 0
            while t < _362:
                mem[t + _338 + 516] = mem[t + _341 + 32]
                t = t + 32
                continue 
            if ceil32(_362) <= _362:
                mem[_338 + 100] = ceil32(_362) + 448
                _389 = mem[_107]
                mem[ceil32(_362) + _338 + 516] = mem[_107]
                t = 0
                u = _107 + 32
                v = ceil32(_362) + _338 + 548
                while t < _389:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_338 + 132] = uint8(idx)
                mem[_338 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_362) + 448, idx << 248, tokenIndex, 0, address(_326), wantAddress, (_303 * _312) + (_308 * _312) / _299, balancerPoolId, _202, address(this.address), address(this.address), 288, mem[_338 + 484 len ceil32(_362) + (32 * _389) + 64]
            else:
                mem[_362 + _338 + 516] = 0
                mem[_338 + 100] = ceil32(_362) + 448
                _390 = mem[_107]
                mem[ceil32(_362) + _338 + 516] = mem[_107]
                t = 0
                u = _107 + 32
                v = ceil32(_362) + _338 + 548
                while t < _390:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_338 + 132] = uint8(idx)
                mem[_338 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_362) + 448, idx << 248, tokenIndex, 0, address(_326), wantAddress, (_303 * _312) + (_308 * _312) / _299, balancerPoolId, _202, address(this.address), address(this.address), 288, mem[_338 + 484 len _362 + 32], 0, mem[_338 + _362 + 548 len ceil32(_362) + (32 * _390) - _362]
            mem[_338 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _338 + ceil32(return_data.size) + 64
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return s
}

function estimatedTotalAssets() {
    mem[96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[100] = balancerPoolId
    require ext_code.size(balancerVaultAddress)
    staticcall balancerVaultAddress.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args balancerPoolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], stor18
    require mem[96 len 4], stor18 <= test266151307()
    require mem[96 len 4], stor18 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], stor18 + 96]
    require mem[mem[96 len 4], stor18 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], stor18 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], stor18 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], stor18 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _110 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 127 < return_data.size + 96
    _112 = mem[mem[128] + 96]
    require mem[mem[128] + 96] <= test266151307()
    _113 = mem[64]
    require mem[64] + (32 * mem[mem[128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[mem[128] + 96]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[mem[128] + 96]) + 32
    mem[_113] = _112
    require return_data.size >= _110 + (32 * _112) + 32
    mem[_113 + 32 len 32 * _112] = mem[_110 + 128 len 32 * _112]
    _214 = mem[160]
    idx = 0
    s = 0
    while uint8(idx) < numTokens:
        require ext_code.size(bptAddress)
        staticcall bptAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _315 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _317 = mem[_315]
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(stor19.field_16))
        staticcall address(stor19.field_16).userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor30, this.address
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _322 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _324 = mem[_322]
        mem[mem[64] + 4] = this.address
        require ext_code.size(bptAddress)
        staticcall bptAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _331 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _332 = mem[_331]
        if _324 + mem[_331] < mem[_331]:
            revert with 0, 'SafeMath: addition overflow'
        require uint8(idx) < mem[_113]
        _336 = mem[(32 * uint8(idx)) + _113 + 32]
        if not mem[(32 * uint8(idx)) + _113 + 32]:
            _338 = mem[64]
            mem[64] = mem[64] + 64
            mem[_338] = 26
            mem[_338 + 32] = 'SafeMath: division by zero'
            if not _317:
                _341 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _341 + 68] = mem[idx + _338 + 32]
                    idx = idx + 32
                    continue 
                mem[_341 + 94] = 0
                revert with memory
                  from mem[64]
                   len _341 + -mem[64] + 100
            if not 0 / _317:
                idx = idx + 1
                s = s
                continue 
            require uint8(idx) < mem[ceil32(return_data.size) + 96]
            _347 = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 128]
            if wantAddress == mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]:
                idx = idx + 1
                s = (0 / _317) + s
                continue 
            _351 = mem[64]
            mem[64] = mem[64] + 288
            mem[_351] = 0
            mem[_351 + 32] = 0
            mem[_351 + 64] = 0
            mem[_351 + 96] = 0
            mem[_351 + 128] = 0
            mem[_351 + 160] = 0
            mem[_351 + 192] = 0
            mem[_351 + 224] = 0
            mem[_351 + 256] = 96
            _355 = mem[64]
            mem[64] = mem[64] + 288
            mem[_355] = 0
            mem[_355 + 32] = 0
            mem[_355 + 64] = 0
            mem[_355 + 96] = 0
            mem[_355 + 128] = 0
            mem[_355 + 160] = 0
            mem[_355 + 192] = 0
            mem[_355 + 224] = 0
            mem[_355 + 256] = 96
            _358 = mem[64]
            mem[64] = mem[64] + 288
            mem[_358] = 0
            mem[_358 + 32] = address(_347)
            mem[_358 + 64] = wantAddress
            mem[_358 + 96] = 0 / _317
            mem[_358 + 128] = balancerPoolId
            mem[_358 + 160] = _214
            mem[_358 + 192] = this.address
            mem[_358 + 224] = this.address
            _359 = mem[64]
            mem[mem[64] + 32] = 0
            _363 = mem[64]
            mem[64] = mem[64] + 64
            mem[_358 + 256] = _363
            mem[_359 + 64] = 0x1ec954a00000000000000000000000000000000000000000000000000000000
            mem[_359 + 68] = 128
            mem[_359 + 196] = 0
            mem[_359 + 228] = address(_347)
            mem[_359 + 260] = wantAddress
            mem[_359 + 292] = 0 / _317
            mem[_359 + 324] = balancerPoolId
            mem[_359 + 356] = _214
            mem[_359 + 388] = this.address
            mem[_359 + 420] = this.address
            mem[_359 + 452] = 288
            _384 = mem[_363]
            mem[_359 + 484] = mem[_363]
            t = 0
            while t < _384:
                mem[t + _359 + 516] = mem[t + _363 + 32]
                t = t + 32
                continue 
            if ceil32(_384) <= _384:
                mem[_359 + 100] = ceil32(_384) + 448
                _415 = mem[_113]
                mem[ceil32(_384) + _359 + 516] = mem[_113]
                t = 0
                u = _113 + 32
                v = ceil32(_384) + _359 + 548
                while t < _415:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_359 + 132] = uint8(idx)
                mem[_359 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_384) + 448, idx << 248, tokenIndex, 0, address(_347), wantAddress, 0 / _317, balancerPoolId, _214, address(this.address), address(this.address), 288, mem[_359 + 484 len ceil32(_384) + (32 * _415) + 64]
            else:
                mem[_384 + _359 + 516] = 0
                mem[_359 + 100] = ceil32(_384) + 448
                _416 = mem[_113]
                mem[ceil32(_384) + _359 + 516] = mem[_113]
                t = 0
                u = _113 + 32
                v = ceil32(_384) + _359 + 548
                while t < _416:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_359 + 132] = uint8(idx)
                mem[_359 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_384) + 448, idx << 248, tokenIndex, 0, address(_347), wantAddress, 0 / _317, balancerPoolId, _214, address(this.address), address(this.address), 288, mem[_359 + 484 len _384 + 32], 0, mem[_359 + _384 + 548 len ceil32(_384) + (32 * _416) - _384]
            mem[_359 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _359 + ceil32(return_data.size) + 64
        else:
            if (_324 * mem[(32 * uint8(idx)) + _113 + 32]) + (mem[_331] * mem[(32 * uint8(idx)) + _113 + 32]) / mem[(32 * uint8(idx)) + _113 + 32] != _324 + mem[_331]:
                revert with 0, 'SafeMath: multiplication overflow'
            _340 = mem[64]
            mem[64] = mem[64] + 64
            mem[_340] = 26
            mem[_340 + 32] = 'SafeMath: division by zero'
            if not _317:
                _342 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _342 + 68] = mem[idx + _340 + 32]
                    idx = idx + 32
                    continue 
                mem[_342 + 94] = 0
                revert with memory
                  from mem[64]
                   len _342 + -mem[64] + 100
            if not (_324 * _336) + (_332 * _336) / _317:
                idx = idx + 1
                s = s
                continue 
            require uint8(idx) < mem[ceil32(return_data.size) + 96]
            _350 = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 128]
            if wantAddress == mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]:
                idx = idx + 1
                s = ((_324 * _336) + (_332 * _336) / _317) + s
                continue 
            _352 = mem[64]
            mem[64] = mem[64] + 288
            mem[_352] = 0
            mem[_352 + 32] = 0
            mem[_352 + 64] = 0
            mem[_352 + 96] = 0
            mem[_352 + 128] = 0
            mem[_352 + 160] = 0
            mem[_352 + 192] = 0
            mem[_352 + 224] = 0
            mem[_352 + 256] = 96
            _360 = mem[64]
            mem[64] = mem[64] + 288
            mem[_360] = 0
            mem[_360 + 32] = 0
            mem[_360 + 64] = 0
            mem[_360 + 96] = 0
            mem[_360 + 128] = 0
            mem[_360 + 160] = 0
            mem[_360 + 192] = 0
            mem[_360 + 224] = 0
            mem[_360 + 256] = 96
            _361 = mem[64]
            mem[64] = mem[64] + 288
            mem[_361] = 0
            mem[_361 + 32] = address(_350)
            mem[_361 + 64] = wantAddress
            mem[_361 + 96] = (_324 * _336) + (_332 * _336) / _317
            mem[_361 + 128] = balancerPoolId
            mem[_361 + 160] = _214
            mem[_361 + 192] = this.address
            mem[_361 + 224] = this.address
            _362 = mem[64]
            mem[mem[64] + 32] = 0
            _365 = mem[64]
            mem[64] = mem[64] + 64
            mem[_361 + 256] = _365
            mem[_362 + 64] = 0x1ec954a00000000000000000000000000000000000000000000000000000000
            mem[_362 + 68] = 128
            mem[_362 + 196] = 0
            mem[_362 + 228] = address(_350)
            mem[_362 + 260] = wantAddress
            mem[_362 + 292] = (_324 * _336) + (_332 * _336) / _317
            mem[_362 + 324] = balancerPoolId
            mem[_362 + 356] = _214
            mem[_362 + 388] = this.address
            mem[_362 + 420] = this.address
            mem[_362 + 452] = 288
            _386 = mem[_365]
            mem[_362 + 484] = mem[_365]
            t = 0
            while t < _386:
                mem[t + _362 + 516] = mem[t + _365 + 32]
                t = t + 32
                continue 
            if ceil32(_386) <= _386:
                mem[_362 + 100] = ceil32(_386) + 448
                _413 = mem[_113]
                mem[ceil32(_386) + _362 + 516] = mem[_113]
                t = 0
                u = _113 + 32
                v = ceil32(_386) + _362 + 548
                while t < _413:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_362 + 132] = uint8(idx)
                mem[_362 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_386) + 448, idx << 248, tokenIndex, 0, address(_350), wantAddress, (_324 * _336) + (_332 * _336) / _317, balancerPoolId, _214, address(this.address), address(this.address), 288, mem[_362 + 484 len ceil32(_386) + (32 * _413) + 64]
            else:
                mem[_386 + _362 + 516] = 0
                mem[_362 + 100] = ceil32(_386) + 448
                _414 = mem[_113]
                mem[ceil32(_386) + _362 + 516] = mem[_113]
                t = 0
                u = _113 + 32
                v = ceil32(_386) + _362 + 548
                while t < _414:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_362 + 132] = uint8(idx)
                mem[_362 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_386) + 448, idx << 248, tokenIndex, 0, address(_350), wantAddress, (_324 * _336) + (_332 * _336) / _317, balancerPoolId, _214, address(this.address), address(this.address), 288, mem[_362 + 484 len _386 + 32], 0, mem[_362 + _386 + 548 len ceil32(_386) + (32 * _414) - _386]
            mem[_362 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _362 + ceil32(return_data.size) + 64
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _318 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if s + mem[_318] < mem[_318]:
        revert with 0, 'SafeMath: addition overflow'
    mem[mem[64]] = s + mem[_318]
    return memory
      from mem[64]
       len 32
}

function isActive() {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
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
    mem[ceil32(return_data.size) + 384] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 388] = balancerPoolId
    require ext_code.size(balancerVaultAddress)
    staticcall balancerVaultAddress.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args balancerPoolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 384
    require return_data.size >= 96
    _20 = mem[ceil32(return_data.size) + 384 len 4], stor18
    require mem[ceil32(return_data.size) + 384 len 4], stor18 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 384 len 4], stor18 + 415 < ceil32(return_data.size) + return_data.size + 384
    _21 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 384 len 4], stor18 + 384]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 384 len 4], stor18 + 384] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 384 len 4], stor18 + 384]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 384 len 4], stor18 + 384]) + 416 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 384 len 4], stor18 + 384]) + 416
    mem[(2 * ceil32(return_data.size)) + 384] = _21
    require _20 + (32 * _21) + 32 <= return_data.size
    s = ceil32(return_data.size) + _20 + 416
    t = (2 * ceil32(return_data.size)) + 416
    idx = 0
    while idx < _21:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _126 = mem[ceil32(return_data.size) + 416]
    require mem[ceil32(return_data.size) + 416] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 415 < ceil32(return_data.size) + return_data.size + 384
    _128 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 384]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 384] <= test266151307()
    _129 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 384]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 384]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 384]) + 32
    mem[_129] = _128
    require return_data.size >= _126 + (32 * _128) + 32
    mem[_129 + 32 len 32 * _128] = mem[ceil32(return_data.size) + _126 + 416 len 32 * _128]
    _230 = mem[ceil32(return_data.size) + 448]
    idx = 0
    s = 0
    while uint8(idx) < numTokens:
        require ext_code.size(bptAddress)
        staticcall bptAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _331 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _333 = mem[_331]
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(stor19.field_16))
        staticcall address(stor19.field_16).userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor30, this.address
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _338 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _340 = mem[_338]
        mem[mem[64] + 4] = this.address
        require ext_code.size(bptAddress)
        staticcall bptAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _347 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _348 = mem[_347]
        if _340 + mem[_347] < mem[_347]:
            revert with 0, 'SafeMath: addition overflow'
        require uint8(idx) < mem[_129]
        _352 = mem[(32 * uint8(idx)) + _129 + 32]
        if not mem[(32 * uint8(idx)) + _129 + 32]:
            _354 = mem[64]
            mem[64] = mem[64] + 64
            mem[_354] = 26
            mem[_354 + 32] = 'SafeMath: division by zero'
            if not _333:
                _357 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _357 + 68] = mem[idx + _354 + 32]
                    idx = idx + 32
                    continue 
                mem[_357 + 94] = 0
                revert with memory
                  from mem[64]
                   len _357 + -mem[64] + 100
            if not 0 / _333:
                idx = idx + 1
                s = s
                continue 
            require uint8(idx) < mem[(2 * ceil32(return_data.size)) + 384]
            _363 = mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 416]
            if wantAddress == mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 428 len 20]:
                idx = idx + 1
                s = (0 / _333) + s
                continue 
            _367 = mem[64]
            mem[64] = mem[64] + 288
            mem[_367] = 0
            mem[_367 + 32] = 0
            mem[_367 + 64] = 0
            mem[_367 + 96] = 0
            mem[_367 + 128] = 0
            mem[_367 + 160] = 0
            mem[_367 + 192] = 0
            mem[_367 + 224] = 0
            mem[_367 + 256] = 96
            _371 = mem[64]
            mem[64] = mem[64] + 288
            mem[_371] = 0
            mem[_371 + 32] = 0
            mem[_371 + 64] = 0
            mem[_371 + 96] = 0
            mem[_371 + 128] = 0
            mem[_371 + 160] = 0
            mem[_371 + 192] = 0
            mem[_371 + 224] = 0
            mem[_371 + 256] = 96
            _374 = mem[64]
            mem[64] = mem[64] + 288
            mem[_374] = 0
            mem[_374 + 32] = address(_363)
            mem[_374 + 64] = wantAddress
            mem[_374 + 96] = 0 / _333
            mem[_374 + 128] = balancerPoolId
            mem[_374 + 160] = _230
            mem[_374 + 192] = this.address
            mem[_374 + 224] = this.address
            _375 = mem[64]
            mem[mem[64] + 32] = 0
            _379 = mem[64]
            mem[64] = mem[64] + 64
            mem[_374 + 256] = _379
            mem[_375 + 64] = 0x1ec954a00000000000000000000000000000000000000000000000000000000
            mem[_375 + 68] = 128
            mem[_375 + 196] = 0
            mem[_375 + 228] = address(_363)
            mem[_375 + 260] = wantAddress
            mem[_375 + 292] = 0 / _333
            mem[_375 + 324] = balancerPoolId
            mem[_375 + 356] = _230
            mem[_375 + 388] = this.address
            mem[_375 + 420] = this.address
            mem[_375 + 452] = 288
            _400 = mem[_379]
            mem[_375 + 484] = mem[_379]
            t = 0
            while t < _400:
                mem[t + _375 + 516] = mem[t + _379 + 32]
                t = t + 32
                continue 
            if ceil32(_400) <= _400:
                mem[_375 + 100] = ceil32(_400) + 448
                _431 = mem[_129]
                mem[ceil32(_400) + _375 + 516] = mem[_129]
                t = 0
                u = _129 + 32
                v = ceil32(_400) + _375 + 548
                while t < _431:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_375 + 132] = uint8(idx)
                mem[_375 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_400) + 448, idx << 248, tokenIndex, 0, address(_363), wantAddress, 0 / _333, balancerPoolId, _230, address(this.address), address(this.address), 288, mem[_375 + 484 len ceil32(_400) + (32 * _431) + 64]
            else:
                mem[_400 + _375 + 516] = 0
                mem[_375 + 100] = ceil32(_400) + 448
                _432 = mem[_129]
                mem[ceil32(_400) + _375 + 516] = mem[_129]
                t = 0
                u = _129 + 32
                v = ceil32(_400) + _375 + 548
                while t < _432:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_375 + 132] = uint8(idx)
                mem[_375 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_400) + 448, idx << 248, tokenIndex, 0, address(_363), wantAddress, 0 / _333, balancerPoolId, _230, address(this.address), address(this.address), 288, mem[_375 + 484 len _400 + 32], 0, mem[_375 + _400 + 548 len ceil32(_400) + (32 * _432) - _400]
            mem[_375 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _375 + ceil32(return_data.size) + 64
        else:
            if (_340 * mem[(32 * uint8(idx)) + _129 + 32]) + (mem[_347] * mem[(32 * uint8(idx)) + _129 + 32]) / mem[(32 * uint8(idx)) + _129 + 32] != _340 + mem[_347]:
                revert with 0, 'SafeMath: multiplication overflow'
            _356 = mem[64]
            mem[64] = mem[64] + 64
            mem[_356] = 26
            mem[_356 + 32] = 'SafeMath: division by zero'
            if not _333:
                _358 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _358 + 68] = mem[idx + _356 + 32]
                    idx = idx + 32
                    continue 
                mem[_358 + 94] = 0
                revert with memory
                  from mem[64]
                   len _358 + -mem[64] + 100
            if not (_340 * _352) + (_348 * _352) / _333:
                idx = idx + 1
                s = s
                continue 
            require uint8(idx) < mem[(2 * ceil32(return_data.size)) + 384]
            _366 = mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 416]
            if wantAddress == mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 428 len 20]:
                idx = idx + 1
                s = ((_340 * _352) + (_348 * _352) / _333) + s
                continue 
            _368 = mem[64]
            mem[64] = mem[64] + 288
            mem[_368] = 0
            mem[_368 + 32] = 0
            mem[_368 + 64] = 0
            mem[_368 + 96] = 0
            mem[_368 + 128] = 0
            mem[_368 + 160] = 0
            mem[_368 + 192] = 0
            mem[_368 + 224] = 0
            mem[_368 + 256] = 96
            _376 = mem[64]
            mem[64] = mem[64] + 288
            mem[_376] = 0
            mem[_376 + 32] = 0
            mem[_376 + 64] = 0
            mem[_376 + 96] = 0
            mem[_376 + 128] = 0
            mem[_376 + 160] = 0
            mem[_376 + 192] = 0
            mem[_376 + 224] = 0
            mem[_376 + 256] = 96
            _377 = mem[64]
            mem[64] = mem[64] + 288
            mem[_377] = 0
            mem[_377 + 32] = address(_366)
            mem[_377 + 64] = wantAddress
            mem[_377 + 96] = (_340 * _352) + (_348 * _352) / _333
            mem[_377 + 128] = balancerPoolId
            mem[_377 + 160] = _230
            mem[_377 + 192] = this.address
            mem[_377 + 224] = this.address
            _378 = mem[64]
            mem[mem[64] + 32] = 0
            _381 = mem[64]
            mem[64] = mem[64] + 64
            mem[_377 + 256] = _381
            mem[_378 + 64] = 0x1ec954a00000000000000000000000000000000000000000000000000000000
            mem[_378 + 68] = 128
            mem[_378 + 196] = 0
            mem[_378 + 228] = address(_366)
            mem[_378 + 260] = wantAddress
            mem[_378 + 292] = (_340 * _352) + (_348 * _352) / _333
            mem[_378 + 324] = balancerPoolId
            mem[_378 + 356] = _230
            mem[_378 + 388] = this.address
            mem[_378 + 420] = this.address
            mem[_378 + 452] = 288
            _402 = mem[_381]
            mem[_378 + 484] = mem[_381]
            t = 0
            while t < _402:
                mem[t + _378 + 516] = mem[t + _381 + 32]
                t = t + 32
                continue 
            if ceil32(_402) <= _402:
                mem[_378 + 100] = ceil32(_402) + 448
                _429 = mem[_129]
                mem[ceil32(_402) + _378 + 516] = mem[_129]
                t = 0
                u = _129 + 32
                v = ceil32(_402) + _378 + 548
                while t < _429:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_378 + 132] = uint8(idx)
                mem[_378 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_402) + 448, idx << 248, tokenIndex, 0, address(_366), wantAddress, (_340 * _352) + (_348 * _352) / _333, balancerPoolId, _230, address(this.address), address(this.address), 288, mem[_378 + 484 len ceil32(_402) + (32 * _429) + 64]
            else:
                mem[_402 + _378 + 516] = 0
                mem[_378 + 100] = ceil32(_402) + 448
                _430 = mem[_129]
                mem[ceil32(_402) + _378 + 516] = mem[_129]
                t = 0
                u = _129 + 32
                v = ceil32(_402) + _378 + 548
                while t < _430:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_378 + 132] = uint8(idx)
                mem[_378 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_402) + 448, idx << 248, tokenIndex, 0, address(_366), wantAddress, (_340 * _352) + (_348 * _352) / _333, balancerPoolId, _230, address(this.address), address(this.address), 288, mem[_378 + 484 len _402 + 32], 0, mem[_378 + _402 + 548 len ceil32(_402) + (32 * _430) - _402]
            mem[_378 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _378 + ceil32(return_data.size) + 64
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _334 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if s + mem[_334] < mem[_334]:
        revert with 0, 'SafeMath: addition overflow'
    mem[mem[64]] = s + mem[_334] > 0
    return memory
      from mem[64]
       len 32
}

function harvestTrigger(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[384 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 672 <= test266151307())
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 416] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 448] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 480] = ext_call.return_data[96]
    mem[ceil32(return_data.size) + 512] = ext_call.return_data[128]
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[160]
    mem[ceil32(return_data.size) + 576] = ext_call.return_data[192]
    mem[ceil32(return_data.size) + 608] = ext_call.return_data[224]
    mem[ceil32(return_data.size) + 640] = ext_call.return_data[256]
    if 0 == ext_call.return_data[32]:
        return 0
    mem[ceil32(return_data.size) + 672] = 30
    mem[ceil32(return_data.size) + 704] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[160] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - ext_call.return_data[160] < minReportDelay:
        return 0
    mem[ceil32(return_data.size) + 736] = 30
    mem[ceil32(return_data.size) + 768] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[160] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - ext_call.return_data[160] >= maxReportDelay:
        return 1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.debtOutstanding() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > debtThreshold:
        return 1
    mem[(2 * ceil32(return_data.size)) + 800] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 804] = balancerPoolId
    require ext_code.size(balancerVaultAddress)
    staticcall balancerVaultAddress.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args balancerPoolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 800 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 800
    require return_data.size >= 96
    _45 = mem[(2 * ceil32(return_data.size)) + 800 len 4], stor18
    require mem[(2 * ceil32(return_data.size)) + 800 len 4], stor18 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 800 len 4], stor18 + 831 < (2 * ceil32(return_data.size)) + return_data.size + 800
    _46 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 800 len 4], stor18 + 800]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 800 len 4], stor18 + 800] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 800 len 4], stor18 + 800]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 800 len 4], stor18 + 800]) + 832 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 800 len 4], stor18 + 800]) + 832
    mem[(4 * ceil32(return_data.size)) + 800] = _46
    require _45 + (32 * _46) + 32 <= return_data.size
    s = (2 * ceil32(return_data.size)) + _45 + 832
    t = (4 * ceil32(return_data.size)) + 832
    idx = 0
    while idx < _46:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _186 = mem[(2 * ceil32(return_data.size)) + 832]
    require mem[(2 * ceil32(return_data.size)) + 832] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832] + 831 < (2 * ceil32(return_data.size)) + return_data.size + 800
    _190 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832] + 800]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832] + 800] <= test266151307()
    _195 = mem[64]
    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832] + 800]) + 32 >= mem[64] and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832] + 800]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832] + 800]) + 32
    mem[_195] = _190
    require return_data.size >= _186 + (32 * _190) + 32
    mem[_195 + 32 len 32 * _190] = mem[(2 * ceil32(return_data.size)) + _186 + 832 len 32 * _190]
    _331 = mem[(2 * ceil32(return_data.size)) + 864]
    idx = 0
    s = 0
    while uint8(idx) < numTokens:
        require ext_code.size(bptAddress)
        staticcall bptAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _467 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _469 = mem[_467]
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(stor19.field_16))
        staticcall address(stor19.field_16).userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor30, this.address
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _474 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _476 = mem[_474]
        mem[mem[64] + 4] = this.address
        require ext_code.size(bptAddress)
        staticcall bptAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _484 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _489 = mem[_484]
        if _476 + mem[_484] < mem[_484]:
            revert with 0, 'SafeMath: addition overflow'
        require uint8(idx) < mem[_195]
        _503 = mem[(32 * uint8(idx)) + _195 + 32]
        if not mem[(32 * uint8(idx)) + _195 + 32]:
            _509 = mem[64]
            mem[64] = mem[64] + 64
            mem[_509] = 26
            mem[_509 + 32] = 'SafeMath: division by zero'
            if not _469:
                _517 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _517 + 68] = mem[idx + _509 + 32]
                    idx = idx + 32
                    continue 
                mem[_517 + 94] = 0
                revert with memory
                  from mem[64]
                   len _517 + -mem[64] + 100
            if not 0 / _469:
                idx = idx + 1
                s = s
                continue 
            require uint8(idx) < mem[(4 * ceil32(return_data.size)) + 800]
            _529 = mem[(32 * uint8(idx)) + (4 * ceil32(return_data.size)) + 832]
            if wantAddress == mem[(32 * uint8(idx)) + (4 * ceil32(return_data.size)) + 844 len 20]:
                idx = idx + 1
                s = (0 / _469) + s
                continue 
            _535 = mem[64]
            mem[64] = mem[64] + 288
            mem[_535] = 0
            mem[_535 + 32] = 0
            mem[_535 + 64] = 0
            mem[_535 + 96] = 0
            mem[_535 + 128] = 0
            mem[_535 + 160] = 0
            mem[_535 + 192] = 0
            mem[_535 + 224] = 0
            mem[_535 + 256] = 96
            _542 = mem[64]
            mem[64] = mem[64] + 288
            mem[_542] = 0
            mem[_542 + 32] = 0
            mem[_542 + 64] = 0
            mem[_542 + 96] = 0
            mem[_542 + 128] = 0
            mem[_542 + 160] = 0
            mem[_542 + 192] = 0
            mem[_542 + 224] = 0
            mem[_542 + 256] = 96
            _545 = mem[64]
            mem[64] = mem[64] + 288
            mem[_545] = 0
            mem[_545 + 32] = address(_529)
            mem[_545 + 64] = wantAddress
            mem[_545 + 96] = 0 / _469
            mem[_545 + 128] = balancerPoolId
            mem[_545 + 160] = _331
            mem[_545 + 192] = this.address
            mem[_545 + 224] = this.address
            _546 = mem[64]
            mem[mem[64] + 32] = 0
            _550 = mem[64]
            mem[64] = mem[64] + 64
            mem[_545 + 256] = _550
            mem[_546 + 64] = 0x1ec954a00000000000000000000000000000000000000000000000000000000
            mem[_546 + 68] = 128
            mem[_546 + 196] = 0
            mem[_546 + 228] = address(_529)
            mem[_546 + 260] = wantAddress
            mem[_546 + 292] = 0 / _469
            mem[_546 + 324] = balancerPoolId
            mem[_546 + 356] = _331
            mem[_546 + 388] = this.address
            mem[_546 + 420] = this.address
            mem[_546 + 452] = 288
            _571 = mem[_550]
            mem[_546 + 484] = mem[_550]
            t = 0
            while t < _571:
                mem[t + _546 + 516] = mem[t + _550 + 32]
                t = t + 32
                continue 
            if ceil32(_571) <= _571:
                mem[_546 + 100] = ceil32(_571) + 448
                _603 = mem[_195]
                mem[ceil32(_571) + _546 + 516] = mem[_195]
                t = 0
                u = _195 + 32
                v = ceil32(_571) + _546 + 548
                while t < _603:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_546 + 132] = uint8(idx)
                mem[_546 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_571) + 448, idx << 248, tokenIndex, 0, address(_529), wantAddress, 0 / _469, balancerPoolId, _331, address(this.address), address(this.address), 288, mem[_546 + 484 len ceil32(_571) + (32 * _603) + 64]
            else:
                mem[_571 + _546 + 516] = 0
                mem[_546 + 100] = ceil32(_571) + 448
                _604 = mem[_195]
                mem[ceil32(_571) + _546 + 516] = mem[_195]
                t = 0
                u = _195 + 32
                v = ceil32(_571) + _546 + 548
                while t < _604:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_546 + 132] = uint8(idx)
                mem[_546 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_571) + 448, idx << 248, tokenIndex, 0, address(_529), wantAddress, 0 / _469, balancerPoolId, _331, address(this.address), address(this.address), 288, mem[_546 + 484 len _571 + 32], 0, mem[_546 + _571 + 548 len ceil32(_571) + (32 * _604) - _571]
            mem[_546 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _546 + ceil32(return_data.size) + 64
        else:
            if (_476 * mem[(32 * uint8(idx)) + _195 + 32]) + (mem[_484] * mem[(32 * uint8(idx)) + _195 + 32]) / mem[(32 * uint8(idx)) + _195 + 32] != _476 + mem[_484]:
                revert with 0, 'SafeMath: multiplication overflow'
            _516 = mem[64]
            mem[64] = mem[64] + 64
            mem[_516] = 26
            mem[_516 + 32] = 'SafeMath: division by zero'
            if not _469:
                _522 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _522 + 68] = mem[idx + _516 + 32]
                    idx = idx + 32
                    continue 
                mem[_522 + 94] = 0
                revert with memory
                  from mem[64]
                   len _522 + -mem[64] + 100
            if not (_476 * _503) + (_489 * _503) / _469:
                idx = idx + 1
                s = s
                continue 
            require uint8(idx) < mem[(4 * ceil32(return_data.size)) + 800]
            _534 = mem[(32 * uint8(idx)) + (4 * ceil32(return_data.size)) + 832]
            if wantAddress == mem[(32 * uint8(idx)) + (4 * ceil32(return_data.size)) + 844 len 20]:
                idx = idx + 1
                s = ((_476 * _503) + (_489 * _503) / _469) + s
                continue 
            _538 = mem[64]
            mem[64] = mem[64] + 288
            mem[_538] = 0
            mem[_538 + 32] = 0
            mem[_538 + 64] = 0
            mem[_538 + 96] = 0
            mem[_538 + 128] = 0
            mem[_538 + 160] = 0
            mem[_538 + 192] = 0
            mem[_538 + 224] = 0
            mem[_538 + 256] = 96
            _547 = mem[64]
            mem[64] = mem[64] + 288
            mem[_547] = 0
            mem[_547 + 32] = 0
            mem[_547 + 64] = 0
            mem[_547 + 96] = 0
            mem[_547 + 128] = 0
            mem[_547 + 160] = 0
            mem[_547 + 192] = 0
            mem[_547 + 224] = 0
            mem[_547 + 256] = 96
            _548 = mem[64]
            mem[64] = mem[64] + 288
            mem[_548] = 0
            mem[_548 + 32] = address(_534)
            mem[_548 + 64] = wantAddress
            mem[_548 + 96] = (_476 * _503) + (_489 * _503) / _469
            mem[_548 + 128] = balancerPoolId
            mem[_548 + 160] = _331
            mem[_548 + 192] = this.address
            mem[_548 + 224] = this.address
            _549 = mem[64]
            mem[mem[64] + 32] = 0
            _552 = mem[64]
            mem[64] = mem[64] + 64
            mem[_548 + 256] = _552
            mem[_549 + 64] = 0x1ec954a00000000000000000000000000000000000000000000000000000000
            mem[_549 + 68] = 128
            mem[_549 + 196] = 0
            mem[_549 + 228] = address(_534)
            mem[_549 + 260] = wantAddress
            mem[_549 + 292] = (_476 * _503) + (_489 * _503) / _469
            mem[_549 + 324] = balancerPoolId
            mem[_549 + 356] = _331
            mem[_549 + 388] = this.address
            mem[_549 + 420] = this.address
            mem[_549 + 452] = 288
            _573 = mem[_552]
            mem[_549 + 484] = mem[_552]
            t = 0
            while t < _573:
                mem[t + _549 + 516] = mem[t + _552 + 32]
                t = t + 32
                continue 
            if ceil32(_573) <= _573:
                mem[_549 + 100] = ceil32(_573) + 448
                _601 = mem[_195]
                mem[ceil32(_573) + _549 + 516] = mem[_195]
                t = 0
                u = _195 + 32
                v = ceil32(_573) + _549 + 548
                while t < _601:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_549 + 132] = uint8(idx)
                mem[_549 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_573) + 448, idx << 248, tokenIndex, 0, address(_534), wantAddress, (_476 * _503) + (_489 * _503) / _469, balancerPoolId, _331, address(this.address), address(this.address), 288, mem[_549 + 484 len ceil32(_573) + (32 * _601) + 64]
            else:
                mem[_573 + _549 + 516] = 0
                mem[_549 + 100] = ceil32(_573) + 448
                _602 = mem[_195]
                mem[ceil32(_573) + _549 + 516] = mem[_195]
                t = 0
                u = _195 + 32
                v = ceil32(_573) + _549 + 548
                while t < _602:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_549 + 132] = uint8(idx)
                mem[_549 + 164] = tokenIndex
                require ext_code.size(bptAddress)
                staticcall bptAddress.onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256[] arg10, uint256 arg11, uint256 arg12) with:
                        gas gas_remaining wei
                       args 128, ceil32(_573) + 448, idx << 248, tokenIndex, 0, address(_534), wantAddress, (_476 * _503) + (_489 * _503) / _469, balancerPoolId, _331, address(this.address), address(this.address), 288, mem[_549 + 484 len _573 + 32], 0, mem[_549 + _573 + 548 len ceil32(_573) + (32 * _602) - _573]
            mem[_549 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _549 + ceil32(return_data.size) + 64
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _470 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _472 = mem[_470]
    if s + mem[_470] < mem[_470]:
        revert with 0, 'SafeMath: addition overflow'
    if debtThreshold < 0:
        revert with 0, 'SafeMath: addition overflow'
    if debtThreshold + s + mem[_470] < mem[ceil32(return_data.size) + 576]:
        return 1
    if s + mem[_470] <= mem[ceil32(return_data.size) + 576]:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _492 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_492] < mem[_492]:
            revert with 0, 'SafeMath: addition overflow'
        if profitFactor:
            if 0 / profitFactor:
                revert with 0, 'SafeMath: multiplication overflow'
        mem[mem[64]] = 0 < mem[_492]
    else:
        _488 = mem[ceil32(return_data.size) + 576]
        _490 = mem[64]
        mem[64] = mem[64] + 64
        mem[_490] = 30
        mem[_490 + 32] = 'SafeMath: subtraction overflow'
        if _488 > s + _472:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _506 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s + _472 - _488 + mem[_506] < mem[_506]:
            revert with 0, 'SafeMath: addition overflow'
        if profitFactor:
            if 0 / profitFactor:
                revert with 0, 'SafeMath: multiplication overflow'
        mem[mem[64]] = 0 < s + _472 - _488 + mem[_506]
    return memory
      from mem[64]
       len 32
}



}
