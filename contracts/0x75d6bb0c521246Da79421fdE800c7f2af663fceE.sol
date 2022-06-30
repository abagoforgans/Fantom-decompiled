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
uint8 doHealthCheck;
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
uint256 minProfit;
uint256 sub_4fae279e;
address stor16;
address stor17;
address stor18;
address stor19;
address protocolDataProviderAddress;
address stor21;
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

function doHealthCheck() payable {
    return bool(doHealthCheck)
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
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a3182472(?) payable {
    require ext_code.size(stor18)
    staticcall stor18.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[64]
}

function balanceOfDebt() payable {
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3afe9a7b(?) payable {
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.balanceOf(address arg1) with:
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
    staticcall wantAddress.balanceOf(address arg1) with:
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

function sub_638dcebd(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor19)
    staticcall stor19.getAssetPrice(address arg1) with:
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

function sub_b44b3a8f(?) payable {
    require ext_code.size(dTokenAddress)
    staticcall dTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.balanceOf(address arg1) with:
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
    doHealthCheck = uint8(arg1)
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
    staticcall dTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
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
    staticcall dTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
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
    require ext_code.size(stor18)
    staticcall stor18.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_code.size(stor19)
    staticcall stor19.getAssetPrice(address arg1) with:
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
    staticcall dTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
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
    staticcall dTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
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
    staticcall wantAddress.balanceOf(address arg1) with:
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
    staticcall arg1.balanceOf(address arg1) with:
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
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[(4 * ceil32(return_data.size)) + 196] = 32
    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) << 288)
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

function ethToWant(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor17 == wantAddress:
        return arg1
    if stor17 == stor17:
        mem[96] = 2
        mem[128] = stor17
        require stor17 == stor17
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
        require ext_code.size(stor16)
        staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
        if stor17 == wantAddress:
            mem[96] = 2
            mem[128] = stor17
            require stor17 == wantAddress
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
            require ext_code.size(stor16)
            staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
            mem[128] = stor17
            if stor17 == wantAddress:
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[160] = stor17
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
        stor18 = 0x9fad24f572045c7869117160a571b2e50b10d068
        require ext_code.size(0x9fad24f572045c7869117160a571b2e50b10d068)
        staticcall 0x9fad24f572045c7869117160a571b2e50b10d068.getAddressesProvider() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor21 = ext_call.return_data[12 len 20]
        require ext_code.size(ext_call.return_data[12 len 20])
        staticcall ext_call.return_data[12 len 20].getPriceOracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor19 = ext_call.return_data[12 len 20]
        protocolDataProviderAddress = 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3
        require ext_code.size(stor18)
        staticcall stor18.getReserveData(address arg1) with:
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
        stor18 = 0x9fad24f572045c7869117160a571b2e50b10d068
        require ext_code.size(0x9fad24f572045c7869117160a571b2e50b10d068)
        staticcall 0x9fad24f572045c7869117160a571b2e50b10d068.getAddressesProvider() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor21 = ext_call.return_data[12 len 20]
        require ext_code.size(ext_call.return_data[12 len 20])
        staticcall ext_call.return_data[12 len 20].getPriceOracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor19 = ext_call.return_data[12 len 20]
        protocolDataProviderAddress = 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3
        require ext_code.size(stor18)
        staticcall stor18.getReserveData(address arg1) with:
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
    stor16 = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor17 = ext_call.return_data[12 len 20]
    require ext_code.size(wantAddress)
    call wantAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor18, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xd8321aa83fb0a4ecd6348d4577431310a6e0814d)
    call 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor16, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    require ext_code.size(stor18)
    staticcall stor18.getReserveData(address arg1) with:
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
        if stor17 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
            mem[(13 * ceil32(return_data.size)) + 992] = 2
            mem[(13 * ceil32(return_data.size)) + 1024] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            require stor17 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
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
            require ext_code.size(stor16)
            staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                if 9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / mem[(14 * ceil32(return_data.size)) + 1152] != 8760 * 24 * 3600:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152]:
                if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] / 10^9)
                if 9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] / 10^9)
            if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return ((9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
        if stor17 == wantAddress:
            mem[(13 * ceil32(return_data.size)) + 992] = 2
            mem[(13 * ceil32(return_data.size)) + 1024] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            require stor17 == wantAddress
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
            require ext_code.size(stor16)
            staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                if 9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / mem[(14 * ceil32(return_data.size)) + 1152] != 8760 * 24 * 3600:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152]:
                if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] / 10^9)
                if 9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] / 10^9)
            if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return ((9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
        mem[(13 * ceil32(return_data.size)) + 992] = 3
        mem[(13 * ceil32(return_data.size)) + 1024 len 96] = call.data[calldata.size len 96]
        mem[(13 * ceil32(return_data.size)) + 1024] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
        if stor17 == wantAddress:
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
            require ext_code.size(stor16)
            staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
            mem[(13 * ceil32(return_data.size)) + 1056] = stor17
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
            require ext_code.size(stor16)
            staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
        if stor17 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
            mem[(13 * ceil32(return_data.size)) + 992] = 2
            mem[(13 * ceil32(return_data.size)) + 1024] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            require stor17 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
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
            require ext_code.size(stor16)
            staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                if 9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / mem[(14 * ceil32(return_data.size)) + 1152] != 8760 * 24 * 3600:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152]:
                if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] / 10^9)
                if 9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] / 10^9)
            if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return ((9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
        if stor17 == wantAddress:
            mem[(13 * ceil32(return_data.size)) + 992] = 2
            mem[(13 * ceil32(return_data.size)) + 1024] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            require stor17 == wantAddress
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
            require ext_code.size(stor16)
            staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                if 9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / mem[(14 * ceil32(return_data.size)) + 1152] != 8760 * 24 * 3600:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152]:
                if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] / 10^9)
                if 9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
            if 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
                if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] / 10^9)
            if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return ((9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1152] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
        mem[(13 * ceil32(return_data.size)) + 992] = 3
        mem[(13 * ceil32(return_data.size)) + 1024 len 96] = call.data[calldata.size len 96]
        mem[(13 * ceil32(return_data.size)) + 1024] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
        if stor17 == wantAddress:
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
            require ext_code.size(stor16)
            staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
            mem[(13 * ceil32(return_data.size)) + 1056] = stor17
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
            require ext_code.size(stor16)
            staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
        if 9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
            revert with 0, 'SafeMath: multiplication overflow'
        if (9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
            revert with 0, 'SafeMath: addition overflow'
        return ((9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
    if 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / mem[(14 * ceil32(return_data.size)) + 1216] != 8760 * 24 * 3600:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216]:
        if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
            if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] / 10^9)
        if 9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
            revert with 0, 'SafeMath: multiplication overflow'
        if (9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
            revert with 0, 'SafeMath: addition overflow'
        return ((9500 * 0 / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
    if 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / 8760 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if not 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0]:
        if ext_call.return_data[0] / 10^9 < ext_call.return_data[0] / 10^9:
            revert with 0, 'SafeMath: addition overflow'
        return (ext_call.return_data[0] / 10^9)
    if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] != 9500:
        revert with 0, 'SafeMath: multiplication overflow'
    if (9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9) < ext_call.return_data[0] / 10^9:
        revert with 0, 'SafeMath: addition overflow'
    return ((9500 * 8760 * 10^18 * 24 * 3600 * mem[(14 * ceil32(return_data.size)) + 1216] / ext_call.return_data[64] + ext_call.return_data[32] + arg1 + ext_call.return_data[0] / 10000) + (ext_call.return_data[0] / 10^9))
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
            if stor17 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor17 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            if stor17 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor17 == wantAddress
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            mem[(8 * ceil32(return_data.size)) + 160] = 3
            mem[(8 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
            mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            if stor17 == wantAddress:
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[(8 * ceil32(return_data.size)) + 224] = stor17
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
            if stor17 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor17 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            if stor17 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor17 == wantAddress
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            mem[(8 * ceil32(return_data.size)) + 160] = 3
            mem[(8 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
            mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            if stor17 == wantAddress:
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[(8 * ceil32(return_data.size)) + 224] = stor17
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
            if stor17 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor17 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            if stor17 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor17 == wantAddress
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            mem[(8 * ceil32(return_data.size)) + 160] = 3
            mem[(8 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
            mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            if stor17 == wantAddress:
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[(8 * ceil32(return_data.size)) + 224] = stor17
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
            if stor17 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor17 == 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            if stor17 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 160] = 2
                mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
                require stor17 == wantAddress
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / mem[(10 * ceil32(return_data.size)) + 320] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320]:
                    if not arg1:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / arg1:
                        return 0
                    if 9500 * 0 / arg1 / 0 / arg1 != 9500:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9500 * 0 / arg1 / 10000)
                if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1:
                    return 0
                if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 != 9500:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 320] / arg1 / 10000)
            mem[(8 * ceil32(return_data.size)) + 160] = 3
            mem[(8 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
            mem[(8 * ceil32(return_data.size)) + 192] = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d
            if stor17 == wantAddress:
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[(8 * ceil32(return_data.size)) + 224] = stor17
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
                require ext_code.size(stor16)
                staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
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
        if 9500 * 0 / arg1 / 0 / arg1 != 9500:
            revert with 0, 'SafeMath: multiplication overflow'
        return (9500 * 0 / arg1 / 10000)
    if 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] / mem[(10 * ceil32(return_data.size)) + 384] != 8760 * 24 * 3600:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384]:
        if not arg1:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / arg1:
            return 0
        if 9500 * 0 / arg1 / 0 / arg1 != 9500:
            revert with 0, 'SafeMath: multiplication overflow'
        return (9500 * 0 / arg1 / 10000)
    if 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] / 8760 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        revert with 0, 'SafeMath: division by zero', 0
    if not 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] / arg1:
        return 0
    if 9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] / arg1 / 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] / arg1 != 9500:
        revert with 0, 'SafeMath: multiplication overflow'
    return (9500 * 8760 * 10^18 * 24 * 3600 * mem[(10 * ceil32(return_data.size)) + 384] / arg1 / 10000)
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
    staticcall dTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = (4 * ceil32(return_data.size)) + 160
    mem[(4 * ceil32(return_data.size)) + 96] = 30
    mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_8d01f0ba:
        mem[(4 * ceil32(return_data.size)) + 160] = 0xbf92857c00000000000000000000000000000000000000000000000000000000
        mem[var153001] = this.address
        require ext_code.size(stor18)
        staticcall stor18.mem[var157003 len 4] with:
                gas gas_remaining wei
               args mem[var157003 + 4 len var157004 - 4]
        mem[var157005 len 192] = ext_call.return_data[0 len 192]
        if ext_call.success:
            mem[64] = (6 * ceil32(return_data.size)) + 160
            require var161002 - var161001 >= 192
            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
            require ext_code.size(stor19)
            staticcall stor19.getAssetPrice(address arg1) with:
                    gas gas_remaining wei
                   args wantAddress
            mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            s = var165004
            while ext_call.success:
                _6489 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6490 = mem[_6489]
                if not s:
                    _6492 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6492] = 26
                    mem[_6492 + 32] = 'SafeMath: division by zero'
                    if not _6490:
                        _6495 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6495 + 68] = mem[idx + _6492 + 32]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        mem[_6495 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6495 + -mem[64] + 100
                    if not 0 / _6490:
                        _6507 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6507] = 26
                        mem[_6507 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6581 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6589 = mem[_6581]
                        _6597 = mem[64]
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _6589
                        _6601 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_6601 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_6601 + 36 len 28]
                        mem[64] = _6597 + 164
                        mem[_6597 + 100] = 32
                        mem[_6597 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        _6654 = mem[_6601]
                        idx = 0
                        while idx < _6654:
                            mem[idx + _6597 + 164] = mem[idx + _6601 + 32]
                            mem[_6597 + 164] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[_6597 + 168 len (6 * ceil32(return_data.size)) + -_6597 + 28]
                            mem[_6597 + 164] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        if ceil32(_6654) <= _6654:
                            call wantAddress.mem[_6597 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_6597 + 168 len _6654 - 4]
                            if not return_data.size:
                                if ext_call.success:
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_6597 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6597 + 168] = 32
                                _7319 = mem[_6597 + 100]
                                mem[_6597 + 200] = mem[_6597 + 100]
                                idx = 0
                                while idx < _7319:
                                    mem[idx + _6597 + 232] = mem[idx + _6597 + 132]
                                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                                    require ext_code.size(stor19)
                                    staticcall stor19.getAssetPrice(address arg1) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_7319) > _7319:
                                    mem[_7319 + _6597 + 232] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_7319) + _6597 + -mem[64] + 232
                            mem[_6597 + 164] = return_data.size
                            mem[_6597 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_6597 + 196] == bool(mem[_6597 + 196])
                                    if not mem[_6597 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6597 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6597 + ceil32(return_data.size) + 169] = 32
                            _7320 = mem[_6597 + 100]
                            mem[_6597 + ceil32(return_data.size) + 201] = mem[_6597 + 100]
                            idx = 0
                            while idx < _7320:
                                mem[idx + _6597 + ceil32(return_data.size) + 233] = mem[idx + _6597 + 132]
                                mem[_6597 + ceil32(return_data.size) + 165] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[_6597 + ceil32(return_data.size) + 169 len (6 * ceil32(return_data.size)) + -_6597 + -ceil32(return_data.size) + 27]
                                mem[_6597 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if ceil32(_7320) > _7320:
                                mem[_7320 + _6597 + ceil32(return_data.size) + 233] = 0
                            revert with memory
                              from _6597 + ceil32(return_data.size) + 165
                               len ceil32(_7320) + 68
                        mem[_6654 + _6597 + 164] = 0
                        call wantAddress.mem[_6597 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_6597 + 168 len _6654 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_6597 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6597 + 168] = 32
                            _7321 = mem[_6597 + 100]
                            mem[_6597 + 200] = mem[_6597 + 100]
                            idx = 0
                            while idx < _7321:
                                mem[idx + _6597 + 232] = mem[idx + _6597 + 132]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if ceil32(_7321) > _7321:
                                mem[_7321 + _6597 + 232] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_7321) + _6597 + -mem[64] + 232
                        mem[_6597 + 164] = return_data.size
                        mem[_6597 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6597 + 196] == bool(mem[_6597 + 196])
                                if not mem[_6597 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6597 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6597 + ceil32(return_data.size) + 169] = 32
                        _7322 = mem[_6597 + 100]
                        mem[_6597 + ceil32(return_data.size) + 201] = mem[_6597 + 100]
                        idx = 0
                        while idx < _7322:
                            mem[idx + _6597 + ceil32(return_data.size) + 233] = mem[idx + _6597 + 132]
                            mem[_6597 + ceil32(return_data.size) + 165] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[_6597 + ceil32(return_data.size) + 169 len (6 * ceil32(return_data.size)) + -_6597 + -ceil32(return_data.size) + 27]
                            mem[_6597 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        if ceil32(_7322) > _7322:
                            mem[_7322 + _6597 + ceil32(return_data.size) + 233] = 0
                        revert with memory
                          from _6597 + ceil32(return_data.size) + 165
                           len ceil32(_7322) + 68
                    if 8261 * 0 / _6490 / 0 / _6490 != 8261:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _6509 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6509] = 26
                    mem[_6509 + 32] = 'SafeMath: division by zero'
                    if 8261 * 0 / _6490 / 10000 >= 0:
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6585 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6593 = mem[_6585]
                        _6599 = mem[64]
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _6593
                        _6605 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_6605 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_6605 + 36 len 28]
                        mem[64] = _6599 + 164
                        mem[_6599 + 100] = 32
                        mem[_6599 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        _6661 = mem[_6605]
                        idx = 0
                        while idx < _6661:
                            mem[idx + _6599 + 164] = mem[idx + _6605 + 32]
                            mem[_6599 + 164] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[_6599 + 168 len (6 * ceil32(return_data.size)) + -_6599 + 28]
                            mem[_6599 + 164] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        if ceil32(_6661) <= _6661:
                            call wantAddress.mem[_6599 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_6599 + 168 len _6661 - 4]
                            if not return_data.size:
                                if ext_call.success:
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_6599 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6599 + 168] = 32
                                _7315 = mem[_6599 + 100]
                                mem[_6599 + 200] = mem[_6599 + 100]
                                idx = 0
                                while idx < _7315:
                                    mem[idx + _6599 + 232] = mem[idx + _6599 + 132]
                                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                                    require ext_code.size(stor19)
                                    staticcall stor19.getAssetPrice(address arg1) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_7315) > _7315:
                                    mem[_7315 + _6599 + 232] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_7315) + _6599 + -mem[64] + 232
                            mem[_6599 + 164] = return_data.size
                            mem[_6599 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_6599 + 196] == bool(mem[_6599 + 196])
                                    if not mem[_6599 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6599 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6599 + ceil32(return_data.size) + 169] = 32
                            _7316 = mem[_6599 + 100]
                            mem[_6599 + ceil32(return_data.size) + 201] = mem[_6599 + 100]
                            idx = 0
                            while idx < _7316:
                                mem[idx + _6599 + ceil32(return_data.size) + 233] = mem[idx + _6599 + 132]
                                mem[_6599 + ceil32(return_data.size) + 165] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[_6599 + ceil32(return_data.size) + 169 len (6 * ceil32(return_data.size)) + -_6599 + -ceil32(return_data.size) + 27]
                                mem[_6599 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if ceil32(_7316) > _7316:
                                mem[_7316 + _6599 + ceil32(return_data.size) + 233] = 0
                            revert with memory
                              from _6599 + ceil32(return_data.size) + 165
                               len ceil32(_7316) + 68
                        mem[_6661 + _6599 + 164] = 0
                        call wantAddress.mem[_6599 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_6599 + 168 len _6661 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_6599 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6599 + 168] = 32
                            _7317 = mem[_6599 + 100]
                            mem[_6599 + 200] = mem[_6599 + 100]
                            idx = 0
                            while idx < _7317:
                                mem[idx + _6599 + 232] = mem[idx + _6599 + 132]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if ceil32(_7317) > _7317:
                                mem[_7317 + _6599 + 232] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_7317) + _6599 + -mem[64] + 232
                        mem[_6599 + 164] = return_data.size
                        mem[_6599 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6599 + 196] == bool(mem[_6599 + 196])
                                if not mem[_6599 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6599 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6599 + ceil32(return_data.size) + 169] = 32
                        _7318 = mem[_6599 + 100]
                        mem[_6599 + ceil32(return_data.size) + 201] = mem[_6599 + 100]
                        idx = 0
                        while idx < _7318:
                            mem[idx + _6599 + ceil32(return_data.size) + 233] = mem[idx + _6599 + 132]
                            mem[_6599 + ceil32(return_data.size) + 165] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[_6599 + ceil32(return_data.size) + 169 len (6 * ceil32(return_data.size)) + -_6599 + -ceil32(return_data.size) + 27]
                            mem[_6599 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        if ceil32(_7318) > _7318:
                            mem[_7318 + _6599 + ceil32(return_data.size) + 233] = 0
                        revert with memory
                          from _6599 + ceil32(return_data.size) + 165
                           len ceil32(_7318) + 68
                    require ext_code.size(stor18)
                    staticcall stor18.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6538 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    _6555 = mem[_6538 + 64]
                    mem[mem[64] + 4] = wantAddress
                    require ext_code.size(stor19)
                    staticcall stor19.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args wantAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6586 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6594 = mem[_6586]
                    if not _6555:
                        _6619 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6619] = 26
                        mem[_6619 + 32] = 'SafeMath: division by zero'
                        if not _6594:
                            _6631 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6631 + 68] = mem[idx + _6619 + 32]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            mem[_6631 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6631 + -mem[64] + 100
                        if not 0 / _6594:
                            _6706 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6706] = 26
                            mem[_6706 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stor18)
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            staticcall stor18.getUserAccountData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7098 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 192
                            _7126 = mem[_7098 + 64]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _7126
                            continue 
                        if 8261 * 0 / _6594 / 0 / _6594 != 8261:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _6722 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6722] = 26
                        mem[_6722 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 0 / _6594 / 10000, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 0 / _6594 / 10000, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7106 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _7169 = mem[_7106 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _7169
                        continue 
                    if 10^18 * _6555 / _6555 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _6625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6625] = 26
                    mem[_6625 + 32] = 'SafeMath: division by zero'
                    if not _6594:
                        _6637 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6637 + 68] = mem[idx + _6625 + 32]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        mem[_6637 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6637 + -mem[64] + 100
                    if not 10^18 * _6555 / _6594:
                        _6721 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6721] = 26
                        mem[_6721 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 0, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7105 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _7163 = mem[_7105 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _7163
                        continue 
                    if 8261 * 10^18 * _6555 / _6594 / 10^18 * _6555 / _6594 != 8261:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _6739 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6739] = 26
                    mem[_6739 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(stor18)
                    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, 8261 * 10^18 * _6555 / _6594 / 10000, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args wantAddress, 8261 * 10^18 * _6555 / _6594 / 10000, 2, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    staticcall stor18.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7123 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    _7199 = mem[_7123 + 64]
                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                    require ext_code.size(stor19)
                    staticcall stor19.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _7199
                    continue 
                if 10^18 * s / s != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _6493 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6493] = 26
                mem[_6493 + 32] = 'SafeMath: division by zero'
                if not _6490:
                    _6496 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6496 + 68] = mem[idx + _6493 + 32]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 32
                        continue 
                    mem[_6496 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6496 + -mem[64] + 100
                if not 10^18 * s / _6490:
                    _6508 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6508] = 26
                    mem[_6508 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(stor18)
                    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6583 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6591 = mem[_6583]
                    _6598 = mem[64]
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = _6591
                    _6603 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_6603 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_6603 + 36 len 28]
                    mem[64] = _6598 + 164
                    mem[_6598 + 100] = 32
                    mem[_6598 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _6659 = mem[_6603]
                    idx = 0
                    while idx < _6659:
                        mem[idx + _6598 + 164] = mem[idx + _6603 + 32]
                        mem[_6598 + 164] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[_6598 + 168 len (6 * ceil32(return_data.size)) + -_6598 + 28]
                        mem[_6598 + 164] = ext_call.return_data[0]
                        idx = idx + 32
                        continue 
                    if ceil32(_6659) <= _6659:
                        call wantAddress.mem[_6598 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_6598 + 168 len _6659 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_6598 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6598 + 168] = 32
                            _7311 = mem[_6598 + 100]
                            mem[_6598 + 200] = mem[_6598 + 100]
                            idx = 0
                            while idx < _7311:
                                mem[idx + _6598 + 232] = mem[idx + _6598 + 132]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if ceil32(_7311) > _7311:
                                mem[_7311 + _6598 + 232] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_7311) + _6598 + -mem[64] + 232
                        mem[_6598 + 164] = return_data.size
                        mem[_6598 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6598 + 196] == bool(mem[_6598 + 196])
                                if not mem[_6598 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6598 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6598 + ceil32(return_data.size) + 169] = 32
                        _7312 = mem[_6598 + 100]
                        mem[_6598 + ceil32(return_data.size) + 201] = mem[_6598 + 100]
                        idx = 0
                        while idx < _7312:
                            mem[idx + _6598 + ceil32(return_data.size) + 233] = mem[idx + _6598 + 132]
                            mem[_6598 + ceil32(return_data.size) + 165] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[_6598 + ceil32(return_data.size) + 169 len (6 * ceil32(return_data.size)) + -_6598 + -ceil32(return_data.size) + 27]
                            mem[_6598 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        if ceil32(_7312) > _7312:
                            mem[_7312 + _6598 + ceil32(return_data.size) + 233] = 0
                        revert with memory
                          from _6598 + ceil32(return_data.size) + 165
                           len ceil32(_7312) + 68
                    mem[_6659 + _6598 + 164] = 0
                    call wantAddress.mem[_6598 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_6598 + 168 len _6659 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_6598 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6598 + 168] = 32
                        _7313 = mem[_6598 + 100]
                        mem[_6598 + 200] = mem[_6598 + 100]
                        idx = 0
                        while idx < _7313:
                            mem[idx + _6598 + 232] = mem[idx + _6598 + 132]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        if ceil32(_7313) > _7313:
                            mem[_7313 + _6598 + 232] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_7313) + _6598 + -mem[64] + 232
                    mem[_6598 + 164] = return_data.size
                    mem[_6598 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6598 + 196] == bool(mem[_6598 + 196])
                            if not mem[_6598 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_6598 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6598 + ceil32(return_data.size) + 169] = 32
                    _7314 = mem[_6598 + 100]
                    mem[_6598 + ceil32(return_data.size) + 201] = mem[_6598 + 100]
                    idx = 0
                    while idx < _7314:
                        mem[idx + _6598 + ceil32(return_data.size) + 233] = mem[idx + _6598 + 132]
                        mem[_6598 + ceil32(return_data.size) + 165] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[_6598 + ceil32(return_data.size) + 169 len (6 * ceil32(return_data.size)) + -_6598 + -ceil32(return_data.size) + 27]
                        mem[_6598 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        idx = idx + 32
                        continue 
                    if ceil32(_7314) > _7314:
                        mem[_7314 + _6598 + ceil32(return_data.size) + 233] = 0
                    revert with memory
                      from _6598 + ceil32(return_data.size) + 165
                       len ceil32(_7314) + 68
                if 8261 * 10^18 * s / _6490 / 10^18 * s / _6490 != 8261:
                    revert with 0, 'SafeMath: multiplication overflow'
                _6511 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6511] = 26
                mem[_6511 + 32] = 'SafeMath: division by zero'
                if 8261 * 10^18 * s / _6490 / 10000 >= 0:
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(stor18)
                    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6587 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6595 = mem[_6587]
                    _6600 = mem[64]
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = _6595
                    _6609 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_6609 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_6609 + 36 len 28]
                    mem[64] = _6600 + 164
                    mem[_6600 + 100] = 32
                    mem[_6600 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _6666 = mem[_6609]
                    idx = 0
                    while idx < _6666:
                        mem[idx + _6600 + 164] = mem[idx + _6609 + 32]
                        mem[_6600 + 164] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[_6600 + 168 len (6 * ceil32(return_data.size)) + -_6600 + 28]
                        mem[_6600 + 164] = ext_call.return_data[0]
                        idx = idx + 32
                        continue 
                    if ceil32(_6666) <= _6666:
                        call wantAddress.mem[_6600 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_6600 + 168 len _6666 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_6600 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6600 + 168] = 32
                            _7307 = mem[_6600 + 100]
                            mem[_6600 + 200] = mem[_6600 + 100]
                            idx = 0
                            while idx < _7307:
                                mem[idx + _6600 + 232] = mem[idx + _6600 + 132]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if ceil32(_7307) > _7307:
                                mem[_7307 + _6600 + 232] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_7307) + _6600 + -mem[64] + 232
                        mem[_6600 + 164] = return_data.size
                        mem[_6600 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6600 + 196] == bool(mem[_6600 + 196])
                                if not mem[_6600 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6600 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6600 + ceil32(return_data.size) + 169] = 32
                        _7308 = mem[_6600 + 100]
                        mem[_6600 + ceil32(return_data.size) + 201] = mem[_6600 + 100]
                        idx = 0
                        while idx < _7308:
                            mem[idx + _6600 + ceil32(return_data.size) + 233] = mem[idx + _6600 + 132]
                            mem[_6600 + ceil32(return_data.size) + 165] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[_6600 + ceil32(return_data.size) + 169 len (6 * ceil32(return_data.size)) + -_6600 + -ceil32(return_data.size) + 27]
                            mem[_6600 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        if ceil32(_7308) > _7308:
                            mem[_7308 + _6600 + ceil32(return_data.size) + 233] = 0
                        revert with memory
                          from _6600 + ceil32(return_data.size) + 165
                           len ceil32(_7308) + 68
                    mem[_6666 + _6600 + 164] = 0
                    call wantAddress.mem[_6600 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_6600 + 168 len _6666 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_6600 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6600 + 168] = 32
                        _7309 = mem[_6600 + 100]
                        mem[_6600 + 200] = mem[_6600 + 100]
                        idx = 0
                        while idx < _7309:
                            mem[idx + _6600 + 232] = mem[idx + _6600 + 132]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        if ceil32(_7309) > _7309:
                            mem[_7309 + _6600 + 232] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_7309) + _6600 + -mem[64] + 232
                    mem[_6600 + 164] = return_data.size
                    mem[_6600 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6600 + 196] == bool(mem[_6600 + 196])
                            if not mem[_6600 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_6600 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6600 + ceil32(return_data.size) + 169] = 32
                    _7310 = mem[_6600 + 100]
                    mem[_6600 + ceil32(return_data.size) + 201] = mem[_6600 + 100]
                    idx = 0
                    while idx < _7310:
                        mem[idx + _6600 + ceil32(return_data.size) + 233] = mem[idx + _6600 + 132]
                        mem[_6600 + ceil32(return_data.size) + 165] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[_6600 + ceil32(return_data.size) + 169 len (6 * ceil32(return_data.size)) + -_6600 + -ceil32(return_data.size) + 27]
                        mem[_6600 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        idx = idx + 32
                        continue 
                    if ceil32(_7310) > _7310:
                        mem[_7310 + _6600 + ceil32(return_data.size) + 233] = 0
                    revert with memory
                      from _6600 + ceil32(return_data.size) + 165
                       len ceil32(_7310) + 68
                require ext_code.size(stor18)
                staticcall stor18.getUserAccountData(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6540 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _6561 = mem[_6540 + 64]
                mem[mem[64] + 4] = wantAddress
                require ext_code.size(stor19)
                staticcall stor19.getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args wantAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6588 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6596 = mem[_6588]
                if not _6561:
                    _6622 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6622] = 26
                    mem[_6622 + 32] = 'SafeMath: division by zero'
                    if not _6596:
                        _6634 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6634 + 68] = mem[idx + _6622 + 32]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        mem[_6634 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6634 + -mem[64] + 100
                    if not 0 / _6596:
                        _6713 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6713] = 26
                        mem[_6713 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 0, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7102 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _7145 = mem[_7102 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _7145
                        continue 
                    if 8261 * 0 / _6596 / 0 / _6596 != 8261:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _6731 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6731] = 26
                    mem[_6731 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(stor18)
                    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, 8261 * 0 / _6596 / 10000, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args wantAddress, 8261 * 0 / _6596 / 10000, 2, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    staticcall stor18.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    _7187 = mem[_7115 + 64]
                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                    require ext_code.size(stor19)
                    staticcall stor19.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _7187
                    continue 
                if 10^18 * _6561 / _6561 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _6628 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6628] = 26
                mem[_6628 + 32] = 'SafeMath: division by zero'
                if not _6596:
                    _6640 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6640 + 68] = mem[idx + _6628 + 32]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 32
                        continue 
                    mem[_6640 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6640 + -mem[64] + 100
                if not 10^18 * _6561 / _6596:
                    _6730 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6730] = 26
                    mem[_6730 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(stor18)
                    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args wantAddress, 0, 2, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    staticcall stor18.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    _7181 = mem[_7114 + 64]
                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                    require ext_code.size(stor19)
                    staticcall stor19.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _7181
                    continue 
                if 8261 * 10^18 * _6561 / _6596 / 10^18 * _6561 / _6596 != 8261:
                    revert with 0, 'SafeMath: multiplication overflow'
                _6743 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6743] = 26
                mem[_6743 + 32] = 'SafeMath: division by zero'
                require ext_code.size(stor18)
                call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, 8261 * 10^18 * _6561 / _6596 / 10000, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor18)
                call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args wantAddress, 8261 * 10^18 * _6561 / _6596 / 10000, 2, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor18)
                staticcall stor18.getUserAccountData(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7142 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _7205 = mem[_7142 + 64]
                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
                require ext_code.size(stor19)
                staticcall stor19.getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 192]
                mem[mem[64]] = ext_call.return_data[0]
                s = _7205
                continue 
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 164] = wantAddress
    mem[(4 * ceil32(return_data.size)) + 196] = 0
    mem[(4 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(stor18)
    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args wantAddress, 0, this.address
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 164] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
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
    mem[(7 * ceil32(return_data.size)) + 192 len 4] = transfer(address arg1, uint256 arg2)
    mem[(7 * ceil32(return_data.size)) + 260] = 32
    mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(7 * ceil32(return_data.size)) + 324 len 96] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, ext_call.return_data[0], 0
    mem[(7 * ceil32(return_data.size)) + 392] = 0
    call wantAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
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
}

