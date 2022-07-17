contract main {




// =====================  Runtime code  =====================


#
#  - sub_0e2bfca6(?)
#  - aprAfterDeposit(uint256 arg1)
#  - withdraw(uint256 arg1)
#  - harvest()
#  - sub_afa30b75(?)
#  - migrate(address arg1)
#  - rebalance(uint256 arg1)
#
const name = '', 0

const apiVersion = '', 0

const sub_32b79021(?) = 1

const sub_43068820(?) = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d

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
uint256 minHealth;
uint8 stor13;
uint256 stor13; offset 8
uint256 minRebalanceAmount;
uint256 sub_8d01f0ba;
uint256 minProfit;
uint256 sub_4fae279e;
address stor17;
address stor18;
address stor19;
address stor20;
address protocolDataProviderAddress;
address stor22;
address aTokenAddress;
address dTokenAddress;

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

function protocolDataProvider() payable {
    return protocolDataProviderAddress
}

function minHealth() payable {
    return minHealth
}

function sub_4fae279e(?) payable {
    return sub_4fae279e
}

function sub_51bdfb88(?) payable {
    return bool(sub_8d01f0ba)
}

function emergencyExit() payable {
    return bool(emergencyExit)
}

function doHealthCheck() payable {
    return bool(stor1)
}

function minProfit() payable {
    return minProfit
}

function profitFactor() payable {
    return profitFactor
}

function sub_8d01f0ba(?) payable {
    return sub_8d01f0ba
}

function minReportDelay() payable {
    return minReportDelay
}

function rewards() payable {
    return rewardsAddress
}

function aToken() payable {
    return aTokenAddress
}

function keeper() payable {
    return keeperAddress
}

function healthCheck() payable {
    return healthCheckAddress
}

function dToken() payable {
    return dTokenAddress
}

function minRebalanceAmount() payable {
    return minRebalanceAmount
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function sub_27b88ea8(?) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    minHealth = arg1
}

function sub_3b42e5e2(?) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    minProfit = arg1
}

function sub_0808db2a(?) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    sub_4fae279e = arg1
}

function sub_ba3f3dc4(?) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    minRebalanceAmount = arg1
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

function balanceOfDebt() payable {
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3afe9a7b(?) payable {
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function tendTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > sub_4fae279e)
}

function sub_7e972901(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(this.address)
    call this.address.0xdd38f22d with:
         gas gas_remaining wei
        args 0, 0, msg.sender, msg.sender, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
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

function sub_b44b3a8f(?) payable {
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    else:
        return 0
}

function sub_dd38f22d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf8c8765e with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), address(arg4)
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

function estimatedTotalAssets() payable {
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ext_call.return_data[0]
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

function ethToWant(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return arg1
    if arg1 == -1:
        return arg1
    if stor18 == wantAddress:
        return arg1
    require ext_code.size(stor20)
    staticcall stor20.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0])
    if 10^ext_call.return_data[31 len 1] * arg1 / arg1 != 10^ext_call.return_data[31 len 1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^uint8(ext_call.return_data[0]) * arg1 / ext_call.return_data[0])
}

function sub_7b454884(?) payable {
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
    if arg1:
        require ext_code.size(stor19)
        call stor19.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1:
            require ext_code.size(stor19)
            call stor19.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, arg1, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function isActive() payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    if ext_call.return_data[64] > 0:
        return (ext_call.return_data[64] > 0)
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] > 0)
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
    emergencyExit = 1
    require ext_code.size(vaultAddress)
    call vaultAddress.revokeStrategy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyExitEnabled()
}

function sub_0a201b11(?) payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[192] <= ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] > ext_call.return_data[192]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (ext_call.return_data[192] - ext_call.return_data[0])
}

function sub_6419b20f(?) payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[192] >= ext_call.return_data[0]:
        return 0
    if ext_call.return_data[192] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (ext_call.return_data[0] - ext_call.return_data[192])
}

function getMaxWithdrawable() payable {
    require ext_code.size(stor19)
    staticcall stor19.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return -1
    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[96]:
        revert with 0, 'SafeMath: division by zero', 0
    if 10000 * ext_call.return_data[0] / ext_call.return_data[96] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[0] - (10000 * ext_call.return_data[0] / ext_call.return_data[96]):
        return 0
    if (97 * ext_call.return_data[0]) - (97 * 10000 * ext_call.return_data[0] / ext_call.return_data[96]) / ext_call.return_data[0] - (10000 * ext_call.return_data[0] / ext_call.return_data[96]) != 97:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((97 * ext_call.return_data[0]) - (97 * 10000 * ext_call.return_data[0] / ext_call.return_data[96]) / 100)
}

function sub_6040a98d(?) payable {
    require ext_code.size(stor19)
    staticcall stor19.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if ext_call.return_data[160] > minHealth:
        require ext_code.size(dTokenAddress)
        staticcall dTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aTokenAddress)
        staticcall aTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -ext_call.return_data[0] >= minRebalanceAmount:
                return -ext_call.return_data[0]
        else:
            if ext_call.return_data[128] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[128]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] > ext_call.return_data[128] * ext_call.return_data[0] / 10000:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (ext_call.return_data[128] * ext_call.return_data[0] / 10000) - ext_call.return_data[0] >= minRebalanceAmount:
                return ((ext_call.return_data[128] * ext_call.return_data[0] / 10000) - ext_call.return_data[0])
        return 0
    else:
        return 0
}

function tend() payable {
    if keeperAddress != msg.sender:
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
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.debtOutstanding() with:
            gas gas_remaining wei
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
    if ext_call.return_data[0] < ext_call.return_data[0]:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
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

function sub_93a98e6c(?) payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[192] >= ext_call.return_data[0]:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.strategies(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        require bool((7 * ceil32(return_data.size)) + 736 <= test266151307())
        require ext_code.size(dTokenAddress)
        staticcall dTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aTokenAddress)
        staticcall aTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[192] <= ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] > ext_call.return_data[192]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return 0, ext_call.return_data[192] - ext_call.return_data[0]
    if ext_call.return_data[192] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool((7 * ceil32(return_data.size)) + 800 <= test266151307())
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[192] <= ext_call.return_data[0]:
        return ext_call.return_data[0] - ext_call.return_data[192], 0
    if ext_call.return_data[0] > ext_call.return_data[192]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return ext_call.return_data[0] - ext_call.return_data[192], ext_call.return_data[192] - ext_call.return_data[0]
}

function sub_74cd8012(?) payable {
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.getIncentivesController() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = aTokenAddress
    mem[ceil32(return_data.size) + 160] = dTokenAddress
    mem[ceil32(return_data.size) + 192] = 0xe5b5349800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe5b53498 with:
            gas gas_remaining wei
           args address(this.address), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 192 len 4], address(this.address) << 64 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], address(this.address) << 64 + 223
    _27 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], address(this.address) << 64 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], address(this.address) << 64 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], address(this.address) << 64 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], address(this.address) << 64 + 192]) + 224 <= test266151307()
    require return_data.size >= mem[ceil32(return_data.size) + 192 len 4], address(this.address) << 64 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], address(this.address) << 64 + 192]) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], address(this.address) << 64 + 192]] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], address(this.address) << 64 + 224 len 32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], address(this.address) << 64 + 192]]
    idx = 0
    s = 0
    while idx < _27:
        require idx < _27
        idx = idx + 1
        s = s + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 224]
        continue 
    if not s * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27:
        return 0
    if 5000 * s * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 / s * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 != 5000:
        revert with 0, 'SafeMath: multiplication overflow'
    return (5000 * s * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 * _27 / 10000)
}

