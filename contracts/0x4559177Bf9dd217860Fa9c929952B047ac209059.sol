contract main {




// =====================  Runtime code  =====================


#
#  - isActive()
#  - withdraw(uint256 arg1)
#  - resetApprovals()
#  - tend()
#  - harvest()
#  - approveContracts()
#  - rebalanceCollateral()
#  - sub_cca4b65f(?)
#  - migrate(address arg1)
#  - sub_d2b49a92(?)
#  - harvestTrigger(uint256 arg1)
#
const name = 'StrategyHedgedFarming', 0

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
uint256 sub_1a55f6eb;
uint256 sub_1fa98a80;
uint256 sub_f8c1e75e;
uint256 sub_7acd7922;
uint256 sub_a9b0ca38;
uint256 sub_be48a8f1;
uint256 sub_3e44de51;
uint256 sub_f38c5ccc;
uint256 sub_85889c54;
address shortAddress;
address stor22;
address stor23;
address stor24;
address stor25;
address stor26;
address stor27;
address stor28;
address stor29;
address stor30;
address stor31;
address insuranceAddress;
uint256 sub_39bb9c24;
uint256 sub_54b1a6d8;
uint256 stor35;
address stor36;

function metadataURI() payable {
    return metadataURI[0 len metadataURI.length]
}

function sub_1a55f6eb(?) payable {
    return sub_1a55f6eb
}

function debtThreshold() payable {
    return debtThreshold
}

function want() payable {
    return wantAddress
}

function sub_1fa98a80(?) payable {
    return sub_1fa98a80
}

function strategist() payable {
    return strategistAddress
}

function maxReportDelay() payable {
    return maxReportDelay
}

function short() payable {
    return shortAddress
}

function sub_39bb9c24(?) payable {
    return sub_39bb9c24
}

function sub_3e44de51(?) payable {
    return sub_3e44de51
}

function sub_54b1a6d8(?) payable {
    return sub_54b1a6d8
}

function emergencyExit() payable {
    return bool(emergencyExit)
}

function doHealthCheck() payable {
    return bool(stor1)
}

function sub_7acd7922(?) payable {
    return sub_7acd7922
}

function sub_85889c54(?) payable {
    return sub_85889c54
}

function insurance() payable {
    return insuranceAddress
}

function profitFactor() payable {
    return profitFactor
}

function minReportDelay() payable {
    return minReportDelay
}

function rewards() payable {
    return rewardsAddress
}

function sub_a9b0ca38(?) payable {
    return sub_a9b0ca38
}

function keeper() payable {
    return keeperAddress
}

function healthCheck() payable {
    return healthCheckAddress
}

function sub_be48a8f1(?) payable {
    return sub_be48a8f1
}

function sub_f38c5ccc(?) payable {
    return sub_f38c5ccc
}

function sub_f8c1e75e(?) payable {
    return sub_f8c1e75e
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function tendTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0
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

function sub_feb6848a(?) payable {
    require ext_code.size(shortAddress)
    staticcall shortAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ecda3cd6(?) payable {
    require ext_code.size(stor27)
    staticcall stor27.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setInsurance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!authorized'
    require not insuranceAddress
    insuranceAddress = arg1
}

function sub_bf428341(?) payable {
    require calldata.size - 4 >= 64
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    sub_39bb9c24 = arg1
    sub_54b1a6d8 = arg2
}

function setProfitFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x5aa6e675 with:
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
        staticcall vaultAddress.0x5aa6e675 with:
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
        staticcall vaultAddress.0x5aa6e675 with:
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
        staticcall vaultAddress.0x5aa6e675 with:
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
        staticcall vaultAddress.0x5aa6e675 with:
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
        staticcall vaultAddress.0x5aa6e675 with:
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

function sub_5fc7a201(?) payable {
    require calldata.size - 4 >= 96
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    require arg1 <= 10000
    require arg3 <= 10000
    require arg2 >= 10000
    sub_f38c5ccc = arg3
    sub_be48a8f1 = arg2
    sub_3e44de51 = arg1
}

function sub_29b909ea(?) payable {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor28)
    staticcall stor28.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor35, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function sub_a9c19c66(?) payable {
    require ext_code.size(stor26)
    staticcall stor26.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_de41f1d3(?) payable {
    require ext_code.size(stor26)
    staticcall stor26.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_f40feaed(?) payable {
    require ext_code.size(stor27)
    staticcall stor27.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor31)
    staticcall stor31.getPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
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
        staticcall vaultAddress.0x5aa6e675 with:
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
        staticcall vaultAddress.0x5aa6e675 with:
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

function sub_315c41f2(?) payable {
    require calldata.size - 4 >= 128
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    require arg4 <= 10000
    sub_85889c54 = arg4
    require arg4 > arg3
    require arg3 >= arg2
    require arg2 >= arg1
    sub_f8c1e75e = arg3
    sub_7acd7922 = arg2
    sub_a9b0ca38 = arg1
    if sub_7acd7922 + 10000 < 10000:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_7acd7922 + 10000:
        revert with 0, 'SafeMath: division by zero', 0
    sub_1a55f6eb = 100 * 10^6 / sub_7acd7922 + 10000
    if 100 * 10^6 / sub_7acd7922 + 10000 > 10000:
        revert with 0, 'SafeMath: subtraction overflow', 0
    sub_1fa98a80 = -(100 * 10^6 / sub_7acd7922 + 10000) + 10000
}

function setMetadataURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x5aa6e675 with:
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

function sub_ff7fae1d(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor30)
    staticcall stor30.supplyCaps(address arg1) with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(stor26)
    staticcall stor26.getCash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.totalBorrows() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.totalReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (arg1 + ext_call.return_data[0] > ext_call.return_data[0])
}

function setEmergencyExit() payable {
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x5aa6e675 with:
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

function sub_572f1e78(?) payable {
    require ext_code.size(shortAddress)
    staticcall shortAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor22)
    staticcall stor22.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wantAddress:
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / Mask(112, 0, ext_call.return_data[0]))
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        return (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]))
    if not ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / Mask(112, 0, ext_call.return_data[32]))
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero', 0
    return (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]))
}

