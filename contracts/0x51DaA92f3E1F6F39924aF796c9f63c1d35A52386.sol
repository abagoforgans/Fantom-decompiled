contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const apiVersion = '', 0

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
bool stor11; offset 256
uint8 emergencyExit;
uint8 takeProfit; offset 168
uint8 sub_85ce5735; offset 176
uint128 stor11; offset 176
uint128 stor11; offset 168
address stor11;
address jointAddress; offset 8

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

function emergencyExit() payable {
    return bool(emergencyExit)
}

function doHealthCheck() payable {
    return bool(doHealthCheck)
}

function takeProfit() payable {
    return bool(takeProfit)
}

function sub_85ce5735(?) payable {
    return bool(sub_85ce5735)
}

function profitFactor() payable {
    return profitFactor
}

function minReportDelay() payable {
    return minReportDelay
}

function joint() payable {
    return jointAddress
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

function ethToWant(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return arg1
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

function estimatedTotalAssets() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setJoint(address arg1) payable {
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
    jointAddress = arg1
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

function setInvestWant(bool arg1) payable {
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
    Mask(80, 0, stor11.field_176) = Mask(80, 0, arg1)
}

function setTakeProfit(bool arg1) payable {
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
    Mask(88, 0, stor11.field_168) = Mask(88, 0, arg1)
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

function cloneProviderStrategy(address arg1, address arg2, address arg3, address arg4) payable {
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
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
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
    if not emergencyExit:
        if sub_85ce5735:
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                call wantAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor11.field_0), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(jointAddress)
            call jointAddress.adjustPosition() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
    require bool(ceil32(return_data.size) + 672 <= test266151307())
    if 0 == ext_call.return_data[32]:
        return 0
    if ext_call.return_data[160] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - ext_call.return_data[160] < minReportDelay:
        return 0
    if ext_call.return_data[160] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - ext_call.return_data[160] >= maxReportDelay:
        return 1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.debtOutstanding() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > debtThreshold:
        return 1
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if debtThreshold + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if debtThreshold + ext_call.return_data[0] < ext_call.return_data[192]:
        return 1
    if ext_call.return_data[0] <= ext_call.return_data[192]:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not profitFactor:
            return (0 < ext_call.return_data[0])
        if arg1 * profitFactor / profitFactor != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * profitFactor < ext_call.return_data[0])
    if ext_call.return_data[192] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.creditAvailable() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (2 * ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not profitFactor:
        return (0 < (2 * ext_call.return_data[0]) - ext_call.return_data[192])
    if arg1 * profitFactor / profitFactor != arg1:
        revert with 0, 'SafeMath: multiplication overflow'
    return (arg1 * profitFactor < (2 * ext_call.return_data[0]) - ext_call.return_data[192])
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
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = arg1
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
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
    takeProfit = 0
    sub_85ce5735 = 1
    Mask(80, 0, stor11.field_176) = 0
    stor11.field_256 % 1 = 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if vaultAddress != msg.sender:
        revert with 0, '!vault'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = arg1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call wantAddress with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) << 288)
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
        return 0
    mem[ceil32(return_data.size) + 96] = 30
    mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[ceil32(return_data.size) + 196] = msg.sender
    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 160] = 68
    mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 192 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 260] = 32
    mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 324 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call wantAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], 0) << 288)
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
        mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
            if not mem[ceil32(return_data.size) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return (arg1 - ext_call.return_data[0])
}