function sub_94efd4c2(?) payable {
    if msg.sender == strategistAddress:
        require ext_code.size(protocolDataProviderAddress)
        staticcall protocolDataProviderAddress.ADDRESSES_PROVIDER() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor22 = ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor19 = ext_call.return_data[12 len 20]
        require ext_code.size(stor22)
        staticcall stor22.getPriceOracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor20 = ext_call.return_data[12 len 20]
        minHealth = 3 * 10^14 * 24 * 3600
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        uint8(stor13.field_0) = uint8(10^ext_call.return_data[31 len 1])
        Mask(248, 0, stor13.field_8) = 0
        require ext_code.size(stor19)
        staticcall stor19.getReserveData(address arg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 384
        require bool((7 * ceil32(return_data.size)) + 896 <= test266151307())
        require return_data.size >= 32
        require bool((7 * ceil32(return_data.size)) + 928 <= test266151307())
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
        require ext_code.size(protocolDataProviderAddress)
        staticcall protocolDataProviderAddress.ADDRESSES_PROVIDER() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor22 = ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor19 = ext_call.return_data[12 len 20]
        require ext_code.size(stor22)
        staticcall stor22.getPriceOracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor20 = ext_call.return_data[12 len 20]
        minHealth = 3 * 10^14 * 24 * 3600
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        uint8(stor13.field_0) = uint8(10^ext_call.return_data[31 len 1])
        Mask(248, 0, stor13.field_8) = 0
        require ext_code.size(stor19)
        staticcall stor19.getReserveData(address arg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 384
        require bool((8 * ceil32(return_data.size)) + 896 <= test266151307())
        require return_data.size >= 32
        require bool((8 * ceil32(return_data.size)) + 928 <= test266151307())
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    aTokenAddress = ext_call.return_data[236 len 20]
    dTokenAddress = ext_call.return_data[300 len 20]
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
        maxReportDelay = 6300
        profitFactor = 1500
        debtThreshold = 1000000 * 10^18
        sub_8d01f0ba = 5
        protocolDataProviderAddress = 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3
        require ext_code.size(protocolDataProviderAddress)
        staticcall protocolDataProviderAddress.ADDRESSES_PROVIDER() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor22 = ext_call.return_data[12 len 20]
        require ext_code.size(ext_call.return_data[12 len 20])
        staticcall ext_call.return_data[12 len 20].getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor19 = ext_call.return_data[12 len 20]
        require ext_code.size(stor22)
        staticcall stor22.getPriceOracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor20 = ext_call.return_data[12 len 20]
        minHealth = 3 * 10^14 * 24 * 3600
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        uint8(stor13.field_0) = uint8(10^ext_call.return_data[31 len 1])
        Mask(248, 0, stor13.field_8) = 0
        require ext_code.size(stor19)
        staticcall stor19.getReserveData(address arg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 384
        require bool((11 * ceil32(return_data.size)) + 1060 <= test266151307())
        require return_data.size >= 32
        require bool((11 * ceil32(return_data.size)) + 1092 <= test266151307())
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
        maxReportDelay = 6300
        profitFactor = 1500
        debtThreshold = 1000000 * 10^18
        sub_8d01f0ba = 5
        protocolDataProviderAddress = 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3
        require ext_code.size(protocolDataProviderAddress)
        staticcall protocolDataProviderAddress.ADDRESSES_PROVIDER() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor22 = ext_call.return_data[12 len 20]
        require ext_code.size(ext_call.return_data[12 len 20])
        staticcall ext_call.return_data[12 len 20].getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor19 = ext_call.return_data[12 len 20]
        require ext_code.size(stor22)
        staticcall stor22.getPriceOracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor20 = ext_call.return_data[12 len 20]
        minHealth = 3 * 10^14 * 24 * 3600
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        uint8(stor13.field_0) = uint8(10^ext_call.return_data[31 len 1])
        Mask(248, 0, stor13.field_8) = 0
        require ext_code.size(stor19)
        staticcall stor19.getReserveData(address arg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 384
        require bool((11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 <= test266151307())
        require return_data.size >= 32
        require bool((11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093 <= test266151307())
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    aTokenAddress = ext_call.return_data[236 len 20]
    dTokenAddress = ext_call.return_data[300 len 20]
    stor17 = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.0xad5c4648 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor18 = ext_call.return_data[12 len 20]
    require ext_code.size(wantAddress)
    call wantAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor19, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xd8321aa83fb0a4ecd6348d4577431310a6e0814d)
    call 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor17, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_63782b51(?) payable {
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
    mem[ceil32(return_data.size) + 388] = this.address
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 388] = this.address
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 384] = 30
    mem[(4 * ceil32(return_data.size)) + 416] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[(4 * ceil32(return_data.size)) + 452] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.getIncentivesController() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 448] = 2
    mem[(7 * ceil32(return_data.size)) + 480] = aTokenAddress
    mem[(7 * ceil32(return_data.size)) + 512] = dTokenAddress
    mem[(7 * ceil32(return_data.size)) + 544] = 0xe5b5349800000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 548] = this.address
    mem[(7 * ceil32(return_data.size)) + 580] = 64
    mem[(7 * ceil32(return_data.size)) + 612] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 480
    t = (7 * ceil32(return_data.size)) + 644
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe5b53498 with:
            gas gas_remaining wei
           args address(this.address), Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 644 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 544
    require return_data.size >= 32
    _71 = mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64
    require mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 <= test266151307()
    require (7 * ceil32(return_data.size)) + return_data.size + 544 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 575
    _72 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]
    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544] <= test266151307()
    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]) + 576 <= test266151307()
    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]) + 576
    mem[(8 * ceil32(return_data.size)) + 544] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]
    require return_data.size >= _71 + (32 * _72) + 32
    mem[(8 * ceil32(return_data.size)) + 576 len 32 * _72] = mem[(7 * ceil32(return_data.size)) + _71 + 576 len 32 * _72]
    idx = 0
    s = 0
    while idx < _72:
        require idx < _72
        idx = idx + 1
        s = s + mem[(32 * idx) + (8 * ceil32(return_data.size)) + 576]
        continue 
    if not s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72:
        if ext_call.return_data[192] >= ext_call.return_data[0]:
            return 0
        if ext_call.return_data[192] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (ext_call.return_data[0] - ext_call.return_data[192])
    if 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 != 5000:
        revert with 0, 'SafeMath: multiplication overflow'
    _109 = mem[64]
    mem[64] = mem[64] + 64
    mem[_109] = 26
    mem[_109 + 32] = 'SafeMath: division by zero'
    if 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000 <= 0:
        if ext_call.return_data[192] >= (5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000) + ext_call.return_data[0]:
            return 0
        if ext_call.return_data[192] > (5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000) + ext_call.return_data[0] - ext_call.return_data[192])
    if stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
        _113 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_113]
        mem[_113 + 32] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
        require 1 < mem[_113]
        if stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
            mem[_113 + 64] = wantAddress
            mem[_113 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_113 + 100] = 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000
            mem[_113 + 132] = 64
            mem[_113 + 164] = mem[_113]
            idx = 0
            s = _113 + 32
            t = _113 + 196
            while idx < mem[_113]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor17)
            staticcall stor17.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _113 + (32 * mem[_113]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _297 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _303 = mem[_297]
            require mem[_297] <= test266151307()
            require _297 + return_data.size > _297 + mem[_297] + 31
            _309 = mem[_297 + mem[_297]]
            require mem[_297 + mem[_297]] <= test266151307()
            require (32 * mem[_297 + mem[_297]]) + 32 >= 0 and _297 + ceil32(return_data.size) + (32 * mem[_297 + mem[_297]]) + 32 <= test266151307()
            mem[64] = _297 + ceil32(return_data.size) + (32 * mem[_297 + mem[_297]]) + 32
            mem[_297 + ceil32(return_data.size)] = _309
            require return_data.size >= _303 + (32 * _309) + 32
            mem[_297 + ceil32(return_data.size) + 32 len 32 * _309] = mem[_297 + _303 + 32 len 32 * _309]
            require mem[_113] - 1 < _309
            if ext_call.return_data[192] >= mem[(32 * mem[_113] - 1) + _297 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
                return 0
            if ext_call.return_data[192] > mem[(32 * mem[_113] - 1) + _297 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (mem[(32 * mem[_113] - 1) + _297 + ceil32(return_data.size) + 32] + ext_call.return_data[0] - ext_call.return_data[192])
        mem[_113 + 64] = stor18
        require 2 < mem[_113]
        mem[_113 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_113 + 100] = 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000
        mem[_113 + 132] = 64
        mem[_113 + 164] = mem[_113]
        idx = 0
        s = _113 + 32
        t = _113 + 196
        while idx < mem[_113]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor17)
        staticcall stor17.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _113 + (32 * mem[_113]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _296 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _302 = mem[_296]
        require mem[_296] <= test266151307()
        require _296 + return_data.size > _296 + mem[_296] + 31
        _308 = mem[_296 + mem[_296]]
        require mem[_296 + mem[_296]] <= test266151307()
        require (32 * mem[_296 + mem[_296]]) + 32 >= 0 and _296 + ceil32(return_data.size) + (32 * mem[_296 + mem[_296]]) + 32 <= test266151307()
        mem[64] = _296 + ceil32(return_data.size) + (32 * mem[_296 + mem[_296]]) + 32
        mem[_296 + ceil32(return_data.size)] = _308
        require return_data.size >= _302 + (32 * _308) + 32
        mem[_296 + ceil32(return_data.size) + 32 len 32 * _308] = mem[_296 + _302 + 32 len 32 * _308]
        require mem[_113] - 1 < _308
        if ext_call.return_data[192] >= mem[(32 * mem[_113] - 1) + _296 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
            return 0
        if ext_call.return_data[192] > mem[(32 * mem[_113] - 1) + _296 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (mem[(32 * mem[_113] - 1) + _296 + ceil32(return_data.size) + 32] + ext_call.return_data[0] - ext_call.return_data[192])
    if stor18 == wantAddress:
        _116 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_116]
        mem[_116 + 32] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
        require 1 < mem[_116]
        if stor18 == wantAddress:
            mem[_116 + 64] = wantAddress
            mem[_116 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_116 + 100] = 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000
            mem[_116 + 132] = 64
            mem[_116 + 164] = mem[_116]
            idx = 0
            s = _116 + 32
            t = _116 + 196
            while idx < mem[_116]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor17)
            staticcall stor17.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _116 + (32 * mem[_116]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _305 = mem[_299]
            require mem[_299] <= test266151307()
            require _299 + return_data.size > _299 + mem[_299] + 31
            _311 = mem[_299 + mem[_299]]
            require mem[_299 + mem[_299]] <= test266151307()
            require (32 * mem[_299 + mem[_299]]) + 32 >= 0 and _299 + ceil32(return_data.size) + (32 * mem[_299 + mem[_299]]) + 32 <= test266151307()
            mem[64] = _299 + ceil32(return_data.size) + (32 * mem[_299 + mem[_299]]) + 32
            mem[_299 + ceil32(return_data.size)] = _311
            require return_data.size >= _305 + (32 * _311) + 32
            mem[_299 + ceil32(return_data.size) + 32 len 32 * _311] = mem[_299 + _305 + 32 len 32 * _311]
            require mem[_116] - 1 < _311
            if ext_call.return_data[192] >= mem[(32 * mem[_116] - 1) + _299 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
                return 0
            if ext_call.return_data[192] > mem[(32 * mem[_116] - 1) + _299 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (mem[(32 * mem[_116] - 1) + _299 + ceil32(return_data.size) + 32] + ext_call.return_data[0] - ext_call.return_data[192])
        mem[_116 + 64] = stor18
        require 2 < mem[_116]
        mem[_116 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_116 + 100] = 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000
        mem[_116 + 132] = 64
        mem[_116 + 164] = mem[_116]
        idx = 0
        s = _116 + 32
        t = _116 + 196
        while idx < mem[_116]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor17)
        staticcall stor17.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _116 + (32 * mem[_116]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _298 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _304 = mem[_298]
        require mem[_298] <= test266151307()
        require _298 + return_data.size > _298 + mem[_298] + 31
        _310 = mem[_298 + mem[_298]]
        require mem[_298 + mem[_298]] <= test266151307()
        require (32 * mem[_298 + mem[_298]]) + 32 >= 0 and _298 + ceil32(return_data.size) + (32 * mem[_298 + mem[_298]]) + 32 <= test266151307()
        mem[64] = _298 + ceil32(return_data.size) + (32 * mem[_298 + mem[_298]]) + 32
        mem[_298 + ceil32(return_data.size)] = _310
        require return_data.size >= _304 + (32 * _310) + 32
        mem[_298 + ceil32(return_data.size) + 32 len 32 * _310] = mem[_298 + _304 + 32 len 32 * _310]
        require mem[_116] - 1 < _310
        if ext_call.return_data[192] >= mem[(32 * mem[_116] - 1) + _298 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
            return 0
        if ext_call.return_data[192] > mem[(32 * mem[_116] - 1) + _298 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (mem[(32 * mem[_116] - 1) + _298 + ceil32(return_data.size) + 32] + ext_call.return_data[0] - ext_call.return_data[192])
    _117 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    mem[_117 + 32 len 96] = call.data[calldata.size len 96]
    require 0 < mem[_117]
    mem[_117 + 32] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
    require 1 < mem[_117]
    if stor18 == wantAddress:
        mem[_117 + 64] = wantAddress
        mem[_117 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_117 + 132] = 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000
        mem[_117 + 164] = 64
        mem[_117 + 196] = mem[_117]
        idx = 0
        s = _117 + 32
        t = _117 + 228
        while idx < mem[_117]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor17)
        staticcall stor17.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _117 + (32 * mem[_117]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _307 = mem[_301]
        require mem[_301] <= test266151307()
        require _301 + return_data.size > _301 + mem[_301] + 31
        _313 = mem[_301 + mem[_301]]
        require mem[_301 + mem[_301]] <= test266151307()
        require (32 * mem[_301 + mem[_301]]) + 32 >= 0 and _301 + ceil32(return_data.size) + (32 * mem[_301 + mem[_301]]) + 32 <= test266151307()
        mem[64] = _301 + ceil32(return_data.size) + (32 * mem[_301 + mem[_301]]) + 32
        mem[_301 + ceil32(return_data.size)] = _313
        require return_data.size >= _307 + (32 * _313) + 32
        mem[_301 + ceil32(return_data.size) + 32 len 32 * _313] = mem[_301 + _307 + 32 len 32 * _313]
        require mem[_117] - 1 < _313
        if ext_call.return_data[192] >= mem[(32 * mem[_117] - 1) + _301 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
            return 0
        if ext_call.return_data[192] > mem[(32 * mem[_117] - 1) + _301 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (mem[(32 * mem[_117] - 1) + _301 + ceil32(return_data.size) + 32] + ext_call.return_data[0] - ext_call.return_data[192])
    mem[_117 + 64] = stor18
    require 2 < mem[_117]
    mem[_117 + 96] = wantAddress
    mem[_117 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_117 + 132] = 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000
    mem[_117 + 164] = 64
    mem[_117 + 196] = mem[_117]
    idx = 0
    s = _117 + 32
    t = _117 + 228
    while idx < mem[_117]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor17)
    staticcall stor17.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _117 + (32 * mem[_117]) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _300 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _306 = mem[_300]
    require mem[_300] <= test266151307()
    require _300 + return_data.size > _300 + mem[_300] + 31
    _312 = mem[_300 + mem[_300]]
    require mem[_300 + mem[_300]] <= test266151307()
    require (32 * mem[_300 + mem[_300]]) + 32 >= 0 and _300 + ceil32(return_data.size) + (32 * mem[_300 + mem[_300]]) + 32 <= test266151307()
    mem[64] = _300 + ceil32(return_data.size) + (32 * mem[_300 + mem[_300]]) + 32
    mem[_300 + ceil32(return_data.size)] = _312
    require return_data.size >= _306 + (32 * _312) + 32
    mem[_300 + ceil32(return_data.size) + 32 len 32 * _312] = mem[_300 + _306 + 32 len 32 * _312]
    require mem[_117] - 1 < _312
    if ext_call.return_data[192] >= mem[(32 * mem[_117] - 1) + _300 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
        return 0
    if ext_call.return_data[192] > mem[(32 * mem[_117] - 1) + _300 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (mem[(32 * mem[_117] - 1) + _300 + ceil32(return_data.size) + 32] + ext_call.return_data[0] - ext_call.return_data[192])
}

function sub_badf33f5(?) payable {
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
    mem[ceil32(return_data.size) + 388] = this.address
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 388] = this.address
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 384] = 30
    mem[(4 * ceil32(return_data.size)) + 416] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[(4 * ceil32(return_data.size)) + 452] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.getIncentivesController() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 448] = 2
    mem[(7 * ceil32(return_data.size)) + 480] = aTokenAddress
    mem[(7 * ceil32(return_data.size)) + 512] = dTokenAddress
    mem[(7 * ceil32(return_data.size)) + 544] = 0xe5b5349800000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 548] = this.address
    mem[(7 * ceil32(return_data.size)) + 580] = 64
    mem[(7 * ceil32(return_data.size)) + 612] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 480
    t = (7 * ceil32(return_data.size)) + 644
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe5b53498 with:
            gas gas_remaining wei
           args address(this.address), Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 644 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 544
    require return_data.size >= 32
    _71 = mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64
    require mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 <= test266151307()
    require (7 * ceil32(return_data.size)) + return_data.size + 544 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 575
    _72 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]
    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544] <= test266151307()
    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]) + 576 <= test266151307()
    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]) + 576
    mem[(8 * ceil32(return_data.size)) + 544] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]
    require return_data.size >= _71 + (32 * _72) + 32
    mem[(8 * ceil32(return_data.size)) + 576 len 32 * _72] = mem[(7 * ceil32(return_data.size)) + _71 + 576 len 32 * _72]
    idx = 0
    s = 0
    while idx < _72:
        require idx < _72
        idx = idx + 1
        s = s + mem[(32 * idx) + (8 * ceil32(return_data.size)) + 576]
        continue 
    if not s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72:
        if ext_call.return_data[192] <= ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] > ext_call.return_data[192]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (ext_call.return_data[192] - ext_call.return_data[0])
    if 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 != 5000:
        revert with 0, 'SafeMath: multiplication overflow'
    _109 = mem[64]
    mem[64] = mem[64] + 64
    mem[_109] = 26
    mem[_109 + 32] = 'SafeMath: division by zero'
    if 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000 <= 0:
        if ext_call.return_data[192] <= (5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000) + ext_call.return_data[0]:
            return 0
        if (5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000) + ext_call.return_data[0] > ext_call.return_data[192]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (ext_call.return_data[192] - (5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000) - ext_call.return_data[0])
    if stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
        _113 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_113]
        mem[_113 + 32] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
        require 1 < mem[_113]
        if stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
            mem[_113 + 64] = wantAddress
            mem[_113 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_113 + 100] = 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000
            mem[_113 + 132] = 64
            mem[_113 + 164] = mem[_113]
            idx = 0
            s = _113 + 32
            t = _113 + 196
            while idx < mem[_113]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor17)
            staticcall stor17.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _113 + (32 * mem[_113]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _297 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _303 = mem[_297]
            require mem[_297] <= test266151307()
            require _297 + return_data.size > _297 + mem[_297] + 31
            _309 = mem[_297 + mem[_297]]
            require mem[_297 + mem[_297]] <= test266151307()
            require (32 * mem[_297 + mem[_297]]) + 32 >= 0 and _297 + ceil32(return_data.size) + (32 * mem[_297 + mem[_297]]) + 32 <= test266151307()
            mem[64] = _297 + ceil32(return_data.size) + (32 * mem[_297 + mem[_297]]) + 32
            mem[_297 + ceil32(return_data.size)] = _309
            require return_data.size >= _303 + (32 * _309) + 32
            mem[_297 + ceil32(return_data.size) + 32 len 32 * _309] = mem[_297 + _303 + 32 len 32 * _309]
            require mem[_113] - 1 < _309
            if ext_call.return_data[192] <= mem[(32 * mem[_113] - 1) + _297 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
                return 0
            if mem[(32 * mem[_113] - 1) + _297 + ceil32(return_data.size) + 32] + ext_call.return_data[0] > ext_call.return_data[192]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (ext_call.return_data[192] - mem[(32 * mem[_113] - 1) + _297 + ceil32(return_data.size) + 32] - ext_call.return_data[0])
        mem[_113 + 64] = stor18
        require 2 < mem[_113]
        mem[_113 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_113 + 100] = 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000
        mem[_113 + 132] = 64
        mem[_113 + 164] = mem[_113]
        idx = 0
        s = _113 + 32
        t = _113 + 196
        while idx < mem[_113]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor17)
        staticcall stor17.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _113 + (32 * mem[_113]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _296 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _302 = mem[_296]
        require mem[_296] <= test266151307()
        require _296 + return_data.size > _296 + mem[_296] + 31
        _308 = mem[_296 + mem[_296]]
        require mem[_296 + mem[_296]] <= test266151307()
        require (32 * mem[_296 + mem[_296]]) + 32 >= 0 and _296 + ceil32(return_data.size) + (32 * mem[_296 + mem[_296]]) + 32 <= test266151307()
        mem[64] = _296 + ceil32(return_data.size) + (32 * mem[_296 + mem[_296]]) + 32
        mem[_296 + ceil32(return_data.size)] = _308
        require return_data.size >= _302 + (32 * _308) + 32
        mem[_296 + ceil32(return_data.size) + 32 len 32 * _308] = mem[_296 + _302 + 32 len 32 * _308]
        require mem[_113] - 1 < _308
        if ext_call.return_data[192] <= mem[(32 * mem[_113] - 1) + _296 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
            return 0
        if mem[(32 * mem[_113] - 1) + _296 + ceil32(return_data.size) + 32] + ext_call.return_data[0] > ext_call.return_data[192]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (ext_call.return_data[192] - mem[(32 * mem[_113] - 1) + _296 + ceil32(return_data.size) + 32] - ext_call.return_data[0])
    if stor18 == wantAddress:
        _116 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_116]
        mem[_116 + 32] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
        require 1 < mem[_116]
        if stor18 == wantAddress:
            mem[_116 + 64] = wantAddress
            mem[_116 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_116 + 100] = 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000
            mem[_116 + 132] = 64
            mem[_116 + 164] = mem[_116]
            idx = 0
            s = _116 + 32
            t = _116 + 196
            while idx < mem[_116]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor17)
            staticcall stor17.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _116 + (32 * mem[_116]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _305 = mem[_299]
            require mem[_299] <= test266151307()
            require _299 + return_data.size > _299 + mem[_299] + 31
            _311 = mem[_299 + mem[_299]]
            require mem[_299 + mem[_299]] <= test266151307()
            require (32 * mem[_299 + mem[_299]]) + 32 >= 0 and _299 + ceil32(return_data.size) + (32 * mem[_299 + mem[_299]]) + 32 <= test266151307()
            mem[64] = _299 + ceil32(return_data.size) + (32 * mem[_299 + mem[_299]]) + 32
            mem[_299 + ceil32(return_data.size)] = _311
            require return_data.size >= _305 + (32 * _311) + 32
            mem[_299 + ceil32(return_data.size) + 32 len 32 * _311] = mem[_299 + _305 + 32 len 32 * _311]
            require mem[_116] - 1 < _311
            if ext_call.return_data[192] <= mem[(32 * mem[_116] - 1) + _299 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
                return 0
            if mem[(32 * mem[_116] - 1) + _299 + ceil32(return_data.size) + 32] + ext_call.return_data[0] > ext_call.return_data[192]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (ext_call.return_data[192] - mem[(32 * mem[_116] - 1) + _299 + ceil32(return_data.size) + 32] - ext_call.return_data[0])
        mem[_116 + 64] = stor18
        require 2 < mem[_116]
        mem[_116 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_116 + 100] = 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000
        mem[_116 + 132] = 64
        mem[_116 + 164] = mem[_116]
        idx = 0
        s = _116 + 32
        t = _116 + 196
        while idx < mem[_116]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor17)
        staticcall stor17.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _116 + (32 * mem[_116]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _298 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _304 = mem[_298]
        require mem[_298] <= test266151307()
        require _298 + return_data.size > _298 + mem[_298] + 31
        _310 = mem[_298 + mem[_298]]
        require mem[_298 + mem[_298]] <= test266151307()
        require (32 * mem[_298 + mem[_298]]) + 32 >= 0 and _298 + ceil32(return_data.size) + (32 * mem[_298 + mem[_298]]) + 32 <= test266151307()
        mem[64] = _298 + ceil32(return_data.size) + (32 * mem[_298 + mem[_298]]) + 32
        mem[_298 + ceil32(return_data.size)] = _310
        require return_data.size >= _304 + (32 * _310) + 32
        mem[_298 + ceil32(return_data.size) + 32 len 32 * _310] = mem[_298 + _304 + 32 len 32 * _310]
        require mem[_116] - 1 < _310
        if ext_call.return_data[192] <= mem[(32 * mem[_116] - 1) + _298 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
            return 0
        if mem[(32 * mem[_116] - 1) + _298 + ceil32(return_data.size) + 32] + ext_call.return_data[0] > ext_call.return_data[192]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (ext_call.return_data[192] - mem[(32 * mem[_116] - 1) + _298 + ceil32(return_data.size) + 32] - ext_call.return_data[0])
    _117 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    mem[_117 + 32 len 96] = call.data[calldata.size len 96]
    require 0 < mem[_117]
    mem[_117 + 32] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
    require 1 < mem[_117]
    if stor18 == wantAddress:
        mem[_117 + 64] = wantAddress
        mem[_117 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_117 + 132] = 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000
        mem[_117 + 164] = 64
        mem[_117 + 196] = mem[_117]
        idx = 0
        s = _117 + 32
        t = _117 + 228
        while idx < mem[_117]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor17)
        staticcall stor17.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _117 + (32 * mem[_117]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _307 = mem[_301]
        require mem[_301] <= test266151307()
        require _301 + return_data.size > _301 + mem[_301] + 31
        _313 = mem[_301 + mem[_301]]
        require mem[_301 + mem[_301]] <= test266151307()
        require (32 * mem[_301 + mem[_301]]) + 32 >= 0 and _301 + ceil32(return_data.size) + (32 * mem[_301 + mem[_301]]) + 32 <= test266151307()
        mem[64] = _301 + ceil32(return_data.size) + (32 * mem[_301 + mem[_301]]) + 32
        mem[_301 + ceil32(return_data.size)] = _313
        require return_data.size >= _307 + (32 * _313) + 32
        mem[_301 + ceil32(return_data.size) + 32 len 32 * _313] = mem[_301 + _307 + 32 len 32 * _313]
        require mem[_117] - 1 < _313
        if ext_call.return_data[192] <= mem[(32 * mem[_117] - 1) + _301 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
            return 0
        if mem[(32 * mem[_117] - 1) + _301 + ceil32(return_data.size) + 32] + ext_call.return_data[0] > ext_call.return_data[192]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (ext_call.return_data[192] - mem[(32 * mem[_117] - 1) + _301 + ceil32(return_data.size) + 32] - ext_call.return_data[0])
    mem[_117 + 64] = stor18
    require 2 < mem[_117]
    mem[_117 + 96] = wantAddress
    mem[_117 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_117 + 132] = 5000 * s * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 * _72 / 10000
    mem[_117 + 164] = 64
    mem[_117 + 196] = mem[_117]
    idx = 0
    s = _117 + 32
    t = _117 + 228
    while idx < mem[_117]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor17)
    staticcall stor17.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _117 + (32 * mem[_117]) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _300 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _306 = mem[_300]
    require mem[_300] <= test266151307()
    require _300 + return_data.size > _300 + mem[_300] + 31
    _312 = mem[_300 + mem[_300]]
    require mem[_300 + mem[_300]] <= test266151307()
    require (32 * mem[_300 + mem[_300]]) + 32 >= 0 and _300 + ceil32(return_data.size) + (32 * mem[_300 + mem[_300]]) + 32 <= test266151307()
    mem[64] = _300 + ceil32(return_data.size) + (32 * mem[_300 + mem[_300]]) + 32
    mem[_300 + ceil32(return_data.size)] = _312
    require return_data.size >= _306 + (32 * _312) + 32
    mem[_300 + ceil32(return_data.size) + 32 len 32 * _312] = mem[_300 + _306 + 32 len 32 * _312]
    require mem[_117] - 1 < _312
    if ext_call.return_data[192] <= mem[(32 * mem[_117] - 1) + _300 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
        return 0
    if mem[(32 * mem[_117] - 1) + _300 + ceil32(return_data.size) + 32] + ext_call.return_data[0] > ext_call.return_data[192]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (ext_call.return_data[192] - mem[(32 * mem[_117] - 1) + _300 + ceil32(return_data.size) + 32] - ext_call.return_data[0])
}

function harvestTrigger(uint256 arg1) payable {
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
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[96]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[128]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[160]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[192]
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[224]
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[256]
    mem[ceil32(return_data.size) + 388] = this.address
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 388] = this.address
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 384] = 30
    mem[(4 * ceil32(return_data.size)) + 416] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[(4 * ceil32(return_data.size)) + 452] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.getIncentivesController() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 448] = 2
    mem[(7 * ceil32(return_data.size)) + 480] = aTokenAddress
    mem[(7 * ceil32(return_data.size)) + 512] = dTokenAddress
    mem[(7 * ceil32(return_data.size)) + 544] = 0xe5b5349800000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 548] = this.address
    mem[(7 * ceil32(return_data.size)) + 580] = 64
    mem[(7 * ceil32(return_data.size)) + 612] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 480
    t = (7 * ceil32(return_data.size)) + 644
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe5b53498 with:
            gas gas_remaining wei
           args address(this.address), Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 644 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 544
    require return_data.size >= 32
    _83 = mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64
    require mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 <= test266151307()
    require (7 * ceil32(return_data.size)) + return_data.size + 544 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 575
    _84 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]
    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544] <= test266151307()
    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]) + 576 <= test266151307()
    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]) + 576
    mem[(8 * ceil32(return_data.size)) + 544] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], address(this.address) << 64 + 544]
    require return_data.size >= _83 + (32 * _84) + 32
    mem[(8 * ceil32(return_data.size)) + 576 len 32 * _84] = mem[(7 * ceil32(return_data.size)) + _83 + 576 len 32 * _84]
    idx = 0
    s = 0
    while idx < _84:
        require idx < _84
        idx = idx + 1
        s = s + mem[(32 * idx) + (8 * ceil32(return_data.size)) + 576]
        continue 
    if not s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84:
        _144 = mem[64]
        mem[64] = mem[64] + 64
        mem[_144] = 26
        mem[_144 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[192] >= ext_call.return_data[0]:
            if 0 > minProfit:
                return (0 > minProfit)
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = mem[_161] > sub_4fae279e
        else:
            _147 = mem[64]
            mem[64] = mem[64] + 64
            mem[_147] = 30
            mem[_147 + 32] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[192] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ext_call.return_data[0] - ext_call.return_data[192] > minProfit:
                return (ext_call.return_data[0] - ext_call.return_data[192] > minProfit)
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _195 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = mem[_195] > sub_4fae279e
    else:
        if 5000 * s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 / s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 != 5000:
            revert with 0, 'SafeMath: multiplication overflow'
        _145 = mem[64]
        mem[64] = mem[64] + 64
        mem[_145] = 26
        mem[_145 + 32] = 'SafeMath: division by zero'
        if 5000 * s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 / 10000 <= 0:
            if ext_call.return_data[192] >= (5000 * s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 / 10000) + ext_call.return_data[0]:
                if 0 > minProfit:
                    return (0 > minProfit)
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _165 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_165] > sub_4fae279e
            else:
                _149 = mem[64]
                mem[64] = mem[64] + 64
                mem[_149] = 30
                mem[_149 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[192] > (5000 * s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 / 10000) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (5000 * s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 / 10000) + ext_call.return_data[0] - ext_call.return_data[192] > minProfit:
                    return ((5000 * s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 / 10000) + ext_call.return_data[0] - ext_call.return_data[192] > minProfit)
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_202] > sub_4fae279e
        else:
            if stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                _148 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_148]
                mem[_148 + 32] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require 1 < mem[_148]
                if stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                    mem[_148 + 64] = wantAddress
                    mem[_148 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_148 + 100] = 5000 * s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 / 10000
                    mem[_148 + 132] = 64
                    mem[_148 + 164] = mem[_148]
                    idx = 0
                    s = _148 + 32
                    t = _148 + 196
                    while idx < mem[_148]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor17)
                    staticcall stor17.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _148 + (32 * mem[_148]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _429 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _435 = mem[_429]
                    require mem[_429] <= test266151307()
                    require _429 + return_data.size > _429 + mem[_429] + 31
                    _441 = mem[_429 + mem[_429]]
                    require mem[_429 + mem[_429]] <= test266151307()
                    require (32 * mem[_429 + mem[_429]]) + 32 >= 0 and _429 + ceil32(return_data.size) + (32 * mem[_429 + mem[_429]]) + 32 <= test266151307()
                    mem[64] = _429 + ceil32(return_data.size) + (32 * mem[_429 + mem[_429]]) + 32
                    mem[_429 + ceil32(return_data.size)] = _441
                    require return_data.size >= _435 + (32 * _441) + 32
                    mem[_429 + ceil32(return_data.size) + 32 len 32 * _441] = mem[_429 + _435 + 32 len 32 * _441]
                    require mem[_148] - 1 < _441
                    _627 = mem[(32 * mem[_148] - 1) + _429 + ceil32(return_data.size) + 32]
                    if ext_call.return_data[192] >= mem[(32 * mem[_148] - 1) + _429 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
                        if 0 > minProfit:
                            return (0 > minProfit)
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _664 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64]] = mem[_664] > sub_4fae279e
                    else:
                        _633 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_633] = 30
                        mem[_633 + 32] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[192] > _627 + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if _627 + ext_call.return_data[0] - ext_call.return_data[192] > minProfit:
                            return (_627 + ext_call.return_data[0] - ext_call.return_data[192] > minProfit)
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _721 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64]] = mem[_721] > sub_4fae279e
                else:
                    mem[_148 + 64] = stor18
                    require 2 < mem[_148]
                    mem[_148 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_148 + 100] = 5000 * s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 / 10000
                    mem[_148 + 132] = 64
                    mem[_148 + 164] = mem[_148]
                    idx = 0
                    s = _148 + 32
                    t = _148 + 196
                    while idx < mem[_148]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor17)
                    staticcall stor17.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _148 + (32 * mem[_148]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _428 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _434 = mem[_428]
                    require mem[_428] <= test266151307()
                    require _428 + return_data.size > _428 + mem[_428] + 31
                    _440 = mem[_428 + mem[_428]]
                    require mem[_428 + mem[_428]] <= test266151307()
                    require (32 * mem[_428 + mem[_428]]) + 32 >= 0 and _428 + ceil32(return_data.size) + (32 * mem[_428 + mem[_428]]) + 32 <= test266151307()
                    mem[64] = _428 + ceil32(return_data.size) + (32 * mem[_428 + mem[_428]]) + 32
                    mem[_428 + ceil32(return_data.size)] = _440
                    require return_data.size >= _434 + (32 * _440) + 32
                    mem[_428 + ceil32(return_data.size) + 32 len 32 * _440] = mem[_428 + _434 + 32 len 32 * _440]
                    require mem[_148] - 1 < _440
                    _626 = mem[(32 * mem[_148] - 1) + _428 + ceil32(return_data.size) + 32]
                    if ext_call.return_data[192] >= mem[(32 * mem[_148] - 1) + _428 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
                        if 0 > minProfit:
                            return (0 > minProfit)
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _662 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64]] = mem[_662] > sub_4fae279e
                    else:
                        _632 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_632] = 30
                        mem[_632 + 32] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[192] > _626 + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if _626 + ext_call.return_data[0] - ext_call.return_data[192] > minProfit:
                            return (_626 + ext_call.return_data[0] - ext_call.return_data[192] > minProfit)
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _717 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64]] = mem[_717] > sub_4fae279e
            else:
                if stor18 == wantAddress:
                    _152 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_152]
                    mem[_152 + 32] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                    require 1 < mem[_152]
                    if stor18 == wantAddress:
                        mem[_152 + 64] = wantAddress
                        mem[_152 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_152 + 100] = 5000 * s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 / 10000
                        mem[_152 + 132] = 64
                        mem[_152 + 164] = mem[_152]
                        idx = 0
                        s = _152 + 32
                        t = _152 + 196
                        while idx < mem[_152]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor17)
                        staticcall stor17.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _152 + (32 * mem[_152]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _431 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _437 = mem[_431]
                        require mem[_431] <= test266151307()
                        require _431 + return_data.size > _431 + mem[_431] + 31
                        _443 = mem[_431 + mem[_431]]
                        require mem[_431 + mem[_431]] <= test266151307()
                        require (32 * mem[_431 + mem[_431]]) + 32 >= 0 and _431 + ceil32(return_data.size) + (32 * mem[_431 + mem[_431]]) + 32 <= test266151307()
                        mem[64] = _431 + ceil32(return_data.size) + (32 * mem[_431 + mem[_431]]) + 32
                        mem[_431 + ceil32(return_data.size)] = _443
                        require return_data.size >= _437 + (32 * _443) + 32
                        mem[_431 + ceil32(return_data.size) + 32 len 32 * _443] = mem[_431 + _437 + 32 len 32 * _443]
                        require mem[_152] - 1 < _443
                        _629 = mem[(32 * mem[_152] - 1) + _431 + ceil32(return_data.size) + 32]
                        if ext_call.return_data[192] >= mem[(32 * mem[_152] - 1) + _431 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
                            if 0 > minProfit:
                                return (0 > minProfit)
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.creditAvailable() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _668 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64]] = mem[_668] > sub_4fae279e
                        else:
                            _635 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_635] = 30
                            mem[_635 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[192] > _629 + ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if _629 + ext_call.return_data[0] - ext_call.return_data[192] > minProfit:
                                return (_629 + ext_call.return_data[0] - ext_call.return_data[192] > minProfit)
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.creditAvailable() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _729 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64]] = mem[_729] > sub_4fae279e
                    else:
                        mem[_152 + 64] = stor18
                        require 2 < mem[_152]
                        mem[_152 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_152 + 100] = 5000 * s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 / 10000
                        mem[_152 + 132] = 64
                        mem[_152 + 164] = mem[_152]
                        idx = 0
                        s = _152 + 32
                        t = _152 + 196
                        while idx < mem[_152]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor17)
                        staticcall stor17.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _152 + (32 * mem[_152]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _430 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _436 = mem[_430]
                        require mem[_430] <= test266151307()
                        require _430 + return_data.size > _430 + mem[_430] + 31
                        _442 = mem[_430 + mem[_430]]
                        require mem[_430 + mem[_430]] <= test266151307()
                        require (32 * mem[_430 + mem[_430]]) + 32 >= 0 and _430 + ceil32(return_data.size) + (32 * mem[_430 + mem[_430]]) + 32 <= test266151307()
                        mem[64] = _430 + ceil32(return_data.size) + (32 * mem[_430 + mem[_430]]) + 32
                        mem[_430 + ceil32(return_data.size)] = _442
                        require return_data.size >= _436 + (32 * _442) + 32
                        mem[_430 + ceil32(return_data.size) + 32 len 32 * _442] = mem[_430 + _436 + 32 len 32 * _442]
                        require mem[_152] - 1 < _442
                        _628 = mem[(32 * mem[_152] - 1) + _430 + ceil32(return_data.size) + 32]
                        if ext_call.return_data[192] >= mem[(32 * mem[_152] - 1) + _430 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
                            if 0 > minProfit:
                                return (0 > minProfit)
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.creditAvailable() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64]] = mem[_666] > sub_4fae279e
                        else:
                            _634 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_634] = 30
                            mem[_634 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[192] > _628 + ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if _628 + ext_call.return_data[0] - ext_call.return_data[192] > minProfit:
                                return (_628 + ext_call.return_data[0] - ext_call.return_data[192] > minProfit)
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.creditAvailable() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _725 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64]] = mem[_725] > sub_4fae279e
                else:
                    _153 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_153 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[_153]
                    mem[_153 + 32] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                    require 1 < mem[_153]
                    if stor18 == wantAddress:
                        mem[_153 + 64] = wantAddress
                        mem[_153 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_153 + 132] = 5000 * s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 / 10000
                        mem[_153 + 164] = 64
                        mem[_153 + 196] = mem[_153]
                        idx = 0
                        s = _153 + 32
                        t = _153 + 228
                        while idx < mem[_153]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor17)
                        staticcall stor17.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _153 + (32 * mem[_153]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _433 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _439 = mem[_433]
                        require mem[_433] <= test266151307()
                        require _433 + return_data.size > _433 + mem[_433] + 31
                        _445 = mem[_433 + mem[_433]]
                        require mem[_433 + mem[_433]] <= test266151307()
                        require (32 * mem[_433 + mem[_433]]) + 32 >= 0 and _433 + ceil32(return_data.size) + (32 * mem[_433 + mem[_433]]) + 32 <= test266151307()
                        mem[64] = _433 + ceil32(return_data.size) + (32 * mem[_433 + mem[_433]]) + 32
                        mem[_433 + ceil32(return_data.size)] = _445
                        require return_data.size >= _439 + (32 * _445) + 32
                        mem[_433 + ceil32(return_data.size) + 32 len 32 * _445] = mem[_433 + _439 + 32 len 32 * _445]
                        require mem[_153] - 1 < _445
                        _631 = mem[(32 * mem[_153] - 1) + _433 + ceil32(return_data.size) + 32]
                        if ext_call.return_data[192] >= mem[(32 * mem[_153] - 1) + _433 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
                            if 0 > minProfit:
                                return (0 > minProfit)
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.creditAvailable() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _672 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64]] = mem[_672] > sub_4fae279e
                        else:
                            _637 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_637] = 30
                            mem[_637 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[192] > _631 + ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if _631 + ext_call.return_data[0] - ext_call.return_data[192] > minProfit:
                                return (_631 + ext_call.return_data[0] - ext_call.return_data[192] > minProfit)
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.creditAvailable() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _737 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64]] = mem[_737] > sub_4fae279e
                    else:
                        mem[_153 + 64] = stor18
                        require 2 < mem[_153]
                        mem[_153 + 96] = wantAddress
                        mem[_153 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_153 + 132] = 5000 * s * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 * _84 / 10000
                        mem[_153 + 164] = 64
                        mem[_153 + 196] = mem[_153]
                        idx = 0
                        s = _153 + 32
                        t = _153 + 228
                        while idx < mem[_153]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor17)
                        staticcall stor17.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _153 + (32 * mem[_153]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _432 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _438 = mem[_432]
                        require mem[_432] <= test266151307()
                        require _432 + return_data.size > _432 + mem[_432] + 31
                        _444 = mem[_432 + mem[_432]]
                        require mem[_432 + mem[_432]] <= test266151307()
                        require (32 * mem[_432 + mem[_432]]) + 32 >= 0 and _432 + ceil32(return_data.size) + (32 * mem[_432 + mem[_432]]) + 32 <= test266151307()
                        mem[64] = _432 + ceil32(return_data.size) + (32 * mem[_432 + mem[_432]]) + 32
                        mem[_432 + ceil32(return_data.size)] = _444
                        require return_data.size >= _438 + (32 * _444) + 32
                        mem[_432 + ceil32(return_data.size) + 32 len 32 * _444] = mem[_432 + _438 + 32 len 32 * _444]
                        require mem[_153] - 1 < _444
                        _630 = mem[(32 * mem[_153] - 1) + _432 + ceil32(return_data.size) + 32]
                        if ext_call.return_data[192] >= mem[(32 * mem[_153] - 1) + _432 + ceil32(return_data.size) + 32] + ext_call.return_data[0]:
                            if 0 > minProfit:
                                return (0 > minProfit)
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.creditAvailable() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _670 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64]] = mem[_670] > sub_4fae279e
                        else:
                            _636 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_636] = 30
                            mem[_636 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[192] > _630 + ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if _630 + ext_call.return_data[0] - ext_call.return_data[192] > minProfit:
                                return (_630 + ext_call.return_data[0] - ext_call.return_data[192] > minProfit)
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.creditAvailable() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _733 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64]] = mem[_733] > sub_4fae279e
    return memory
      from mem[64]
       len 32
}