function sub_cad20a29(?) payable {
    require ext_code.size(stor27)
    staticcall stor27.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor22)
    staticcall stor22.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wantAddress:
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / Mask(112, 0, ext_call.return_data[0]))
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        return (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]))
    if not ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / Mask(112, 0, ext_call.return_data[32]))
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero', 0
    return (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]))
}

function sub_e6e7114b(?) payable {
    require ext_code.size(stor26)
    staticcall stor26.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor27)
        staticcall stor27.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor31)
        staticcall stor31.getPrice() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
        revert with 0, 'SafeMath: division by zero', 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(stor27)
    staticcall stor27.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor31)
    staticcall stor31.getPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10000:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    return (10000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_ec079f38(?) payable {
    require ext_code.size(stor22)
    staticcall stor22.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor22)
    staticcall stor22.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor22)
    staticcall stor22.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor28)
    staticcall stor28.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor35, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((7 * ceil32(return_data.size)) + 160 <= test266151307())
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[12 len 20] != wantAddress:
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / ext_call.return_data[0])
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0])
    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
}

function sweep(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x5aa6e675 with:
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
    mem[ceil32(return_data.size) + 96] = 7
    mem[ceil32(return_data.size) + 128] = shortAddress
    mem[ceil32(return_data.size) + 160] = stor22
    mem[ceil32(return_data.size) + 192] = stor24
    mem[ceil32(return_data.size) + 224] = stor23
    mem[ceil32(return_data.size) + 256] = stor25
    mem[ceil32(return_data.size) + 288] = stor26
    mem[ceil32(return_data.size) + 320] = stor27
    idx = 0
    while idx < 7:
        require idx < 7
        if arg1 == mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
            revert with 0, '!protected'
        idx = idx + 1
        continue 
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x5aa6e675 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 356] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 32]
    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 388] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 352] = (5 * ceil32(return_data.size)) + 68
    mem[(4 * ceil32(return_data.size)) + 388 len 28] = address(ext_call.return_data[0]) << 64
    mem[(4 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 452] = 32
    mem[(4 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 516 len floor32((5 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 452 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
    if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
        mem[(10 * ceil32(return_data.size)) + 584] = 0
    call arg1.mem[(4 * ceil32(return_data.size)) + 516 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 520 len (13 * ceil32(return_data.size)) + 64]
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
        mem[(4 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 548] == bool(mem[(4 * ceil32(return_data.size)) + 548])
            if not mem[(4 * ceil32(return_data.size)) + 548]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_3e4db047(?) payable {
    require ext_code.size(stor24)
    staticcall stor24.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor28)
    staticcall stor28.0xa279b07f with:
            gas gas_remaining wei
           args stor35, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(stor24)
    staticcall stor24.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(shortAddress)
    staticcall shortAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor22)
    staticcall stor22.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wantAddress:
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / Mask(112, 0, ext_call.return_data[0]))
            if Mask(112, 0, ext_call.return_data[32]) * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return (Mask(112, 0, ext_call.return_data[32]) * 0 / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]))
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / Mask(112, 0, ext_call.return_data[0]))
        if Mask(112, 0, ext_call.return_data[32]) * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        return (Mask(112, 0, ext_call.return_data[32]) * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]))
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / Mask(112, 0, ext_call.return_data[32]))
        if Mask(112, 0, ext_call.return_data[0]) * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        return (Mask(112, 0, ext_call.return_data[0]) * 0 / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]))
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / Mask(112, 0, ext_call.return_data[32]))
    if Mask(112, 0, ext_call.return_data[0]) * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero', 0
    return (Mask(112, 0, ext_call.return_data[0]) * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]))
}