function name() payable {
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(wantAddress)
    staticcall wantAddress.symbol() with:
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
        mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(jointAddress)
        staticcall jointAddress.name() with:
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
            mem[mem[64] + 32] = 0x50726f76696465724f6600000000000000000000000000000000000000000000
            mem[mem[64] + 42 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            mem[mem[64] + _5 + 42] = 0x546f000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + _5 + 44 len ceil32(_155)] = mem[_151 + ceil32(return_data.size) + 32 len ceil32(_155)]
            if ceil32(_5) <= _5:
                if ceil32(_155) <= _155:
                    _535 = mem[64]
                    mem[64] = _155 + mem[64] + _5 + 44
                    mem[_155 + _287 + _5 + 44] = 32
                    _567 = mem[_535]
                    mem[_155 + _287 + _5 + 76] = mem[_535]
                    mem[_155 + _287 + _5 + 108 len ceil32(_567)] = mem[_535 + 32 len ceil32(_567)]
                    if ceil32(_567) > _567:
                        mem[_567 + _155 + _287 + _5 + 108] = 0
                    return 32, mem[_155 + _287 + _5 + 76 len ceil32(_567) + 32]
                mem[_155 + mem[64] + _5 + 44] = 0
                _536 = mem[64]
                mem[64] = _155 + mem[64] + _5 + 44
                mem[_155 + _287 + _5 + 44] = 32
                _568 = mem[_536]
                mem[_155 + _287 + _5 + 76] = mem[_536]
                mem[_155 + _287 + _5 + 108 len ceil32(_568)] = mem[_536 + 32 len ceil32(_568)]
                if ceil32(_568) > _568:
                    mem[_568 + _155 + _287 + _5 + 108] = 0
                return 32, mem[_155 + _287 + _5 + 76 len ceil32(_568) + 32]
            if ceil32(_155) <= _155:
                _537 = mem[64]
                mem[64] = _155 + mem[64] + _5 + 44
                mem[_155 + _287 + _5 + 44] = 32
                _569 = mem[_537]
                mem[_155 + _287 + _5 + 76] = mem[_537]
                mem[_155 + _287 + _5 + 108 len ceil32(_569)] = mem[_537 + 32 len ceil32(_569)]
                if ceil32(_569) > _569:
                    mem[_569 + _155 + _287 + _5 + 108] = 0
                return 32, mem[_155 + _287 + _5 + 76 len ceil32(_569) + 32]
            mem[_155 + mem[64] + _5 + 44] = 0
            _538 = mem[64]
            mem[64] = _155 + mem[64] + _5 + 44
            mem[_155 + _287 + _5 + 44] = 32
            _570 = mem[_538]
            mem[_155 + _287 + _5 + 76] = mem[_538]
            mem[_155 + _287 + _5 + 108 len ceil32(_570)] = mem[_538 + 32 len ceil32(_570)]
            if ceil32(_570) > _570:
                mem[_570 + _155 + _287 + _5 + 108] = 0
            return 32, mem[_155 + _287 + _5 + 76 len ceil32(_570) + 32]
        mem[_155 + _151 + ceil32(return_data.size) + 32] = 0
        _288 = mem[64]
        mem[mem[64] + 32] = 0x50726f76696465724f6600000000000000000000000000000000000000000000
        mem[mem[64] + 42 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        mem[mem[64] + _5 + 42] = 0x546f000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + _5 + 44 len ceil32(_155)] = mem[_151 + ceil32(return_data.size) + 32 len ceil32(_155)]
        if ceil32(_5) <= _5:
            if ceil32(_155) <= _155:
                _539 = mem[64]
                mem[64] = _155 + mem[64] + _5 + 44
                mem[_155 + _288 + _5 + 44] = 32
                _571 = mem[_539]
                mem[_155 + _288 + _5 + 76] = mem[_539]
                mem[_155 + _288 + _5 + 108 len ceil32(_571)] = mem[_539 + 32 len ceil32(_571)]
                if ceil32(_571) > _571:
                    mem[_571 + _155 + _288 + _5 + 108] = 0
                return 32, mem[_155 + _288 + _5 + 76 len ceil32(_571) + 32]
            mem[_155 + mem[64] + _5 + 44] = 0
            _540 = mem[64]
            mem[64] = _155 + mem[64] + _5 + 44
            mem[_155 + _288 + _5 + 44] = 32
            _572 = mem[_540]
            mem[_155 + _288 + _5 + 76] = mem[_540]
            mem[_155 + _288 + _5 + 108 len ceil32(_572)] = mem[_540 + 32 len ceil32(_572)]
            if ceil32(_572) > _572:
                mem[_572 + _155 + _288 + _5 + 108] = 0
            return 32, mem[_155 + _288 + _5 + 76 len ceil32(_572) + 32]
        if ceil32(_155) <= _155:
            _541 = mem[64]
            mem[64] = _155 + mem[64] + _5 + 44
            mem[_155 + _288 + _5 + 44] = 32
            _573 = mem[_541]
            mem[_155 + _288 + _5 + 76] = mem[_541]
            mem[_155 + _288 + _5 + 108 len ceil32(_573)] = mem[_541 + 32 len ceil32(_573)]
            if ceil32(_573) > _573:
                mem[_573 + _155 + _288 + _5 + 108] = 0
            return 32, mem[_155 + _288 + _5 + 76 len ceil32(_573) + 32]
        mem[_155 + mem[64] + _5 + 44] = 0
        _542 = mem[64]
        mem[64] = _155 + mem[64] + _5 + 44
        mem[_155 + _288 + _5 + 44] = 32
        _574 = mem[_542]
        mem[_155 + _288 + _5 + 76] = mem[_542]
        mem[_155 + _288 + _5 + 108 len ceil32(_574)] = mem[_542 + 32 len ceil32(_574)]
        if ceil32(_574) > _574:
            mem[_574 + _155 + _288 + _5 + 108] = 0
        return 32, mem[_155 + _288 + _5 + 76 len ceil32(_574) + 32]
    mem[_5 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(jointAddress)
    staticcall jointAddress.name() with:
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
        mem[mem[64] + 32] = 0x50726f76696465724f6600000000000000000000000000000000000000000000
        mem[mem[64] + 42 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        mem[mem[64] + _5 + 42] = 0x546f000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + _5 + 44 len ceil32(_156)] = mem[_152 + ceil32(return_data.size) + 32 len ceil32(_156)]
        if ceil32(_5) <= _5:
            if ceil32(_156) <= _156:
                _543 = mem[64]
                mem[64] = _156 + mem[64] + _5 + 44
                mem[_156 + _289 + _5 + 44] = 32
                _575 = mem[_543]
                mem[_156 + _289 + _5 + 76] = mem[_543]
                mem[_156 + _289 + _5 + 108 len ceil32(_575)] = mem[_543 + 32 len ceil32(_575)]
                if ceil32(_575) > _575:
                    mem[_575 + _156 + _289 + _5 + 108] = 0
                return 32, mem[_156 + _289 + _5 + 76 len ceil32(_575) + 32]
            mem[_156 + mem[64] + _5 + 44] = 0
            _544 = mem[64]
            mem[64] = _156 + _289 + _5 + 44
            mem[_156 + _289 + _5 + 44] = 32
            _576 = mem[_544]
            mem[_156 + _289 + _5 + 76] = mem[_544]
            mem[_156 + _289 + _5 + 108 len ceil32(_576)] = mem[_544 + 32 len ceil32(_576)]
            if ceil32(_576) > _576:
                mem[_576 + _156 + _289 + _5 + 108] = 0
            return 32, mem[_156 + _289 + _5 + 76 len ceil32(_576) + 32]
        if ceil32(_156) <= _156:
            _545 = mem[64]
            mem[64] = _156 + mem[64] + _5 + 44
            mem[_156 + _289 + _5 + 44] = 32
            _577 = mem[_545]
            mem[_156 + _289 + _5 + 76] = mem[_545]
            mem[_156 + _289 + _5 + 108 len ceil32(_577)] = mem[_545 + 32 len ceil32(_577)]
            if ceil32(_577) > _577:
                mem[_577 + _156 + _289 + _5 + 108] = 0
            return 32, mem[_156 + _289 + _5 + 76 len ceil32(_577) + 32]
        mem[_156 + mem[64] + _5 + 44] = 0
        _546 = mem[64]
        mem[64] = _156 + _289 + _5 + 44
        mem[_156 + _289 + _5 + 44] = 32
        _578 = mem[_546]
        mem[_156 + _289 + _5 + 76] = mem[_546]
        mem[_156 + _289 + _5 + 108 len ceil32(_578)] = mem[_546 + 32 len ceil32(_578)]
        if ceil32(_578) > _578:
            mem[_578 + _156 + _289 + _5 + 108] = 0
        return 32, mem[_156 + _289 + _5 + 76 len ceil32(_578) + 32]
    mem[_156 + _152 + ceil32(return_data.size) + 32] = 0
    _290 = mem[64]
    mem[mem[64] + 32] = 0x50726f76696465724f6600000000000000000000000000000000000000000000
    mem[mem[64] + 42 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    mem[mem[64] + _5 + 42] = 0x546f000000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + _5 + 44 len ceil32(_156)] = mem[_152 + ceil32(return_data.size) + 32 len ceil32(_156)]
    if ceil32(_5) <= _5:
        if ceil32(_156) <= _156:
            _547 = mem[64]
            mem[64] = _156 + mem[64] + _5 + 44
            mem[_156 + _290 + _5 + 44] = 32
            _579 = mem[_547]
            mem[_156 + _290 + _5 + 76] = mem[_547]
            mem[_156 + _290 + _5 + 108 len ceil32(_579)] = mem[_547 + 32 len ceil32(_579)]
            if ceil32(_579) > _579:
                mem[_579 + _156 + _290 + _5 + 108] = 0
            return 32, mem[_156 + _290 + _5 + 76 len ceil32(_579) + 32]
        mem[_156 + mem[64] + _5 + 44] = 0
        _548 = mem[64]
        mem[64] = _156 + _290 + _5 + 44
        mem[_156 + _290 + _5 + 44] = 32
        _580 = mem[_548]
        mem[_156 + _290 + _5 + 76] = mem[_548]
        mem[_156 + _290 + _5 + 108 len ceil32(_580)] = mem[_548 + 32 len ceil32(_580)]
        if ceil32(_580) > _580:
            mem[_580 + _156 + _290 + _5 + 108] = 0
        return 32, mem[_156 + _290 + _5 + 76 len ceil32(_580) + 32]
    if ceil32(_156) <= _156:
        _549 = mem[64]
        mem[64] = _156 + mem[64] + _5 + 44
        mem[_156 + _290 + _5 + 44] = 32
        _581 = mem[_549]
        mem[_156 + _290 + _5 + 76] = mem[_549]
        mem[_156 + _290 + _5 + 108 len ceil32(_581)] = mem[_549 + 32 len ceil32(_581)]
        if ceil32(_581) > _581:
            mem[_581 + _156 + _290 + _5 + 108] = 0
        return 32, mem[_156 + _290 + _5 + 76 len ceil32(_581) + 32]
    mem[_156 + mem[64] + _5 + 44] = 0
    _550 = mem[64]
    mem[64] = _156 + _290 + _5 + 44
    mem[_156 + _290 + _5 + 44] = 32
    _582 = mem[_550]
    mem[_156 + _290 + _5 + 76] = mem[_550]
    mem[_156 + _290 + _5 + 108 len ceil32(_582)] = mem[_550 + 32 len ceil32(_582)]
    if ceil32(_582) > _582:
        mem[_582 + _156 + _290 + _5 + 108] = 0
    return 32, mem[_156 + _290 + _5 + 76 len ceil32(_582) + 32]
}



}