function sub_2c6a9f95(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.getIncentivesController() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).rewardsPerSecond() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.getIncentivesController() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if arg2:
        staticcall address(ext_call.return_data[0]).poolInfo(address arg1) with:
                gas gas_remaining wei
               args aTokenAddress
        mem[(4 * ceil32(return_data.size)) + 96 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[128] == ext_call.return_data[140 len 20]
        require ext_code.size(aTokenAddress)
        staticcall aTokenAddress.getIncentivesController() with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).totalAllocPoint() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[(8 * ceil32(return_data.size)) + 96] = 26
            mem[(8 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / ext_call.return_data[0]:
                return 0
            if 0 / ext_call.return_data[0] <= 0:
                if not 0 / ext_call.return_data[0]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * 0 / ext_call.return_data[0]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * 0 / ext_call.return_data[0] / 8760 * 24 * 3600 * 0 / ext_call.return_data[0] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * 0 / ext_call.return_data[0] / arg1:
                    return 0
                if 4750 * 8760 * 10^18 * 24 * 3600 * 0 / ext_call.return_data[0] / arg1 / 8760 * 10^18 * 24 * 3600 * 0 / ext_call.return_data[0] / arg1 != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (4750 * 8760 * 10^18 * 24 * 3600 * 0 / ext_call.return_data[0] / arg1 / 10000)
            if stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 260] = 0 / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 292] = 64
                mem[(8 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1848 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 287
                _1872 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1848 + (32 * _1872) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1872] = mem[(8 * ceil32(return_data.size)) + _1848 + 288 len 32 * _1872]
                require 1 < _1872
                if not mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            if stor18 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor18 == wantAddress
                mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 260] = 0 / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 292] = 64
                mem[(8 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1850 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 287
                _1874 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1850 + (32 * _1874) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1874] = mem[(8 * ceil32(return_data.size)) + _1850 + 288 len 32 * _1874]
                require 1 < _1874
                if not mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            mem[(8 * ceil32(return_data.size)) + 160] = 3
            mem[(8 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
            mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            if stor18 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = 0 / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 324] = 64
                mem[(8 * ceil32(return_data.size)) + 356] = 3
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1852 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 319
                _1876 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1852 + (32 * _1876) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1876] = mem[(8 * ceil32(return_data.size)) + _1852 + 320 len 32 * _1876]
                require 2 < _1876
            else:
                mem[(8 * ceil32(return_data.size)) + 224] = stor18
                mem[(8 * ceil32(return_data.size)) + 256] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = 0 / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 324] = 64
                mem[(8 * ceil32(return_data.size)) + 356] = 3
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1851 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 319
                _1875 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1851 + (32 * _1875) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1875] = mem[(8 * ceil32(return_data.size)) + _1851 + 320 len 32 * _1875]
                require 2 < _1875
        else:
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(8 * ceil32(return_data.size)) + 96] = 26
            mem[(8 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]:
                return 0
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                if not ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] / 8760 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] / arg1:
                    return 0
                if 4750 * 8760 * 10^18 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] / arg1 / 8760 * 10^18 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] / arg1 != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (4750 * 8760 * 10^18 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] / arg1 / 10000)
            if stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 292] = 64
                mem[(8 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1842 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 287
                _1866 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1842 + (32 * _1866) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1866] = mem[(8 * ceil32(return_data.size)) + _1842 + 288 len 32 * _1866]
                require 1 < _1866
                if not mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            if stor18 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor18 == wantAddress
                mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 292] = 64
                mem[(8 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1844 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 287
                _1868 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1844 + (32 * _1868) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1868] = mem[(8 * ceil32(return_data.size)) + _1844 + 288 len 32 * _1868]
                require 1 < _1868
                if not mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            mem[(8 * ceil32(return_data.size)) + 160] = 3
            mem[(8 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
            mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            if stor18 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 324] = 64
                mem[(8 * ceil32(return_data.size)) + 356] = 3
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1846 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 319
                _1870 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1846 + (32 * _1870) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1870] = mem[(8 * ceil32(return_data.size)) + _1846 + 320 len 32 * _1870]
                require 2 < _1870
            else:
                mem[(8 * ceil32(return_data.size)) + 224] = stor18
                mem[(8 * ceil32(return_data.size)) + 256] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 324] = 64
                mem[(8 * ceil32(return_data.size)) + 356] = 3
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1845 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 319
                _1869 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1845 + (32 * _1869) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1869] = mem[(8 * ceil32(return_data.size)) + _1845 + 320 len 32 * _1869]
                require 2 < _1869
    else:
        staticcall address(ext_call.return_data[0]).poolInfo(address arg1) with:
                gas gas_remaining wei
               args dTokenAddress
        mem[(4 * ceil32(return_data.size)) + 96 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[128] == ext_call.return_data[140 len 20]
        require ext_code.size(aTokenAddress)
        staticcall aTokenAddress.getIncentivesController() with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).totalAllocPoint() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[(8 * ceil32(return_data.size)) + 96] = 26
            mem[(8 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / ext_call.return_data[0]:
                return 0
            if 0 / ext_call.return_data[0] <= 0:
                if not 0 / ext_call.return_data[0]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * 0 / ext_call.return_data[0]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * 0 / ext_call.return_data[0] / 8760 * 24 * 3600 * 0 / ext_call.return_data[0] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * 0 / ext_call.return_data[0] / arg1:
                    return 0
                if 4750 * 8760 * 10^18 * 24 * 3600 * 0 / ext_call.return_data[0] / arg1 / 8760 * 10^18 * 24 * 3600 * 0 / ext_call.return_data[0] / arg1 != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (4750 * 8760 * 10^18 * 24 * 3600 * 0 / ext_call.return_data[0] / arg1 / 10000)
            if stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 260] = 0 / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 292] = 64
                mem[(8 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1860 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 287
                _1884 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1860 + (32 * _1884) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1884] = mem[(8 * ceil32(return_data.size)) + _1860 + 288 len 32 * _1884]
                require 1 < _1884
                if not mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            if stor18 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor18 == wantAddress
                mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 260] = 0 / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 292] = 64
                mem[(8 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1862 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 287
                _1886 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1862 + (32 * _1886) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1886] = mem[(8 * ceil32(return_data.size)) + _1862 + 288 len 32 * _1886]
                require 1 < _1886
                if not mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            mem[(8 * ceil32(return_data.size)) + 160] = 3
            mem[(8 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
            mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            if stor18 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = 0 / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 324] = 64
                mem[(8 * ceil32(return_data.size)) + 356] = 3
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1864 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 319
                _1888 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1864 + (32 * _1888) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1888] = mem[(8 * ceil32(return_data.size)) + _1864 + 320 len 32 * _1888]
                require 2 < _1888
            else:
                mem[(8 * ceil32(return_data.size)) + 224] = stor18
                mem[(8 * ceil32(return_data.size)) + 256] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = 0 / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 324] = 64
                mem[(8 * ceil32(return_data.size)) + 356] = 3
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1863 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 319
                _1887 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1863 + (32 * _1887) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1887] = mem[(8 * ceil32(return_data.size)) + _1863 + 320 len 32 * _1887]
                require 2 < _1887
        else:
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(8 * ceil32(return_data.size)) + 96] = 26
            mem[(8 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]:
                return 0
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                if not ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] / 8760 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] / arg1:
                    return 0
                if 4750 * 8760 * 10^18 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] / arg1 / 8760 * 10^18 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] / arg1 != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (4750 * 8760 * 10^18 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] / arg1 / 10000)
            if stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor18 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 292] = 64
                mem[(8 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1854 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 287
                _1878 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1854 + (32 * _1878) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1878] = mem[(8 * ceil32(return_data.size)) + _1854 + 288 len 32 * _1878]
                require 1 < _1878
                if not mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            if stor18 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor18 == wantAddress
                mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 292] = 64
                mem[(8 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1856 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 287
                _1880 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1856 + (32 * _1880) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1880] = mem[(8 * ceil32(return_data.size)) + _1856 + 288 len 32 * _1880]
                require 1 < _1880
                if not mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 4750 * 0 / arg1 / 0 / arg1 != 4750:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (4750 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            mem[(8 * ceil32(return_data.size)) + 160] = 3
            mem[(8 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
            mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            if stor18 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 324] = 64
                mem[(8 * ceil32(return_data.size)) + 356] = 3
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1858 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 319
                _1882 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1858 + (32 * _1882) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1882] = mem[(8 * ceil32(return_data.size)) + _1858 + 320 len 32 * _1882]
                require 2 < _1882
            else:
                mem[(8 * ceil32(return_data.size)) + 224] = stor18
                mem[(8 * ceil32(return_data.size)) + 256] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 324] = 64
                mem[(8 * ceil32(return_data.size)) + 356] = 3
                idx = 0
                s = (8 * ceil32(return_data.size)) + 192
                t = (8 * ceil32(return_data.size)) + 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1857 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 319
                _1881 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1857 + (32 * _1881) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1881] = mem[(8 * ceil32(return_data.size)) + _1857 + 320 len 32 * _1881]
                require 2 < _1881
    if not mem[(10 * ceil32(return_data.size)) + 384]:
        if not arg1:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / arg1:
            return 0
        if 4750 * 0 / arg1 / 0 / arg1 != 4750:
            revert with 0, 'SafeMath: multiplication overflow'
        return (4750 * 0 / arg1 / 10000)
    if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] / mem[(10 * ceil32(return_data.size)) + 384] != 8760 * 24 * 3600:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384]:
        if not arg1:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / arg1:
            return 0
        if 4750 * 0 / arg1 / 0 / arg1 != 4750:
            revert with 0, 'SafeMath: multiplication overflow'
        return (4750 * 0 / arg1 / 10000)
    if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        revert with 0, 'SafeMath: division by zero', 0
    if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] / arg1:
        return 0
    if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] / arg1 != 4750:
        revert with 0, 'SafeMath: multiplication overflow'
    return (4750 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] / arg1 / 10000)
}



}