function ethToWant(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor36 == wantAddress:
        return arg1
    if stor36 == stor36:
        mem[96] = 2
        mem[128] = stor36
        require stor36 == stor36
        mem[160] = wantAddress
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor29)
        staticcall stor29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _121 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
        _127 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require return_data.size >= _121 + (32 * _127) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _127] = mem[_121 + 224 len 32 * _127]
        require 1 < _127
        mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    else:
        if stor36 == wantAddress:
            mem[96] = 2
            mem[128] = stor36
            require stor36 == wantAddress
            mem[160] = wantAddress
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg1
            mem[228] = 64
            mem[260] = 2
            idx = 0
            s = 128
            t = 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor29)
            staticcall stor29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _123 = mem[192 len 4], Mask(224, 32, arg1) >> 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
            _129 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
            require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require return_data.size >= _123 + (32 * _129) + 32
            mem[ceil32(return_data.size) + 224 len 32 * _129] = mem[_123 + 224 len 32 * _129]
            require 1 < _129
            mem[mem[64]] = mem[ceil32(return_data.size) + 256]
        else:
            mem[96] = 3
            mem[128 len 96] = call.data[calldata.size len 96]
            mem[128] = stor36
            if stor36 == wantAddress:
                mem[160] = wantAddress
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = arg1
                mem[260] = 64
                mem[292] = 3
                idx = 0
                s = 128
                t = 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor29)
                staticcall stor29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=3, data=mem[324 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _125 = mem[224 len 4], Mask(224, 32, arg1) >> 32
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
                _131 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
                require (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require return_data.size >= _125 + (32 * _131) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _131] = mem[_125 + 256 len 32 * _131]
                require 2 < _131
            else:
                mem[160] = stor36
                mem[192] = wantAddress
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = arg1
                mem[260] = 64
                mem[292] = 3
                idx = 0
                s = 128
                t = 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor29)
                staticcall stor29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=3, data=mem[324 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _124 = mem[224 len 4], Mask(224, 32, arg1) >> 32
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
                _130 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
                require (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require return_data.size >= _124 + (32 * _130) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _130] = mem[_124 + 256 len 32 * _130]
                require 2 < _130
            mem[mem[64]] = mem[ceil32(return_data.size) + 320]
    return memory
      from mem[64]
       len 32
}

