contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - harvest()
#  - sub_afa30b75(?)
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
uint256 sub_8d01f0ba;
uint256 sub_4e8b979f;
uint256 stor14;
uint16 sub_8e72e31b;
uint16 sub_6353f822; offset 16
uint256 minProfit;
uint256 sub_4fae279e;
address stor18;
address stor19;
address stor20;
address stor21;
address protocolDataProviderAddress;
address stor23;
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

function sub_4e8b979f(?) payable {
    return sub_4e8b979f
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

function sub_6353f822(?) payable {
    return sub_6353f822
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

function sub_8e72e31b(?) payable {
    return sub_8e72e31b
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

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
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

function sub_a3182472(?) payable {
    require ext_code.size(stor20)
    staticcall stor20.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[64]
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

function ethToWant(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return arg1
    if arg1 == -1:
        return arg1
    if stor19 == wantAddress:
        return arg1
    require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
    delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.fromETH(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, wantAddress
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
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

function sub_638dcebd(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor21)
    staticcall stor21.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0])
    if 10^18 * arg1 / arg1 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^18 * arg1 / ext_call.return_data[0])
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
    require ext_code.size(stor20)
    call stor20.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args wantAddress, arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    call stor20.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
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

function sub_61a8431b(?) payable {
    require ext_code.size(stor20)
    staticcall stor20.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_code.size(stor21)
    staticcall stor21.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[64]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[0]:
            return 0
        if 8261 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 8261:
            revert with 0, 'SafeMath: multiplication overflow'
        return (8261 * 0 / ext_call.return_data[0] / 10000)
    if 10^18 * ext_call.return_data[64] / ext_call.return_data[64] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^18 * ext_call.return_data[64] / ext_call.return_data[0]:
        return 0
    if 8261 * 10^18 * ext_call.return_data[64] / ext_call.return_data[0] / 10^18 * ext_call.return_data[64] / ext_call.return_data[0] != 8261:
        revert with 0, 'SafeMath: multiplication overflow'
    return (8261 * 10^18 * ext_call.return_data[64] / ext_call.return_data[0] / 10000)
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

function sub_63782b51(?) payable {
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

function harvestTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
        if 0 > minProfit:
            return (0 > minProfit)
    else:
        if ext_call.return_data[192] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] - ext_call.return_data[192] > minProfit:
            return (ext_call.return_data[0] - ext_call.return_data[192] > minProfit)
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.creditAvailable() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > sub_4fae279e)
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
        require ext_code.size(stor20)
        staticcall stor20.getUserAccountData(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
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

function migrate(address arg1) payable {
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
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 96] = 30
    mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[(4 * ceil32(return_data.size)) + 164] = wantAddress
    mem[(4 * ceil32(return_data.size)) + 196] = 0
    mem[(4 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(stor20)
    call stor20.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args wantAddress, 0, this.address
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_8d01f0ba:
        mem[(6 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 196] = arg1
        mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 160] = 68
        mem[(7 * ceil32(return_data.size)) + 196 len 28] = address(arg1) << 64
        mem[(7 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
        mem[(7 * ceil32(return_data.size)) + 260] = 32
        mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[(7 * ceil32(return_data.size)) + 392] = 0
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
            mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 356] == bool(mem[(7 * ceil32(return_data.size)) + 356])
                if not mem[(7 * ceil32(return_data.size)) + 356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
        mem[(6 * ceil32(return_data.size)) + 196] = 0
        mem[(6 * ceil32(return_data.size)) + 228] = 2
        mem[(6 * ceil32(return_data.size)) + 260] = this.address
        require ext_code.size(stor20)
        call stor20.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args wantAddress, 0, 2, this.address
        mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 164] = wantAddress
        mem[(7 * ceil32(return_data.size)) + 196] = 0
        mem[(7 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(stor20)
        call stor20.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, 0, this.address
        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(10 * ceil32(return_data.size)) + 196] = arg1
        mem[(10 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 160] = 68
        mem[(10 * ceil32(return_data.size)) + 196 len 28] = address(arg1) << 64
        mem[(10 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
        mem[(10 * ceil32(return_data.size)) + 260] = 32
        mem[(10 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(10 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[(10 * ceil32(return_data.size)) + 392] = 0
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
            mem[(10 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(10 * ceil32(return_data.size)) + 356] == bool(mem[(10 * ceil32(return_data.size)) + 356])
                if not mem[(10 * ceil32(return_data.size)) + 356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_2dbf2a0f(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require ext_code.size(stor20)
    staticcall stor20.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not ext_call.return_data[96]:
        if not ext_call.return_data[96]:
            require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
            if not arg1:
                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], ext_call.return_data[32], 0, 0, wantAddress, stor14
            else:
                if arg1 == -1:
                    delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], ext_call.return_data[32], 0, 0, wantAddress, stor14
                else:
                    if stor19 == wantAddress:
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], ext_call.return_data[32], 0, 0, wantAddress, stor14
                    else:
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.toETH(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args arg1, wantAddress
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], ext_call.return_data[0], ext_call.return_data[32], 0, 0, wantAddress, stor14
        else:
            if sub_8e72e31b * ext_call.return_data[96] / ext_call.return_data[96] != sub_8e72e31b:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
            if not arg1:
                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], ext_call.return_data[32], 0, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
            else:
                if arg1 == -1:
                    delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], ext_call.return_data[32], 0, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
                else:
                    if stor19 == wantAddress:
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], ext_call.return_data[32], 0, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
                    else:
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.toETH(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args arg1, wantAddress
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], ext_call.return_data[0], ext_call.return_data[32], 0, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
    else:
        if sub_6353f822 * ext_call.return_data[96] / ext_call.return_data[96] != sub_6353f822:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[96]:
            require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
            if not arg1:
                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, 0, wantAddress, stor14
            else:
                if arg1 == -1:
                    delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, 0, wantAddress, stor14
                else:
                    if stor19 == wantAddress:
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, 0, wantAddress, stor14
                    else:
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.toETH(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args arg1, wantAddress
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, 0, wantAddress, stor14
        else:
            if sub_8e72e31b * ext_call.return_data[96] / ext_call.return_data[96] != sub_8e72e31b:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
            if not arg1:
                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
            else:
                if arg1 == -1:
                    delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
                else:
                    if stor19 == wantAddress:
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
                    else:
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.toETH(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args arg1, wantAddress
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
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
        stor20 = 0x9fad24f572045c7869117160a571b2e50b10d068
        require ext_code.size(0x9fad24f572045c7869117160a571b2e50b10d068)
        staticcall 0x9fad24f572045c7869117160a571b2e50b10d068.getAddressesProvider() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor23 = ext_call.return_data[12 len 20]
        require ext_code.size(ext_call.return_data[12 len 20])
        staticcall ext_call.return_data[12 len 20].getPriceOracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor21 = ext_call.return_data[12 len 20]
        protocolDataProviderAddress = 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3
        require ext_code.size(stor20)
        staticcall stor20.getReserveData(address arg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 384
        require bool((8 * ceil32(return_data.size)) + 1060 <= test266151307())
        require return_data.size >= 32
        require bool((8 * ceil32(return_data.size)) + 1092 <= test266151307())
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
        stor20 = 0x9fad24f572045c7869117160a571b2e50b10d068
        require ext_code.size(0x9fad24f572045c7869117160a571b2e50b10d068)
        staticcall 0x9fad24f572045c7869117160a571b2e50b10d068.getAddressesProvider() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor23 = ext_call.return_data[12 len 20]
        require ext_code.size(ext_call.return_data[12 len 20])
        staticcall ext_call.return_data[12 len 20].getPriceOracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor21 = ext_call.return_data[12 len 20]
        protocolDataProviderAddress = 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3
        require ext_code.size(stor20)
        staticcall stor20.getReserveData(address arg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 384
        require bool((8 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 <= test266151307())
        require return_data.size >= 32
        require bool((8 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093 <= test266151307())
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
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    stor14 = uint8(10^uint8(ext_call.return_data[0])) / 100
    stor18 = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor19 = ext_call.return_data[12 len 20]
    require ext_code.size(wantAddress)
    call wantAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor20, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xd8321aa83fb0a4ecd6348d4577431310a6e0814d)
    call 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor18, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0e2bfca6(?) payable {
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
    require ext_code.size(stor20)
    if sub_8d01f0ba:
        if not arg1:
            call stor20.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor20)
            call stor20.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, 0, 2, this.address
        else:
            staticcall stor20.getUserAccountData(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if not ext_call.return_data[96]:
                if not ext_call.return_data[96]:
                    require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
                    if not arg1:
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], ext_call.return_data[32], 0, 0, wantAddress, stor14
                    else:
                        if arg1 == -1:
                            delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], ext_call.return_data[32], 0, 0, wantAddress, stor14
                        else:
                            if stor19 == wantAddress:
                                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], ext_call.return_data[32], 0, 0, wantAddress, stor14
                            else:
                                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.toETH(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args arg1, wantAddress
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
                                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                                     gas gas_remaining wei
                                    args delegate.return_data[0], ext_call.return_data[0], ext_call.return_data[32], 0, 0, wantAddress, stor14
                else:
                    if sub_8e72e31b * ext_call.return_data[96] / ext_call.return_data[96] != sub_8e72e31b:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
                    if not arg1:
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], ext_call.return_data[32], 0, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
                    else:
                        if arg1 == -1:
                            delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], ext_call.return_data[32], 0, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
                        else:
                            if stor19 == wantAddress:
                                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], ext_call.return_data[32], 0, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
                            else:
                                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.toETH(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args arg1, wantAddress
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
                                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                                     gas gas_remaining wei
                                    args delegate.return_data[0], ext_call.return_data[0], ext_call.return_data[32], 0, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
            else:
                if sub_6353f822 * ext_call.return_data[96] / ext_call.return_data[96] != sub_6353f822:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[96]:
                    require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
                    if not arg1:
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, 0, wantAddress, stor14
                    else:
                        if arg1 == -1:
                            delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, 0, wantAddress, stor14
                        else:
                            if stor19 == wantAddress:
                                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, 0, wantAddress, stor14
                            else:
                                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.toETH(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args arg1, wantAddress
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
                                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                                     gas gas_remaining wei
                                    args delegate.return_data[0], ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, 0, wantAddress, stor14
                else:
                    if sub_8e72e31b * ext_call.return_data[96] / ext_call.return_data[96] != sub_8e72e31b:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
                    if not arg1:
                        delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
                    else:
                        if arg1 == -1:
                            delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
                        else:
                            if stor19 == wantAddress:
                                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
                            else:
                                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.toETH(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args arg1, wantAddress
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x20e63e893e47bbdf8961932e01ae15e84e80bd33)
                                delegate 0x20e63e893e47bbdf8961932e01ae15e84e80bd33.calculateAmountToRepay(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                                     gas gas_remaining wei
                                    args delegate.return_data[0], ext_call.return_data[0], ext_call.return_data[32], sub_6353f822 * ext_call.return_data[96] / 10000, sub_8e72e31b * ext_call.return_data[96] / 10000, wantAddress, stor14
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor20)
            call stor20.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, delegate.return_data[0], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor20)
            call stor20.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, delegate.return_data[0], 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call stor20.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args wantAddress, arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function aprAfterDeposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[480] = 0
    mem[96] = 480
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    require ext_code.size(stor20)
    staticcall stor20.getReserveData(address arg1) with:
            gas gas_remaining wei
           args wantAddress
    mem[512 len 384] = ext_call.return_data[0 len 384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool(ceil32(return_data.size) + 896 <= test266151307())
    require return_data.size >= 32
    require bool(ceil32(return_data.size) + 928 <= test266151307())
    mem[ceil32(return_data.size) + 896] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 512] = ceil32(return_data.size) + 896
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    mem[ceil32(return_data.size) + 576] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    mem[ceil32(return_data.size) + 608] = ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    mem[ceil32(return_data.size) + 640] = ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    mem[ceil32(return_data.size) + 672] = ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    mem[ceil32(return_data.size) + 704] = ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    mem[ceil32(return_data.size) + 736] = ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    mem[ceil32(return_data.size) + 768] = ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    mem[ceil32(return_data.size) + 800] = ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    mem[ceil32(return_data.size) + 832] = ext_call.return_data[320]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    mem[ceil32(return_data.size) + 864] = ext_call.return_data[352]
    require ext_code.size(protocolDataProviderAddress)
    staticcall protocolDataProviderAddress.getReserveData(address arg1) with:
            gas gas_remaining wei
           args wantAddress
    mem[ceil32(return_data.size) + 928 len 320] = ext_call.return_data[0 len 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[288] == ext_call.return_data[315 len 5]
    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(protocolDataProviderAddress)
    staticcall protocolDataProviderAddress.getReserveConfigurationData(address arg1) with:
            gas gas_remaining wei
           args wantAddress
    mem[(2 * ceil32(return_data.size)) + 928 len 320] = ext_call.return_data[0 len 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[160] == bool(ext_call.return_data[160])
    require ext_call.return_data[192] == bool(ext_call.return_data[192])
    require ext_call.return_data[224] == bool(ext_call.return_data[224])
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    require ext_call.return_data[288] == bool(ext_call.return_data[288])
    mem[(4 * ceil32(return_data.size)) + 996] = ext_call.return_data[32]
    mem[(4 * ceil32(return_data.size)) + 1028] = ext_call.return_data[64]
    mem[(4 * ceil32(return_data.size)) + 1060] = ext_call.return_data[192]
    mem[(4 * ceil32(return_data.size)) + 1092] = ext_call.return_data[128]
    require ext_code.size(address(ext_call.return_data[320]))
    staticcall address(ext_call.return_data[320]).calculateInterestRates(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
            gas gas_remaining wei
           args wantAddress, arg1 + ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[192], ext_call.return_data[128]
    mem[(4 * ceil32(return_data.size)) + 928 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[32] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[64] < 0:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.getIncentivesController() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).rewardsPerSecond() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.getIncentivesController() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).poolInfo(address arg1) with:
            gas gas_remaining wei
           args aTokenAddress
    mem[(10 * ceil32(return_data.size)) + 928 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[128] == ext_call.return_data[140 len 20]
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.getIncentivesController() with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalAllocPoint() with:
            gas gas_remaining wei
    mem[(12 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(13 * ceil32(return_data.size)) + 928] = 26
        mem[(13 * ceil32(return_data.size)) + 960] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[0]:
            if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] / 10^9)
        if stor19 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
            mem[(13 * ceil32(return_data.size)) + 992] = 2
            mem[(13 * ceil32(return_data.size)) + 1024] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            require stor19 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            mem[(13 * ceil32(return_data.size)) + 1056] = wantAddress
            mem[(13 * ceil32(return_data.size)) + 1088] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(13 * ceil32(return_data.size)) + 1092] = 0 / ext_call.return_data[0]
            mem[(13 * ceil32(return_data.size)) + 1124] = 64
            mem[(13 * ceil32(return_data.size)) + 1156] = 2
            idx = 0
            s = (13 * ceil32(return_data.size)) + 1024
            t = (13 * ceil32(return_data.size)) + 1188
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor18)
            staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0 / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 1188 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(13 * ceil32(return_data.size)) + 1088 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (14 * ceil32(return_data.size)) + 1088
            require return_data.size >= 32
            _225 = mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
            require mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
            require (13 * ceil32(return_data.size)) + return_data.size + 1088 > (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1119
            _237 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1088]
            require mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1088] <= test266151307()
            require (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1088]) + 32 >= 0 and (14 * ceil32(return_data.size)) + (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1088]) + 1120 <= test266151307()
            mem[(14 * ceil32(return_data.size)) + 1088] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1088]
            require return_data.size >= _225 + (32 * _237) + 32
            mem[(14 * ceil32(return_data.size)) + 1120 len 32 * _237] = mem[(13 * ceil32(return_data.size)) + _225 + 1120 len 32 * _237]
            require 1 < _237
            if not mem[(14 * ceil32(return_data.size)) + 1152]:
                if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] / 10^9)
                if 4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / mem[(14 * ceil32(return_data.size)) + 1152] != 8760 * 24 * 3600:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152]:
                if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] / 10^9)
                if 4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] / 10^9)
            if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
                revert with 0, 'SafeMath: multiplication overflow'
            if (4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return ((4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
        if stor19 == wantAddress:
            mem[(13 * ceil32(return_data.size)) + 992] = 2
            mem[(13 * ceil32(return_data.size)) + 1024] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            require stor19 == wantAddress
            mem[(13 * ceil32(return_data.size)) + 1056] = wantAddress
            mem[(13 * ceil32(return_data.size)) + 1088] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(13 * ceil32(return_data.size)) + 1092] = 0 / ext_call.return_data[0]
            mem[(13 * ceil32(return_data.size)) + 1124] = 64
            mem[(13 * ceil32(return_data.size)) + 1156] = 2
            idx = 0
            s = (13 * ceil32(return_data.size)) + 1024
            t = (13 * ceil32(return_data.size)) + 1188
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor18)
            staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0 / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 1188 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(13 * ceil32(return_data.size)) + 1088 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (14 * ceil32(return_data.size)) + 1088
            require return_data.size >= 32
            _227 = mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
            require mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
            require (13 * ceil32(return_data.size)) + return_data.size + 1088 > (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1119
            _239 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1088]
            require mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1088] <= test266151307()
            require (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1088]) + 32 >= 0 and (14 * ceil32(return_data.size)) + (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1088]) + 1120 <= test266151307()
            mem[(14 * ceil32(return_data.size)) + 1088] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1088]
            require return_data.size >= _227 + (32 * _239) + 32
            mem[(14 * ceil32(return_data.size)) + 1120 len 32 * _239] = mem[(13 * ceil32(return_data.size)) + _227 + 1120 len 32 * _239]
            require 1 < _239
            if not mem[(14 * ceil32(return_data.size)) + 1152]:
                if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] / 10^9)
                if 4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / mem[(14 * ceil32(return_data.size)) + 1152] != 8760 * 24 * 3600:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152]:
                if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] / 10^9)
                if 4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] / 10^9)
            if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
                revert with 0, 'SafeMath: multiplication overflow'
            if (4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return ((4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
        mem[(13 * ceil32(return_data.size)) + 992] = 3
        mem[(13 * ceil32(return_data.size)) + 1024 len 96] = call.data[calldata.size len 96]
        mem[(13 * ceil32(return_data.size)) + 1024] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
        if stor19 == wantAddress:
            mem[(13 * ceil32(return_data.size)) + 1056] = wantAddress
            mem[(13 * ceil32(return_data.size)) + 1120] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(13 * ceil32(return_data.size)) + 1124] = 0 / ext_call.return_data[0]
            mem[(13 * ceil32(return_data.size)) + 1156] = 64
            mem[(13 * ceil32(return_data.size)) + 1188] = 3
            idx = 0
            s = (13 * ceil32(return_data.size)) + 1024
            t = (13 * ceil32(return_data.size)) + 1220
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor18)
            staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0 / ext_call.return_data[0], Array(len=3, data=mem[(13 * ceil32(return_data.size)) + 1220 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(13 * ceil32(return_data.size)) + 1120 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (14 * ceil32(return_data.size)) + 1120
            require return_data.size >= 32
            _229 = mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
            require mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
            require (13 * ceil32(return_data.size)) + return_data.size + 1120 > (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1151
            _241 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1120]
            require mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1120] <= test266151307()
            require (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1120]) + 32 >= 0 and (14 * ceil32(return_data.size)) + (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1120]) + 1152 <= test266151307()
            mem[(14 * ceil32(return_data.size)) + 1120] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1120]
            require return_data.size >= _229 + (32 * _241) + 32
            mem[(14 * ceil32(return_data.size)) + 1152 len 32 * _241] = mem[(13 * ceil32(return_data.size)) + _229 + 1152 len 32 * _241]
            require 2 < _241
        else:
            mem[(13 * ceil32(return_data.size)) + 1056] = stor19
            mem[(13 * ceil32(return_data.size)) + 1088] = wantAddress
            mem[(13 * ceil32(return_data.size)) + 1120] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(13 * ceil32(return_data.size)) + 1124] = 0 / ext_call.return_data[0]
            mem[(13 * ceil32(return_data.size)) + 1156] = 64
            mem[(13 * ceil32(return_data.size)) + 1188] = 3
            idx = 0
            s = (13 * ceil32(return_data.size)) + 1024
            t = (13 * ceil32(return_data.size)) + 1220
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor18)
            staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0 / ext_call.return_data[0], Array(len=3, data=mem[(13 * ceil32(return_data.size)) + 1220 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(13 * ceil32(return_data.size)) + 1120 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (14 * ceil32(return_data.size)) + 1120
            require return_data.size >= 32
            _228 = mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
            require mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
            require (13 * ceil32(return_data.size)) + return_data.size + 1120 > (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1151
            _240 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1120]
            require mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1120] <= test266151307()
            require (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1120]) + 32 >= 0 and (14 * ceil32(return_data.size)) + (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1120]) + 1152 <= test266151307()
            mem[(14 * ceil32(return_data.size)) + 1120] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 1120]
            require return_data.size >= _228 + (32 * _240) + 32
            mem[(14 * ceil32(return_data.size)) + 1152 len 32 * _240] = mem[(13 * ceil32(return_data.size)) + _228 + 1152 len 32 * _240]
            require 2 < _240
    else:
        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(13 * ceil32(return_data.size)) + 928] = 26
        mem[(13 * ceil32(return_data.size)) + 960] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]:
            if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] / 10^9)
        if stor19 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
            mem[(13 * ceil32(return_data.size)) + 992] = 2
            mem[(13 * ceil32(return_data.size)) + 1024] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            require stor19 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            mem[(13 * ceil32(return_data.size)) + 1056] = wantAddress
            mem[(13 * ceil32(return_data.size)) + 1088] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(13 * ceil32(return_data.size)) + 1092] = ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]
            mem[(13 * ceil32(return_data.size)) + 1124] = 64
            mem[(13 * ceil32(return_data.size)) + 1156] = 2
            idx = 0
            s = (13 * ceil32(return_data.size)) + 1024
            t = (13 * ceil32(return_data.size)) + 1188
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor18)
            staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 1188 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(13 * ceil32(return_data.size)) + 1088 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (14 * ceil32(return_data.size)) + 1088
            require return_data.size >= 32
            _221 = mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
            require mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
            require (13 * ceil32(return_data.size)) + return_data.size + 1088 > (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1119
            _233 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1088]
            require mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1088] <= test266151307()
            require (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1088]) + 32 >= 0 and (14 * ceil32(return_data.size)) + (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1088]) + 1120 <= test266151307()
            mem[(14 * ceil32(return_data.size)) + 1088] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1088]
            require return_data.size >= _221 + (32 * _233) + 32
            mem[(14 * ceil32(return_data.size)) + 1120 len 32 * _233] = mem[(13 * ceil32(return_data.size)) + _221 + 1120 len 32 * _233]
            require 1 < _233
            if not mem[(14 * ceil32(return_data.size)) + 1152]:
                if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] / 10^9)
                if 4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / mem[(14 * ceil32(return_data.size)) + 1152] != 8760 * 24 * 3600:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152]:
                if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] / 10^9)
                if 4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] / 10^9)
            if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
                revert with 0, 'SafeMath: multiplication overflow'
            if (4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return ((4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
        if stor19 == wantAddress:
            mem[(13 * ceil32(return_data.size)) + 992] = 2
            mem[(13 * ceil32(return_data.size)) + 1024] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            require stor19 == wantAddress
            mem[(13 * ceil32(return_data.size)) + 1056] = wantAddress
            mem[(13 * ceil32(return_data.size)) + 1088] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(13 * ceil32(return_data.size)) + 1092] = ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]
            mem[(13 * ceil32(return_data.size)) + 1124] = 64
            mem[(13 * ceil32(return_data.size)) + 1156] = 2
            idx = 0
            s = (13 * ceil32(return_data.size)) + 1024
            t = (13 * ceil32(return_data.size)) + 1188
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor18)
            staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 1188 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(13 * ceil32(return_data.size)) + 1088 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (14 * ceil32(return_data.size)) + 1088
            require return_data.size >= 32
            _222 = mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
            require mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
            require (13 * ceil32(return_data.size)) + return_data.size + 1088 > (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1119
            _234 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1088]
            require mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1088] <= test266151307()
            require (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1088]) + 32 >= 0 and (14 * ceil32(return_data.size)) + (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1088]) + 1120 <= test266151307()
            mem[(14 * ceil32(return_data.size)) + 1088] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1088]
            require return_data.size >= _222 + (32 * _234) + 32
            mem[(14 * ceil32(return_data.size)) + 1120 len 32 * _234] = mem[(13 * ceil32(return_data.size)) + _222 + 1120 len 32 * _234]
            require 1 < _234
            if not mem[(14 * ceil32(return_data.size)) + 1152]:
                if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] / 10^9)
                if 4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / mem[(14 * ceil32(return_data.size)) + 1152] != 8760 * 24 * 3600:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152]:
                if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] / 10^9)
                if 4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] / 10^9)
            if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
                revert with 0, 'SafeMath: multiplication overflow'
            if (4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return ((4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
        mem[(13 * ceil32(return_data.size)) + 992] = 3
        mem[(13 * ceil32(return_data.size)) + 1024 len 96] = call.data[calldata.size len 96]
        mem[(13 * ceil32(return_data.size)) + 1024] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
        if stor19 == wantAddress:
            mem[(13 * ceil32(return_data.size)) + 1056] = wantAddress
            mem[(13 * ceil32(return_data.size)) + 1120] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(13 * ceil32(return_data.size)) + 1124] = ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]
            mem[(13 * ceil32(return_data.size)) + 1156] = 64
            mem[(13 * ceil32(return_data.size)) + 1188] = 3
            idx = 0
            s = (13 * ceil32(return_data.size)) + 1024
            t = (13 * ceil32(return_data.size)) + 1220
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor18)
            staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=3, data=mem[(13 * ceil32(return_data.size)) + 1220 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(13 * ceil32(return_data.size)) + 1120 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (14 * ceil32(return_data.size)) + 1120
            require return_data.size >= 32
            _223 = mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
            require mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
            require (13 * ceil32(return_data.size)) + return_data.size + 1120 > (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1151
            _235 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1120]
            require mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1120] <= test266151307()
            require (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1120]) + 32 >= 0 and (14 * ceil32(return_data.size)) + (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1120]) + 1152 <= test266151307()
            mem[(14 * ceil32(return_data.size)) + 1120] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1120]
            require return_data.size >= _223 + (32 * _235) + 32
            mem[(14 * ceil32(return_data.size)) + 1152 len 32 * _235] = mem[(13 * ceil32(return_data.size)) + _223 + 1152 len 32 * _235]
            require 2 < _235
        else:
            mem[(13 * ceil32(return_data.size)) + 1056] = stor19
            mem[(13 * ceil32(return_data.size)) + 1088] = wantAddress
            mem[(13 * ceil32(return_data.size)) + 1120] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(13 * ceil32(return_data.size)) + 1124] = ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]
            mem[(13 * ceil32(return_data.size)) + 1156] = 64
            mem[(13 * ceil32(return_data.size)) + 1188] = 3
            idx = 0
            s = (13 * ceil32(return_data.size)) + 1024
            t = (13 * ceil32(return_data.size)) + 1220
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor18)
            staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=3, data=mem[(13 * ceil32(return_data.size)) + 1220 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(13 * ceil32(return_data.size)) + 1120 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (14 * ceil32(return_data.size)) + 1120
            require return_data.size >= 32
            _1117 = mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
            require mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
            require (13 * ceil32(return_data.size)) + return_data.size + 1120 > (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1151
            _1122 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1120]
            require mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1120] <= test266151307()
            require (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1120]) + 32 >= 0 and (14 * ceil32(return_data.size)) + (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1120]) + 1152 <= test266151307()
            mem[(14 * ceil32(return_data.size)) + 1120] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 1120]
            require return_data.size >= _1117 + (32 * _1122) + 32
            mem[(14 * ceil32(return_data.size)) + 1152 len 32 * _1122] = mem[(13 * ceil32(return_data.size)) + _1117 + 1152 len 32 * _1122]
            require 2 < _1122
    if not mem[(14 * ceil32(return_data.size)) + 1216]:
        if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
            if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] / 10^9)
        if 4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
            revert with 0, 'SafeMath: multiplication overflow'
        if (4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
            revert with 0, 'SafeMath: addition overflow'
        return ((4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
    if 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / mem[(14 * ceil32(return_data.size)) + 1216] != 8760 * 24 * 3600:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216]:
        if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
            if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] / 10^9)
        if 4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
            revert with 0, 'SafeMath: multiplication overflow'
        if (4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
            revert with 0, 'SafeMath: addition overflow'
        return ((4750 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
    if 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if not 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
        if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
            revert with 0, 'SafeMath: addition overflow'
        return (ext_call.return_data[0] / 10^9)
    if 4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 4750:
        revert with 0, 'SafeMath: multiplication overflow'
    if (4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
        revert with 0, 'SafeMath: addition overflow'
    return ((4750 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
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
            if stor19 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor19 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1628 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 287
                _1652 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1628 + (32 * _1652) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1652] = mem[(8 * ceil32(return_data.size)) + _1628 + 288 len 32 * _1652]
                require 1 < _1652
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
            if stor19 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor19 == wantAddress
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1630 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 287
                _1654 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1630 + (32 * _1654) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1654] = mem[(8 * ceil32(return_data.size)) + _1630 + 288 len 32 * _1654]
                require 1 < _1654
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
            if stor19 == wantAddress:
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1632 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 319
                _1656 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 320
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1632 + (32 * _1656) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1656] = mem[(8 * ceil32(return_data.size)) + _1632 + 320 len 32 * _1656]
                require 2 < _1656
            else:
                mem[(8 * ceil32(return_data.size)) + 224] = stor19
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1631 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 319
                _1655 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 320
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1631 + (32 * _1655) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1655] = mem[(8 * ceil32(return_data.size)) + _1631 + 320 len 32 * _1655]
                require 2 < _1655
        else:
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(8 * ceil32(return_data.size)) + 96] = 26
            mem[(8 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]:
                return 0
            if stor19 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor19 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1622 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 287
                _1646 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1622 + (32 * _1646) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1646] = mem[(8 * ceil32(return_data.size)) + _1622 + 288 len 32 * _1646]
                require 1 < _1646
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
            if stor19 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor19 == wantAddress
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1624 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 287
                _1648 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1624 + (32 * _1648) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1648] = mem[(8 * ceil32(return_data.size)) + _1624 + 288 len 32 * _1648]
                require 1 < _1648
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
            if stor19 == wantAddress:
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1626 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 319
                _1650 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 320
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1626 + (32 * _1650) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1650] = mem[(8 * ceil32(return_data.size)) + _1626 + 320 len 32 * _1650]
                require 2 < _1650
            else:
                mem[(8 * ceil32(return_data.size)) + 224] = stor19
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1625 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 319
                _1649 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 320
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1625 + (32 * _1649) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1649] = mem[(8 * ceil32(return_data.size)) + _1625 + 320 len 32 * _1649]
                require 2 < _1649
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
            if stor19 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor19 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1640 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 287
                _1664 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1640 + (32 * _1664) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1664] = mem[(8 * ceil32(return_data.size)) + _1640 + 288 len 32 * _1664]
                require 1 < _1664
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
            if stor19 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor19 == wantAddress
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1642 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 287
                _1666 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1642 + (32 * _1666) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1666] = mem[(8 * ceil32(return_data.size)) + _1642 + 288 len 32 * _1666]
                require 1 < _1666
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
            if stor19 == wantAddress:
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1644 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 319
                _1668 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 320
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1644 + (32 * _1668) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1668] = mem[(8 * ceil32(return_data.size)) + _1644 + 320 len 32 * _1668]
                require 2 < _1668
            else:
                mem[(8 * ceil32(return_data.size)) + 224] = stor19
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1643 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 319
                _1667 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]) + 320
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 0 / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1643 + (32 * _1667) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1667] = mem[(8 * ceil32(return_data.size)) + _1643 + 320 len 32 * _1667]
                require 2 < _1667
        else:
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(8 * ceil32(return_data.size)) + 96] = 26
            mem[(8 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]:
                return 0
            if stor19 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor19 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1634 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 287
                _1658 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1634 + (32 * _1658) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1658] = mem[(8 * ceil32(return_data.size)) + _1634 + 288 len 32 * _1658]
                require 1 < _1658
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
            if stor19 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor19 == wantAddress
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _1636 = mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 287
                _1660 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]) + 288 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 256]
                require return_data.size >= _1636 + (32 * _1660) + 32
                mem[(10 * ceil32(return_data.size)) + 288 len 32 * _1660] = mem[(8 * ceil32(return_data.size)) + _1636 + 288 len 32 * _1660]
                require 1 < _1660
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
            if stor19 == wantAddress:
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1638 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 319
                _1662 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 320
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1638 + (32 * _1662) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1662] = mem[(8 * ceil32(return_data.size)) + _1638 + 320 len 32 * _1662]
                require 2 < _1662
            else:
                mem[(8 * ceil32(return_data.size)) + 224] = stor19
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
                require ext_code.size(stor18)
                staticcall stor18.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1637 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 319
                _1661 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 320 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]) + 320
                mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 288]
                require return_data.size >= _1637 + (32 * _1661) + 32
                mem[(10 * ceil32(return_data.size)) + 320 len 32 * _1661] = mem[(8 * ceil32(return_data.size)) + _1637 + 320 len 32 * _1661]
                require 2 < _1661
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