function sub_0e2bfca6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if msg.sender == strategistAddress:
        if not sub_8d01f0ba:
            require ext_code.size(stor18)
            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, arg1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        mem[96] = 0xbf92857c00000000000000000000000000000000000000000000000000000000
        mem[var115001] = this.address
        require ext_code.size(stor18)
        staticcall stor18.mem[var119003 len 4] with:
                gas gas_remaining wei
               args mem[var119003 + 4 len var119004 - 4]
        mem[var119005 len 192] = ext_call.return_data[0 len 192]
        if ext_call.success:
            mem[64] = ceil32(return_data.size) + 96
            require var123002 - var123001 >= 192
            mem[ceil32(return_data.size) + 100] = wantAddress
            require ext_code.size(stor19)
            staticcall stor19.getAssetPrice(address arg1) with:
                    gas gas_remaining wei
                   args wantAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            s = var127004
            while ext_call.success:
                _7317 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7319 = mem[_7317]
                if not s:
                    _7323 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7323] = 26
                    mem[_7323 + 32] = 'SafeMath: division by zero'
                    if not _7319:
                        _7329 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7329 + 68] = mem[idx + _7323 + 32]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        mem[_7329 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7329 + -mem[64] + 100
                    if not 0 / _7319:
                        _7352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7352] = 26
                        mem[_7352 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        if 0 >= arg1:
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, arg1, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7404 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _7421 = mem[_7404 + 64]
                        mem[mem[64] + 4] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args wantAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7484 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7492 = mem[_7484]
                        if not _7421:
                            _7505 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7505] = 26
                            mem[_7505 + 32] = 'SafeMath: division by zero'
                            if not _7492:
                                _7524 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _7524 + 68] = mem[idx + _7505 + 32]
                                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 100] = wantAddress
                                    require ext_code.size(stor19)
                                    staticcall stor19.getAssetPrice(address arg1) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                mem[_7524 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _7524 + -mem[64] + 100
                            if not 0 / _7492:
                                _7608 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7608] = 26
                                mem[_7608 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(stor18)
                                call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args wantAddress, 0, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(stor18)
                                call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args wantAddress, 0, 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(stor18)
                                staticcall stor18.getUserAccountData(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7980 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 192
                                _8014 = mem[_7980 + 64]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 100] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                s = _8014
                                continue 
                            if 8261 * 0 / _7492 / 0 / _7492 != 8261:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7627 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7627] = 26
                            mem[_7627 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stor18)
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, 8261 * 0 / _7492 / 10000, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args wantAddress, 8261 * 0 / _7492 / 10000, 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            staticcall stor18.getUserAccountData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7996 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 192
                            _8055 = mem[_7996 + 64]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _8055
                            continue 
                        if 10^18 * _7421 / _7421 != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7512 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7512] = 26
                        mem[_7512 + 32] = 'SafeMath: division by zero'
                        if not _7492:
                            _7535 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7535 + 68] = mem[idx + _7512 + 32]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 100] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            mem[_7535 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _7535 + -mem[64] + 100
                        if not 10^18 * _7421 / _7492:
                            _7626 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7626] = 26
                            mem[_7626 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stor18)
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            staticcall stor18.getUserAccountData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7995 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 192
                            _8049 = mem[_7995 + 64]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _8049
                            continue 
                        if 8261 * 10^18 * _7421 / _7492 / 10^18 * _7421 / _7492 != 8261:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7647 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7647] = 26
                        mem[_7647 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 10^18 * _7421 / _7492 / 10000, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 10^18 * _7421 / _7492 / 10000, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8011 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _8120 = mem[_8011 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _8120
                        continue 
                    if 8261 * 0 / _7319 / 0 / _7319 != 8261:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7356] = 26
                    mem[_7356 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(stor18)
                    if 8261 * 0 / _7319 / 10000 >= arg1:
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, arg1, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    staticcall stor18.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    _7441 = mem[_7412 + 64]
                    mem[mem[64] + 4] = wantAddress
                    require ext_code.size(stor19)
                    staticcall stor19.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args wantAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7488 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7496 = mem[_7488]
                    if not _7441:
                        _7511 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7511] = 26
                        mem[_7511 + 32] = 'SafeMath: division by zero'
                        if not _7496:
                            _7534 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7534 + 68] = mem[idx + _7511 + 32]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 100] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            mem[_7534 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _7534 + -mem[64] + 100
                        if not 0 / _7496:
                            _7625 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7625] = 26
                            mem[_7625 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stor18)
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            staticcall stor18.getUserAccountData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7994 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 192
                            _8043 = mem[_7994 + 64]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _8043
                            continue 
                        if 8261 * 0 / _7496 / 0 / _7496 != 8261:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7645 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7645] = 26
                        mem[_7645 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 0 / _7496 / 10000, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 0 / _7496 / 10000, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8010 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _8114 = mem[_8010 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _8114
                        continue 
                    if 10^18 * _7441 / _7441 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7522 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7522] = 26
                    mem[_7522 + 32] = 'SafeMath: division by zero'
                    if not _7496:
                        _7546 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7546 + 68] = mem[idx + _7522 + 32]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        mem[_7546 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7546 + -mem[64] + 100
                    if not 10^18 * _7441 / _7496:
                        _7644 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7644] = 26
                        mem[_7644 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 0, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8009 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _8108 = mem[_8009 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _8108
                        continue 
                    if 8261 * 10^18 * _7441 / _7496 / 10^18 * _7441 / _7496 != 8261:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7664 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7664] = 26
                    mem[_7664 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(stor18)
                    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, 8261 * 10^18 * _7441 / _7496 / 10000, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args wantAddress, 8261 * 10^18 * _7441 / _7496 / 10000, 2, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    staticcall stor18.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    _8181 = mem[_8040 + 64]
                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = wantAddress
                    require ext_code.size(stor19)
                    staticcall stor19.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _8181
                    continue 
                if 10^18 * s / s != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _7325 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7325] = 26
                mem[_7325 + 32] = 'SafeMath: division by zero'
                if not _7319:
                    _7331 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7331 + 68] = mem[idx + _7325 + 32]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 32
                        continue 
                    mem[_7331 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _7331 + -mem[64] + 100
                if not 10^18 * s / _7319:
                    _7355 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7355] = 26
                    mem[_7355 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(stor18)
                    if 0 >= arg1:
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, arg1, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    staticcall stor18.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    _7435 = mem[_7410 + 64]
                    mem[mem[64] + 4] = wantAddress
                    require ext_code.size(stor19)
                    staticcall stor19.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args wantAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7487 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7495 = mem[_7487]
                    if not _7435:
                        _7510 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7510] = 26
                        mem[_7510 + 32] = 'SafeMath: division by zero'
                        if not _7495:
                            _7533 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7533 + 68] = mem[idx + _7510 + 32]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 100] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            mem[_7533 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _7533 + -mem[64] + 100
                        if not 0 / _7495:
                            _7623 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7623] = 26
                            mem[_7623 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stor18)
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            staticcall stor18.getUserAccountData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7992 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 192
                            _8036 = mem[_7992 + 64]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _8036
                            continue 
                        if 8261 * 0 / _7495 / 0 / _7495 != 8261:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7642 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7642] = 26
                        mem[_7642 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 0 / _7495 / 10000, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 0 / _7495 / 10000, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8008 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _8102 = mem[_8008 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _8102
                        continue 
                    if 10^18 * _7435 / _7435 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7520 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7520] = 26
                    mem[_7520 + 32] = 'SafeMath: division by zero'
                    if not _7495:
                        _7544 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7544 + 68] = mem[idx + _7520 + 32]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        mem[_7544 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7544 + -mem[64] + 100
                    if not 10^18 * _7435 / _7495:
                        _7641 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7641] = 26
                        mem[_7641 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 0, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8007 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _8096 = mem[_8007 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _8096
                        continue 
                    if 8261 * 10^18 * _7435 / _7495 / 10^18 * _7435 / _7495 != 8261:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7662 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7662] = 26
                    mem[_7662 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(stor18)
                    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, 8261 * 10^18 * _7435 / _7495 / 10000, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args wantAddress, 8261 * 10^18 * _7435 / _7495 / 10000, 2, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    staticcall stor18.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8033 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    _8175 = mem[_8033 + 64]
                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = wantAddress
                    require ext_code.size(stor19)
                    staticcall stor19.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _8175
                    continue 
                if 8261 * 10^18 * s / _7319 / 10^18 * s / _7319 != 8261:
                    revert with 0, 'SafeMath: multiplication overflow'
                _7361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7361] = 26
                mem[_7361 + 32] = 'SafeMath: division by zero'
                require ext_code.size(stor18)
                if 8261 * 10^18 * s / _7319 / 10000 >= arg1:
                    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, arg1, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                staticcall stor18.getUserAccountData(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _7459 = mem[_7418 + 64]
                mem[mem[64] + 4] = wantAddress
                require ext_code.size(stor19)
                staticcall stor19.getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args wantAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7491 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7499 = mem[_7491]
                if not _7459:
                    _7519 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7519] = 26
                    mem[_7519 + 32] = 'SafeMath: division by zero'
                    if not _7499:
                        _7543 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7543 + 68] = mem[idx + _7519 + 32]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        mem[_7543 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7543 + -mem[64] + 100
                    if not 0 / _7499:
                        _7640 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7640] = 26
                        mem[_7640 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 0, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8006 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _8090 = mem[_8006 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _8090
                        continue 
                    if 8261 * 0 / _7499 / 0 / _7499 != 8261:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7660 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7660] = 26
                    mem[_7660 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(stor18)
                    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, 8261 * 0 / _7499 / 10000, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args wantAddress, 8261 * 0 / _7499 / 10000, 2, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    staticcall stor18.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8032 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    _8169 = mem[_8032 + 64]
                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = wantAddress
                    require ext_code.size(stor19)
                    staticcall stor19.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _8169
                    continue 
                if 10^18 * _7459 / _7459 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _7531 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7531] = 26
                mem[_7531 + 32] = 'SafeMath: division by zero'
                if not _7499:
                    _7555 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7555 + 68] = mem[idx + _7531 + 32]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 32
                        continue 
                    mem[_7555 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _7555 + -mem[64] + 100
                if not 10^18 * _7459 / _7499:
                    _7659 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7659] = 26
                    mem[_7659 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(stor18)
                    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args wantAddress, 0, 2, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    staticcall stor18.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8031 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    _8163 = mem[_8031 + 64]
                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = wantAddress
                    require ext_code.size(stor19)
                    staticcall stor19.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _8163
                    continue 
                if 8261 * 10^18 * _7459 / _7499 / 10^18 * _7459 / _7499 != 8261:
                    revert with 0, 'SafeMath: multiplication overflow'
                _7673 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7673] = 26
                mem[_7673 + 32] = 'SafeMath: division by zero'
                require ext_code.size(stor18)
                call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, 8261 * 10^18 * _7459 / _7499 / 10000, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor18)
                call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args wantAddress, 8261 * 10^18 * _7459 / _7499 / 10000, 2, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor18)
                staticcall stor18.getUserAccountData(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8087 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _8211 = mem[_8087 + 64]
                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = wantAddress
                require ext_code.size(stor19)
                staticcall stor19.getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                mem[mem[64]] = ext_call.return_data[0]
                s = _8211
                continue 
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if ext_call.success:
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!authorized'
            if not sub_8d01f0ba:
                require ext_code.size(stor18)
                call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, arg1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            mem[ceil32(return_data.size) + 96] = 0xbf92857c00000000000000000000000000000000000000000000000000000000
            mem[var126001] = this.address
            require ext_code.size(stor18)
            staticcall stor18.mem[var130003 len 4] with:
                    gas gas_remaining wei
                   args mem[var130003 + 4 len var130004 - 4]
            mem[var130005 len 192] = ext_call.return_data[0 len 192]
            if ext_call.success:
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require var134002 - var134001 >= 192
                mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                require ext_code.size(stor19)
                staticcall stor19.getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args wantAddress
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                s = var138004
                while ext_call.success:
                    _7318 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7320 = mem[_7318]
                    if not s:
                        _7324 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7324] = 26
                        mem[_7324 + 32] = 'SafeMath: division by zero'
                        if not _7320:
                            _7330 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7330 + 68] = mem[idx + _7324 + 32]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            mem[_7330 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _7330 + -mem[64] + 100
                        if not 0 / _7320:
                            _7354 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7354] = 26
                            mem[_7354 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stor18)
                            if 0 >= arg1:
                                call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args wantAddress, arg1, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            staticcall stor18.getUserAccountData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7408 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 192
                            _7429 = mem[_7408 + 64]
                            mem[mem[64] + 4] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args wantAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7486 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7494 = mem[_7486]
                            if not _7429:
                                _7508 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7508] = 26
                                mem[_7508 + 32] = 'SafeMath: division by zero'
                                if not _7494:
                                    _7530 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _7530 + 68] = mem[idx + _7508 + 32]
                                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                        require ext_code.size(stor19)
                                        staticcall stor19.getAssetPrice(address arg1) with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        idx = idx + 32
                                        continue 
                                    mem[_7530 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _7530 + -mem[64] + 100
                                if not 0 / _7494:
                                    _7618 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7618] = 26
                                    mem[_7618 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(stor18)
                                    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args wantAddress, 0, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(stor18)
                                    call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                         gas gas_remaining wei
                                        args wantAddress, 0, 2, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(stor18)
                                    staticcall stor18.getUserAccountData(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7988 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 192
                                    _8027 = mem[_7988 + 64]
                                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                    require ext_code.size(stor19)
                                    staticcall stor19.getAssetPrice(address arg1) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    s = _8027
                                    continue 
                                if 8261 * 0 / _7494 / 0 / _7494 != 8261:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7637 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7637] = 26
                                mem[_7637 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(stor18)
                                call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args wantAddress, 8261 * 0 / _7494 / 10000, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(stor18)
                                call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args wantAddress, 8261 * 0 / _7494 / 10000, 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(stor18)
                                staticcall stor18.getUserAccountData(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8004 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 192
                                _8083 = mem[_8004 + 64]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                s = _8083
                                continue 
                            if 10^18 * _7429 / _7429 != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7517 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7517] = 26
                            mem[_7517 + 32] = 'SafeMath: division by zero'
                            if not _7494:
                                _7541 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _7541 + 68] = mem[idx + _7517 + 32]
                                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                    require ext_code.size(stor19)
                                    staticcall stor19.getAssetPrice(address arg1) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                mem[_7541 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _7541 + -mem[64] + 100
                            if not 10^18 * _7429 / _7494:
                                _7636 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7636] = 26
                                mem[_7636 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(stor18)
                                call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args wantAddress, 0, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(stor18)
                                call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args wantAddress, 0, 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(stor18)
                                staticcall stor18.getUserAccountData(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8003 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 192
                                _8077 = mem[_8003 + 64]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                s = _8077
                                continue 
                            if 8261 * 10^18 * _7429 / _7494 / 10^18 * _7429 / _7494 != 8261:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7657 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7657] = 26
                            mem[_7657 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stor18)
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, 8261 * 10^18 * _7429 / _7494 / 10000, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args wantAddress, 8261 * 10^18 * _7429 / _7494 / 10000, 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            staticcall stor18.getUserAccountData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8024 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 192
                            _8157 = mem[_8024 + 64]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _8157
                            continue 
                        if 8261 * 0 / _7320 / 0 / _7320 != 8261:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7359 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7359] = 26
                        mem[_7359 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        if 8261 * 0 / _7320 / 10000 >= arg1:
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, arg1, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7416 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _7453 = mem[_7416 + 64]
                        mem[mem[64] + 4] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args wantAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7490 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7498 = mem[_7490]
                        if not _7453:
                            _7516 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7516] = 26
                            mem[_7516 + 32] = 'SafeMath: division by zero'
                            if not _7498:
                                _7540 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _7540 + 68] = mem[idx + _7516 + 32]
                                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                    require ext_code.size(stor19)
                                    staticcall stor19.getAssetPrice(address arg1) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                mem[_7540 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _7540 + -mem[64] + 100
                            if not 0 / _7498:
                                _7635 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7635] = 26
                                mem[_7635 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(stor18)
                                call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args wantAddress, 0, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(stor18)
                                call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args wantAddress, 0, 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(stor18)
                                staticcall stor18.getUserAccountData(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8002 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 192
                                _8071 = mem[_8002 + 64]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                s = _8071
                                continue 
                            if 8261 * 0 / _7498 / 0 / _7498 != 8261:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7655 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7655] = 26
                            mem[_7655 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stor18)
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, 8261 * 0 / _7498 / 10000, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args wantAddress, 8261 * 0 / _7498 / 10000, 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            staticcall stor18.getUserAccountData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8023 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 192
                            _8151 = mem[_8023 + 64]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _8151
                            continue 
                        if 10^18 * _7453 / _7453 != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7528 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7528] = 26
                        mem[_7528 + 32] = 'SafeMath: division by zero'
                        if not _7498:
                            _7552 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7552 + 68] = mem[idx + _7528 + 32]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            mem[_7552 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _7552 + -mem[64] + 100
                        if not 10^18 * _7453 / _7498:
                            _7654 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7654] = 26
                            mem[_7654 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stor18)
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            staticcall stor18.getUserAccountData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8022 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 192
                            _8145 = mem[_8022 + 64]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _8145
                            continue 
                        if 8261 * 10^18 * _7453 / _7498 / 10^18 * _7453 / _7498 != 8261:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7671 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7671] = 26
                        mem[_7671 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 10^18 * _7453 / _7498 / 10000, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 10^18 * _7453 / _7498 / 10000, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8068 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _8205 = mem[_8068 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _8205
                        continue 
                    if 10^18 * s / s != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7327 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7327] = 26
                    mem[_7327 + 32] = 'SafeMath: division by zero'
                    if not _7320:
                        _7333 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7333 + 68] = mem[idx + _7327 + 32]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        mem[_7333 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7333 + -mem[64] + 100
                    if not 10^18 * s / _7320:
                        _7358 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7358] = 26
                        mem[_7358 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        if 0 >= arg1:
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, arg1, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7414 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _7447 = mem[_7414 + 64]
                        mem[mem[64] + 4] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args wantAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7489 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7497 = mem[_7489]
                        if not _7447:
                            _7515 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7515] = 26
                            mem[_7515 + 32] = 'SafeMath: division by zero'
                            if not _7497:
                                _7539 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _7539 + 68] = mem[idx + _7515 + 32]
                                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                    require ext_code.size(stor19)
                                    staticcall stor19.getAssetPrice(address arg1) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                mem[_7539 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _7539 + -mem[64] + 100
                            if not 0 / _7497:
                                _7633 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7633] = 26
                                mem[_7633 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(stor18)
                                call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args wantAddress, 0, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(stor18)
                                call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args wantAddress, 0, 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(stor18)
                                staticcall stor18.getUserAccountData(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8000 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 192
                                _8064 = mem[_8000 + 64]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                s = _8064
                                continue 
                            if 8261 * 0 / _7497 / 0 / _7497 != 8261:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7652 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7652] = 26
                            mem[_7652 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stor18)
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, 8261 * 0 / _7497 / 10000, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args wantAddress, 8261 * 0 / _7497 / 10000, 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            staticcall stor18.getUserAccountData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8021 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 192
                            _8139 = mem[_8021 + 64]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _8139
                            continue 
                        if 10^18 * _7447 / _7447 != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7526] = 26
                        mem[_7526 + 32] = 'SafeMath: division by zero'
                        if not _7497:
                            _7550 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7550 + 68] = mem[idx + _7526 + 32]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            mem[_7550 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _7550 + -mem[64] + 100
                        if not 10^18 * _7447 / _7497:
                            _7651 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7651] = 26
                            mem[_7651 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stor18)
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            staticcall stor18.getUserAccountData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8020 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 192
                            _8133 = mem[_8020 + 64]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _8133
                            continue 
                        if 8261 * 10^18 * _7447 / _7497 / 10^18 * _7447 / _7497 != 8261:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7669 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7669] = 26
                        mem[_7669 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 10^18 * _7447 / _7497 / 10000, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 10^18 * _7447 / _7497 / 10000, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8061 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _8199 = mem[_8061 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _8199
                        continue 
                    if 8261 * 10^18 * s / _7320 / 10^18 * s / _7320 != 8261:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7363] = 26
                    mem[_7363 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(stor18)
                    if 8261 * 10^18 * s / _7320 / 10000 >= arg1:
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, arg1, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    staticcall stor18.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    _7465 = mem[_7426 + 64]
                    mem[mem[64] + 4] = wantAddress
                    require ext_code.size(stor19)
                    staticcall stor19.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args wantAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7493 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7500 = mem[_7493]
                    if not _7465:
                        _7525 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7525] = 26
                        mem[_7525 + 32] = 'SafeMath: division by zero'
                        if not _7500:
                            _7549 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7549 + 68] = mem[idx + _7525 + 32]
                                mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                                require ext_code.size(stor19)
                                staticcall stor19.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            mem[_7549 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _7549 + -mem[64] + 100
                        if not 0 / _7500:
                            _7650 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7650] = 26
                            mem[_7650 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stor18)
                            call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args wantAddress, 0, 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(stor18)
                            staticcall stor18.getUserAccountData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8019 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 192
                            _8127 = mem[_8019 + 64]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _8127
                            continue 
                        if 8261 * 0 / _7500 / 0 / _7500 != 8261:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7667 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7667] = 26
                        mem[_7667 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 0 / _7500 / 10000, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 8261 * 0 / _7500 / 10000, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8060 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _8193 = mem[_8060 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _8193
                        continue 
                    if 10^18 * _7465 / _7465 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7537 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7537] = 26
                    mem[_7537 + 32] = 'SafeMath: division by zero'
                    if not _7500:
                        _7559 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7559 + 68] = mem[idx + _7537 + 32]
                            mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                            require ext_code.size(stor19)
                            staticcall stor19.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        mem[_7559 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7559 + -mem[64] + 100
                    if not 10^18 * _7465 / _7500:
                        _7666 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7666] = 26
                        mem[_7666 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stor18)
                        call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args wantAddress, 0, 2, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(stor18)
                        staticcall stor18.getUserAccountData(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8059 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _8187 = mem[_8059 + 64]
                        mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                        require ext_code.size(stor19)
                        staticcall stor19.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _8187
                        continue 
                    if 8261 * 10^18 * _7465 / _7500 / 10^18 * _7465 / _7500 != 8261:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7675 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7675] = 26
                    mem[_7675 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(stor18)
                    call stor18.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, 8261 * 10^18 * _7465 / _7500 / 10000, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args wantAddress, 8261 * 10^18 * _7465 / _7500 / 10000, 2, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    staticcall stor18.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8124 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    _8217 = mem[_8124 + 64]
                    mem[mem[64]] = 0xb3596f0700000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
                    require ext_code.size(stor19)
                    staticcall stor19.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _8217
                    continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