function sub_8555e2e5(?) payable {
    require ext_code.size(stor22)
    staticcall stor22.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor22)
    staticcall stor22.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor22)
    staticcall stor22.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor28)
    staticcall stor28.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor35, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((7 * ceil32(return_data.size)) + 160 <= test266151307())
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor27)
        staticcall stor27.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != wantAddress:
            if not ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / Mask(112, 0, ext_call.return_data[0]):
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / 0 / ext_call.return_data[0])
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10000 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / 0 / ext_call.return_data[0])
                if 2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]):
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 0 / ext_call.return_data[0])
            if 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]):
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 0 / ext_call.return_data[0])
            if 2 * 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (2 * 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / 0 / ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 0 / ext_call.return_data[0])
            if 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10000 * 0 / Mask(112, 0, ext_call.return_data[32]):
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 0 / ext_call.return_data[0])
            if 2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]):
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 0 / ext_call.return_data[0])
        if 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]):
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 0 / ext_call.return_data[0])
        if 2 * 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (2 * 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 0 / ext_call.return_data[0])
    if ext_call.return_data[12 len 20] != wantAddress:
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor27)
            staticcall stor27.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != wantAddress:
                if not ext_call.return_data[0]:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / Mask(112, 0, ext_call.return_data[0]):
                        if not 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        return (0 / 0 / ext_call.return_data[0])
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 10000 * 0 / Mask(112, 0, ext_call.return_data[0]):
                        if not 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        return (0 / 0 / ext_call.return_data[0])
                    if 2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]):
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / 0 / ext_call.return_data[0])
                if 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]):
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / 0 / ext_call.return_data[0])
                if 2 * 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (2 * 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / 0 / ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / 0 / ext_call.return_data[0])
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10000 * 0 / Mask(112, 0, ext_call.return_data[32]):
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / 0 / ext_call.return_data[0])
                if 2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero', 0
            if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]):
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 0 / ext_call.return_data[0])
            if 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]):
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 0 / ext_call.return_data[0])
            if 2 * 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (2 * 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 0 / ext_call.return_data[0])
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor27)
        staticcall stor27.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != wantAddress:
            if not ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / Mask(112, 0, ext_call.return_data[0]):
                    if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10000 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
                if 2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]):
                if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
            if 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]):
                if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
            if 2 * 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (2 * 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
            if 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10000 * 0 / Mask(112, 0, ext_call.return_data[32]):
                if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
            if 2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]):
            if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
        if 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]):
            if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
        if 2 * 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (2 * 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor27)
        staticcall stor27.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != wantAddress:
            if not ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / Mask(112, 0, ext_call.return_data[0]):
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / 0 / ext_call.return_data[0])
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10000 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / 0 / ext_call.return_data[0])
                if 2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]):
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 0 / ext_call.return_data[0])
            if 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]):
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 0 / ext_call.return_data[0])
            if 2 * 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (2 * 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / 0 / ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 0 / ext_call.return_data[0])
            if 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10000 * 0 / Mask(112, 0, ext_call.return_data[32]):
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 0 / ext_call.return_data[0])
            if 2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]):
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 0 / ext_call.return_data[0])
        if 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]):
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 0 / ext_call.return_data[0])
        if 2 * 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (2 * 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 0 / ext_call.return_data[0])
    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(stor27)
    staticcall stor27.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor22)
    staticcall stor22.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wantAddress:
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
            if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10000 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
            if 2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]):
            if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
        if 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]):
            if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
        if 2 * 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (2 * 10000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / Mask(112, 0, ext_call.return_data[32]):
            if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
        if 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10000 * 0 / Mask(112, 0, ext_call.return_data[32]):
            if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
        if 2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (2 * 10000 * 0 / Mask(112, 0, ext_call.return_data[32]) / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero', 0
    if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]):
        if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
    if 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) != 10000:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]):
        if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
    if 2 * 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (2 * 10000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
}

function sub_edf9d152(?) payable {
    require ext_code.size(stor27)
    staticcall stor27.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor22)
    staticcall stor22.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wantAddress:
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(shortAddress)
            staticcall shortAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != wantAddress:
                if not ext_call.return_data[0]:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor22)
                    staticcall stor22.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(stor22)
                    staticcall stor22.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor22)
                    staticcall stor22.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args stor35, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 2 * ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            return (0 / ext_call.return_data[0])
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                    if ext_call.return_data[12 len 20] != wantAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(stor26)
                            staticcall stor26.exchangeRateStored() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor26)
                            staticcall stor26.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if 0 / ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                return (0 / ext_call.return_data[0])
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            return (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            return (0 / ext_call.return_data[0])
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor22)
                staticcall stor22.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(stor22)
                staticcall stor22.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor22)
                staticcall stor22.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor35, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[12 len 20] != wantAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
            if not ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor22)
                staticcall stor22.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(stor22)
                staticcall stor22.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor22)
                staticcall stor22.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor35, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[12 len 20] != wantAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor22)
            staticcall stor22.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor35, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
            if ext_call.return_data[12 len 20] != wantAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])))
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(shortAddress)
        staticcall shortAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != wantAddress:
            if not ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor22)
                staticcall stor22.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(stor22)
                staticcall stor22.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor22)
                staticcall stor22.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor35, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[12 len 20] != wantAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor22)
            staticcall stor22.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor35, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return (0 / ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
            if ext_call.return_data[12 len 20] != wantAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return (0 / ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return (0 / ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor22)
            staticcall stor22.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor35, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
            if ext_call.return_data[12 len 20] != wantAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor22)
        staticcall stor22.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor35, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
        if ext_call.return_data[12 len 20] != wantAddress:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])))
    if not ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(shortAddress)
        staticcall shortAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != wantAddress:
            if not ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor22)
                staticcall stor22.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(stor22)
                staticcall stor22.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor22)
                staticcall stor22.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor35, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
                if ext_call.return_data[12 len 20] != wantAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor22)
            staticcall stor22.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor35, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[12 len 20] != wantAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor22)
            staticcall stor22.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor35, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return (0 / ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
            if ext_call.return_data[12 len 20] != wantAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return (0 / ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return (0 / ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor22)
        staticcall stor22.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor35, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
        if ext_call.return_data[12 len 20] != wantAddress:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])))
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(shortAddress)
    staticcall shortAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor22)
    staticcall stor22.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wantAddress:
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor22)
            staticcall stor22.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor35, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[12 len 20] != wantAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor22)
        staticcall stor22.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor35, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
        if ext_call.return_data[12 len 20] != wantAddress:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
    if not ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor22)
        staticcall stor22.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor35, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
        if ext_call.return_data[12 len 20] != wantAddress:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])))
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(stor22)
    staticcall stor22.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor22)
    staticcall stor22.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor22)
    staticcall stor22.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor28)
    staticcall stor28.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor35, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (0 / ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
    if ext_call.return_data[12 len 20] != wantAddress:
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return (0 / ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (0 / ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(stor26)
    staticcall stor26.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
        revert with 0, 'SafeMath: addition overflow'
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
        revert with 0, 'SafeMath: subtraction overflow', 0
    return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
}

function estimatedTotalAssets() payable {
    require ext_code.size(stor27)
    staticcall stor27.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor22)
    staticcall stor22.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wantAddress:
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(shortAddress)
            staticcall shortAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != wantAddress:
                if not ext_call.return_data[0]:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor22)
                    staticcall stor22.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(stor22)
                    staticcall stor22.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor22)
                    staticcall stor22.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args stor35, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 2 * ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
                    if ext_call.return_data[12 len 20] != wantAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(stor26)
                            staticcall stor26.exchangeRateStored() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor26)
                            staticcall stor26.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if 0 / ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
                        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0])
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor22)
                staticcall stor22.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(stor22)
                staticcall stor22.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor22)
                staticcall stor22.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor35, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[12 len 20] != wantAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor22)
                staticcall stor22.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(stor22)
                staticcall stor22.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor22)
                staticcall stor22.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor35, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[12 len 20] != wantAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor22)
            staticcall stor22.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor35, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if ext_call.return_data[12 len 20] != wantAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(shortAddress)
        staticcall shortAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != wantAddress:
            if not ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor22)
                staticcall stor22.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(stor22)
                staticcall stor22.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor22)
                staticcall stor22.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor35, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[12 len 20] != wantAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor22)
            staticcall stor22.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor35, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
            if ext_call.return_data[12 len 20] != wantAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor22)
            staticcall stor22.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor35, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if ext_call.return_data[12 len 20] != wantAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor22)
        staticcall stor22.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor35, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
        if ext_call.return_data[12 len 20] != wantAddress:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(shortAddress)
        staticcall shortAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != wantAddress:
            if not ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor22)
                staticcall stor22.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(stor22)
                staticcall stor22.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor22)
                staticcall stor22.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor35, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if ext_call.return_data[12 len 20] != wantAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor26)
                        staticcall stor26.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor22)
            staticcall stor22.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor35, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[12 len 20] != wantAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor22)
            staticcall stor22.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor35, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
            if ext_call.return_data[12 len 20] != wantAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor22)
        staticcall stor22.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor35, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if ext_call.return_data[12 len 20] != wantAddress:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(shortAddress)
    staticcall shortAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor22)
    staticcall stor22.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wantAddress:
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor22)
            staticcall stor22.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor22)
            staticcall stor22.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor22)
            staticcall stor22.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor22)
            staticcall stor22.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor35, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[12 len 20] != wantAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(stor26)
                    staticcall stor26.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor22)
        staticcall stor22.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor35, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if ext_call.return_data[12 len 20] != wantAddress:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor22)
        staticcall stor22.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor22)
        staticcall stor22.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor35, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if ext_call.return_data[12 len 20] != wantAddress:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(stor26)
                staticcall stor26.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(stor22)
    staticcall stor22.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor22)
    staticcall stor22.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor22)
    staticcall stor22.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor28)
    staticcall stor28.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor35, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((14 * ceil32(return_data.size)) + 288 <= test266151307())
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
    if ext_call.return_data[12 len 20] != wantAddress:
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(stor26)
            staticcall stor26.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / 2 * ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(stor26)
        staticcall stor26.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) < 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
    if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(stor26)
    staticcall stor26.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) < 0:
        revert with 0, 'SafeMath: addition overflow'
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
}



}
